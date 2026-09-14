package com.wia.controller;

import java.awt.BasicStroke;
import java.awt.Color;
import java.io.File;
import java.io.FileOutputStream;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.time.ZoneId;
import java.time.format.DateTimeFormatter;
import java.time.format.DateTimeParseException;
import java.util.ArrayList;
import java.util.Date;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.Font;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.jfree.chart.ChartFactory;
import org.jfree.chart.ChartUtils;
import org.jfree.chart.JFreeChart;
import org.jfree.chart.axis.DateAxis;
import org.jfree.chart.axis.NumberAxis;
import org.jfree.chart.plot.XYPlot;
import org.jfree.chart.renderer.xy.XYLineAndShapeRenderer;
import org.jfree.data.time.Millisecond;
import org.jfree.data.time.TimeSeries;
import org.jfree.data.time.TimeSeriesCollection;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;

import com.wia.domain.TrendCcf;
import com.wia.domain.TrendCm;
import com.wia.service.TrendCcfService;
import com.wia.service.TrendCmService;

// 연속로(CCF)/공통로(CM)/분위기(CCF의 Enrich 계열) 온도 트렌드를
// 일일온도점검일지\<구분>\온도파일(xlsx), \<구분>\캡쳐(png) 로 저장
// 지금은 현장 테스트용으로 3분마다 "최근 3분" 데이터를 저장하도록 되어 있음.
// 실제 운영에서는 07:00~다음날07:00(24시간)을 매일 07:00 한 번만 저장하도록 바꿔야 함 (하단 주석 참고)
// root-context.xml에 <bean class="com.wia.controller.TrendExportScheduler"/>로 직접 등록해서 사용
public class TrendExportScheduler {

    private static final String CCF_EXCEL_DIR = "C:\\Users\\abc\\Desktop\\일일온도점검일지\\연속로\\온도파일";
    private static final String CCF_PNG_DIR = "C:\\Users\\abc\\Desktop\\일일온도점검일지\\연속로\\캡쳐";
    private static final String CM_EXCEL_DIR = "C:\\Users\\abc\\Desktop\\일일온도점검일지\\공통로\\온도파일";
    private static final String CM_PNG_DIR = "C:\\Users\\abc\\Desktop\\일일온도점검일지\\공통로\\캡쳐";
    private static final String ENRICH_EXCEL_DIR = "C:\\Users\\abc\\Desktop\\일일온도점검일지\\분위기\\온도파일";
    private static final String ENRICH_PNG_DIR = "C:\\Users\\abc\\Desktop\\일일온도점검일지\\분위기\\캡쳐";

    private static final int MAX_CHART_POINTS_PER_SERIES = 3000;

    private static final SimpleDateFormat FILE_FORMAT = new SimpleDateFormat("yyyyMMdd_HHmm");
    private static final DateTimeFormatter QUERY_FORMAT = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
    private static final DateTimeFormatter TDATE_PARSE_FORMAT = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");

    @Autowired
    private TrendCcfService trendCcfService;

    @Autowired
    private TrendCmService trendCmService;

    // ===== 현장 테스트용: 3분마다 "최근 3분" 저장 =====
    @Scheduled(cron = "0 0/3 * * * *")
    public void exportRecentTrendSnapshot() {
        LocalDateTime endLdt = LocalDateTime.now();
        LocalDateTime startLdt = endLdt.minusMinutes(3);
        runExport(startLdt, endLdt);
    }

    // ===== 실제 운영용: 매일 07:00에 전날 07:00 ~ 당일 07:00 저장 =====
    // 테스트가 끝나면 위 exportRecentTrendSnapshot()의 @Scheduled를 지우고 이 메서드의 주석을 해제해서 사용
    // @Scheduled(cron = "0 0 7 * * *")
    // public void exportDailyTrendSnapshot() {
    //     LocalDateTime endLdt = LocalDateTime.now().withHour(7).withMinute(0).withSecond(0).withNano(0);
    //     LocalDateTime startLdt = endLdt.minusDays(1);
    //     runExport(startLdt, endLdt);
    // }

    private void runExport(LocalDateTime startLdt, LocalDateTime endLdt) {
        String startStr = startLdt.format(QUERY_FORMAT);
        String endStr = endLdt.format(QUERY_FORMAT);
        Date end = Date.from(endLdt.atZone(ZoneId.systemDefault()).toInstant());

        System.out.println("[TrendExportScheduler] 실행: " + startStr + " ~ " + endStr);

        List<TrendCcf> ccfList;
        try {
            TrendCcf filter = new TrendCcf();
            filter.setStartDate(startStr);
            filter.setEndDate(endStr);
            ccfList = trendCcfService.getTrendData(filter);
        } catch (Exception e) {
            System.out.println("[TrendExportScheduler] 연속로/분위기 조회 실패");
            e.printStackTrace();
            ccfList = null;
        }

        if (ccfList == null || ccfList.isEmpty()) {
            System.out.println("[TrendExportScheduler] 연속로/분위기: 해당 구간 데이터 없음 (건너뜀)");
        } else {
            System.out.println("[TrendExportScheduler] 연속로/분위기: " + ccfList.size() + "건 조회됨");
            try {
                exportCcf(ccfList, end);
                System.out.println("[TrendExportScheduler] 연속로 저장 완료");
            } catch (Exception e) {
                System.out.println("[TrendExportScheduler] 연속로 저장 실패");
                e.printStackTrace();
            }

            try {
                exportEnrich(ccfList, end);
                System.out.println("[TrendExportScheduler] 분위기 저장 완료");
            } catch (Exception e) {
                System.out.println("[TrendExportScheduler] 분위기 저장 실패");
                e.printStackTrace();
            }
        }

        try {
            TrendCm filter = new TrendCm();
            filter.setStartDate(startStr);
            filter.setEndDate(endStr);
            List<TrendCm> cmList = trendCmService.getTrendData(filter);
            if (cmList == null || cmList.isEmpty()) {
                System.out.println("[TrendExportScheduler] 공통로: 해당 구간 데이터 없음 (건너뜀)");
            } else {
                System.out.println("[TrendExportScheduler] 공통로: " + cmList.size() + "건 조회됨");
                exportCm(cmList, end);
                System.out.println("[TrendExportScheduler] 공통로 저장 완료");
            }
        } catch (Exception e) {
            System.out.println("[TrendExportScheduler] 공통로 저장 실패");
            e.printStackTrace();
        }
    }

    // 연속로: trendCcf.jsp 화면과 동일한 11개 PV 계열 (TrendCcfController 참고)
    private void exportCcf(List<TrendCcf> list, Date end) throws Exception {
        String[] headers = { "날짜", "prePv", "heatPv", "qf1Pv", "qf2Pv", "diffPv",
                "crack1Pv", "crack2Pv", "oilPv", "qfCpPv", "diffCpPv", "crackCpPv" };

        List<Object[]> rows = new ArrayList<>();
        LinkedHashMap<String, List<double[]>> seriesData = newSeriesMap(headers);

        for (TrendCcf t : list) {
            rows.add(new Object[] { t.getTdate(), t.getPre_pv(), t.getHeat_pv(), t.getQf1_pv(), t.getQf2_pv(),
                    t.getDiff_pv(), t.getCrack1_pv(), t.getCrack2_pv(), t.getOil_pv(), t.getQf_cp_pv(),
                    t.getDiff_cp_pv(), t.getCrack_cp_pv() });

            long millis = parseTdateMillis(t.getTdate());
            addPoint(seriesData, "prePv", millis, t.getPre_pv());
            addPoint(seriesData, "heatPv", millis, t.getHeat_pv());
            addPoint(seriesData, "qf1Pv", millis, t.getQf1_pv());
            addPoint(seriesData, "qf2Pv", millis, t.getQf2_pv());
            addPoint(seriesData, "diffPv", millis, t.getDiff_pv());
            addPoint(seriesData, "crack1Pv", millis, t.getCrack1_pv());
            addPoint(seriesData, "crack2Pv", millis, t.getCrack2_pv());
            addPoint(seriesData, "oilPv", millis, t.getOil_pv());
            addPoint(seriesData, "qfCpPv", millis, t.getQf_cp_pv());
            addPoint(seriesData, "diffCpPv", millis, t.getDiff_cp_pv());
            addPoint(seriesData, "crackCpPv", millis, t.getCrack_cp_pv());
        }

        Map<String, Color> colors = new LinkedHashMap<>();
        colors.put("prePv", Color.decode("#FF0000"));
        colors.put("heatPv", Color.decode("#FFBB00"));
        colors.put("qf1Pv", Color.decode("#ABF200"));
        colors.put("qf2Pv", Color.decode("#1DDB16"));
        colors.put("diffPv", Color.decode("#00D8FF"));
        colors.put("crack1Pv", Color.decode("#0054FF"));
        colors.put("crack2Pv", Color.decode("#5F00FF"));
        colors.put("oilPv", Color.decode("#FF007F"));
        colors.put("qfCpPv", Color.decode("#9FC93C"));
        colors.put("diffCpPv", Color.decode("#3DB7CC"));
        colors.put("crackCpPv", Color.decode("#4374D9"));

        // 왼쪽(온도) 축: 0~1200 고정, 오른쪽(CP) 축: 0~2.4 고정
        Map<String, Integer> axisMap = new LinkedHashMap<>();
        axisMap.put("prePv", 0);
        axisMap.put("heatPv", 0);
        axisMap.put("qf1Pv", 0);
        axisMap.put("qf2Pv", 0);
        axisMap.put("diffPv", 0);
        axisMap.put("crack1Pv", 0);
        axisMap.put("crack2Pv", 0);
        axisMap.put("oilPv", 0);
        axisMap.put("qfCpPv", 1);
        axisMap.put("diffCpPv", 1);
        axisMap.put("crackCpPv", 1);

        writeExportFiles(CCF_EXCEL_DIR, CCF_PNG_DIR, "연속로", "TrendCcf", headers, rows, seriesData, colors, end,
                axisMap, "온도(℃)", 0, 1200, "CP(%)", 0, 2.4);
    }

    // 분위기(Enrich): trendCcfEnrich.jsp 화면과 동일한 계열 (TrendCcfController.TrendCcfEnrichGetData 참고)
    private void exportEnrich(List<TrendCcf> list, Date end) throws Exception {
        String[] headers = { "날짜", "qfCpPv", "diffCpPv", "crackCpPv",
                "heatEnrichPv", "qfEnrichPv", "diffEnrichPv", "crack1EnrichPv", "crack2EnrichPv" };

        List<Object[]> rows = new ArrayList<>();
        LinkedHashMap<String, List<double[]>> seriesData = newSeriesMap(headers);

        for (TrendCcf t : list) {
            rows.add(new Object[] { t.getTdate(), t.getQf_cp_pv(), t.getDiff_cp_pv(), t.getCrack_cp_pv(),
                    t.getHeat_enrich_pv(), t.getQf_enrich_pv(), t.getDiff_enrich_pv(),
                    t.getCrack1_enrich_pv(), t.getCrack2_enrich_pv() });

            long millis = parseTdateMillis(t.getTdate());
            addPoint(seriesData, "qfCpPv", millis, t.getQf_cp_pv());
            addPoint(seriesData, "diffCpPv", millis, t.getDiff_cp_pv());
            addPoint(seriesData, "crackCpPv", millis, t.getCrack_cp_pv());
            addPoint(seriesData, "heatEnrichPv", millis, t.getHeat_enrich_pv());
            addPoint(seriesData, "qfEnrichPv", millis, t.getQf_enrich_pv());
            addPoint(seriesData, "diffEnrichPv", millis, t.getDiff_enrich_pv());
            addPoint(seriesData, "crack1EnrichPv", millis, t.getCrack1_enrich_pv());
            addPoint(seriesData, "crack2EnrichPv", millis, t.getCrack2_enrich_pv());
        }

        Map<String, Color> colors = new LinkedHashMap<>();
        colors.put("qfCpPv", Color.decode("#9FC93C"));
        colors.put("diffCpPv", Color.decode("#3DB7CC"));
        colors.put("crackCpPv", Color.decode("#4374D9"));
        colors.put("heatEnrichPv", Color.decode("#997000"));
        colors.put("qfEnrichPv", Color.decode("#6B9900"));
        colors.put("diffEnrichPv", Color.decode("#008299"));
        colors.put("crack1EnrichPv", Color.decode("#003399"));
        colors.put("crack2EnrichPv", Color.decode("#050099"));

        // 왼쪽(CP) 축: 0~2.4 고정, 오른쪽(Enrich) 축: 0~60 고정
        Map<String, Integer> axisMap = new LinkedHashMap<>();
        axisMap.put("qfCpPv", 0);
        axisMap.put("diffCpPv", 0);
        axisMap.put("crackCpPv", 0);
        axisMap.put("heatEnrichPv", 1);
        axisMap.put("qfEnrichPv", 1);
        axisMap.put("diffEnrichPv", 1);
        axisMap.put("crack1EnrichPv", 1);
        axisMap.put("crack2EnrichPv", 1);

        writeExportFiles(ENRICH_EXCEL_DIR, ENRICH_PNG_DIR, "분위기", "TrendCcfEnrich", headers, rows, seriesData, colors, end,
                axisMap, "CP(%)", 0, 2.4, "Enrich", 0, 60);
    }

    // 공통로: trendCm.jsp 화면과 동일한 5개 PV 계열 (TrendCmController 참고)
    private void exportCm(List<TrendCm> list, Date end) throws Exception {
        String[] headers = { "날짜", "tf1Pv", "tf2Pv", "tf3Pv", "rinsePv", "dippPv" };

        List<Object[]> rows = new ArrayList<>();
        LinkedHashMap<String, List<double[]>> seriesData = newSeriesMap(headers);

        for (TrendCm t : list) {
            rows.add(new Object[] { t.getTdate(), t.getTf1_pv(), t.getTf2_pv(), t.getTf3_pv(), t.getRinse_pv(),
                    t.getDipp_pv() });

            long millis = parseTdateMillis(t.getTdate());
            addPoint(seriesData, "tf1Pv", millis, t.getTf1_pv());
            addPoint(seriesData, "tf2Pv", millis, t.getTf2_pv());
            addPoint(seriesData, "tf3Pv", millis, t.getTf3_pv());
            addPoint(seriesData, "rinsePv", millis, t.getRinse_pv());
            addPoint(seriesData, "dippPv", millis, t.getDipp_pv());
        }

        Map<String, Color> colors = new LinkedHashMap<>();
        colors.put("tf1Pv", Color.decode("#FF0000"));
        colors.put("tf2Pv", Color.decode("#0100FF"));
        colors.put("tf3Pv", Color.decode("#1DDB16"));
        colors.put("rinsePv", Color.decode("#5F00FF"));
        colors.put("dippPv", Color.decode("#FFBB00"));

        // 단일 축: 0~1200 고정
        Map<String, Integer> axisMap = new LinkedHashMap<>();
        axisMap.put("tf1Pv", 0);
        axisMap.put("tf2Pv", 0);
        axisMap.put("tf3Pv", 0);
        axisMap.put("rinsePv", 0);
        axisMap.put("dippPv", 0);

        writeExportFiles(CM_EXCEL_DIR, CM_PNG_DIR, "공통로", "TrendCm", headers, rows, seriesData, colors, end,
                axisMap, "온도(℃)", 0, 1200, null, 0, 0);
    }

    private LinkedHashMap<String, List<double[]>> newSeriesMap(String[] headers) {
        LinkedHashMap<String, List<double[]>> seriesData = new LinkedHashMap<>();
        for (String name : headers) {
            if (!"날짜".equals(name)) {
                seriesData.put(name, new ArrayList<double[]>());
            }
        }
        return seriesData;
    }

    private void addPoint(LinkedHashMap<String, List<double[]>> seriesData, String key, long millis, double value) {
        seriesData.get(key).add(new double[] { millis, value });
    }

    private void writeExportFiles(String excelDir, String pngDir, String label, String sheetName,
            String[] headers, List<Object[]> rows, LinkedHashMap<String, List<double[]>> seriesData,
            Map<String, Color> colors, Date end,
            Map<String, Integer> axisMap, String axis0Label, double axis0Min, double axis0Max,
            String axis1Label, double axis1Min, double axis1Max) throws Exception {

        new File(excelDir).mkdirs();
        new File(pngDir).mkdirs();
        String fileBase = FILE_FORMAT.format(end) + "_" + label + "_온도";

        saveExcel(sheetName, headers, rows, excelDir + File.separator + fileBase + ".xlsx");
        saveChartPng(label + " Trend (" + fileBase + ")", seriesData, colors, axisMap,
                axis0Label, axis0Min, axis0Max, axis1Label, axis1Min, axis1Max,
                pngDir + File.separator + fileBase + ".png");
    }

    private void saveExcel(String sheetName, String[] headers, List<Object[]> rows, String filePath) throws Exception {
        try (XSSFWorkbook workbook = new XSSFWorkbook()) {
            Sheet sheet = workbook.createSheet(sheetName);

            Font headerFont = workbook.createFont();
            headerFont.setBold(true);
            CellStyle headerStyle = workbook.createCellStyle();
            headerStyle.setFont(headerFont);

            Row headerRow = sheet.createRow(0);
            for (int col = 0; col < headers.length; col++) {
                Cell cell = headerRow.createCell(col);
                cell.setCellValue(headers[col]);
                cell.setCellStyle(headerStyle);
            }

            int rowIdx = 1;
            for (Object[] rowData : rows) {
                Row row = sheet.createRow(rowIdx++);
                for (int col = 0; col < rowData.length; col++) {
                    Cell cell = row.createCell(col);
                    Object value = rowData[col];
                    if (value instanceof Number) {
                        cell.setCellValue(((Number) value).doubleValue());
                    } else if (value != null) {
                        cell.setCellValue(value.toString());
                    }
                }
            }

            for (int col = 0; col < headers.length; col++) {
                sheet.autoSizeColumn(col);
            }

            try (FileOutputStream fos = new FileOutputStream(filePath)) {
                workbook.write(fos);
            }
        }
    }

    // axisMap: 시리즈명 -> 0(왼쪽)/1(오른쪽). axis1Label이 null이면 단일 축(전부 axis0)으로 그림
    private void saveChartPng(String title, LinkedHashMap<String, List<double[]>> seriesDataMap,
            Map<String, Color> seriesColorMap, Map<String, Integer> axisMap,
            String axis0Label, double axis0Min, double axis0Max,
            String axis1Label, double axis1Min, double axis1Max,
            String filePath) throws Exception {

        boolean dualAxis = axis1Label != null;

        TimeSeriesCollection dataset0 = new TimeSeriesCollection();
        TimeSeriesCollection dataset1 = new TimeSeriesCollection();
        List<String> names0 = new ArrayList<>();
        List<String> names1 = new ArrayList<>();

        for (String name : seriesDataMap.keySet()) {
            TimeSeries series = new TimeSeries(name);
            for (double[] point : downsample(seriesDataMap.get(name), MAX_CHART_POINTS_PER_SERIES)) {
                series.addOrUpdate(new Millisecond(new Date((long) point[0])), point[1]);
            }
            int axis = dualAxis ? axisMap.getOrDefault(name, 0) : 0;
            if (axis == 1) {
                dataset1.addSeries(series);
                names1.add(name);
            } else {
                dataset0.addSeries(series);
                names0.add(name);
            }
        }

        JFreeChart chart = ChartFactory.createTimeSeriesChart(title, "날짜/시간", axis0Label, dataset0, true, false, false);

        XYPlot plot = chart.getXYPlot();
        plot.setBackgroundPaint(Color.WHITE);
        plot.setDomainGridlinePaint(Color.LIGHT_GRAY);
        plot.setRangeGridlinePaint(Color.LIGHT_GRAY);

        NumberAxis rangeAxis0 = (NumberAxis) plot.getRangeAxis();
        rangeAxis0.setRange(axis0Min, axis0Max);

        XYLineAndShapeRenderer renderer0 = new XYLineAndShapeRenderer();
        for (int i = 0; i < names0.size(); i++) {
            Color color = seriesColorMap.get(names0.get(i));
            renderer0.setSeriesPaint(i, color != null ? color : Color.BLACK);
            renderer0.setSeriesShapesVisible(i, false);
            renderer0.setSeriesStroke(i, new BasicStroke(1.2f));
        }
        plot.setRenderer(0, renderer0);

        if (dualAxis && !names1.isEmpty()) {
            NumberAxis rangeAxis1 = new NumberAxis(axis1Label);
            rangeAxis1.setRange(axis1Min, axis1Max);
            plot.setRangeAxis(1, rangeAxis1);
            plot.setDataset(1, dataset1);
            plot.mapDatasetToRangeAxis(1, 1);

            XYLineAndShapeRenderer renderer1 = new XYLineAndShapeRenderer();
            for (int i = 0; i < names1.size(); i++) {
                Color color = seriesColorMap.get(names1.get(i));
                renderer1.setSeriesPaint(i, color != null ? color : Color.BLACK);
                renderer1.setSeriesShapesVisible(i, false);
                renderer1.setSeriesStroke(i, new BasicStroke(1.2f));
            }
            plot.setRenderer(1, renderer1);
        }

        DateAxis domainAxis = (DateAxis) plot.getDomainAxis();
        domainAxis.setDateFormatOverride(new SimpleDateFormat("MM-dd HH:mm"));

        ChartUtils.saveChartAsPNG(new File(filePath), chart, 1600, 800);
    }

    private List<double[]> downsample(List<double[]> points, int maxPoints) {
        if (points.size() <= maxPoints) {
            return points;
        }
        int step = (int) Math.ceil(points.size() / (double) maxPoints);
        List<double[]> sampled = new ArrayList<>();
        for (int i = 0; i < points.size(); i += step) {
            sampled.add(points.get(i));
        }
        return sampled;
    }

    // DB에서 내려오는 tdate 문자열(밀리초/타임존 표기가 드라이버마다 조금씩 다를 수 있어 초 단위까지만 사용)을 epoch millis로 변환
    private long parseTdateMillis(String tdate) {
        if (tdate == null) {
            return 0L;
        }
        String s = tdate.trim();
        int dot = s.indexOf('.');
        if (dot > 0) {
            s = s.substring(0, dot);
        }
        try {
            LocalDateTime ldt = LocalDateTime.parse(s, TDATE_PARSE_FORMAT);
            return ldt.atZone(ZoneId.systemDefault()).toInstant().toEpochMilli();
        } catch (DateTimeParseException e) {
            return 0L;
        }
    }
}
