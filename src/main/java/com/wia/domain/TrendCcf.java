package com.wia.domain;

public class TrendCcf {
    private String tdate;
    private int pre_pv;
    private int heat_pv;
    private int qf1_pv;
    private int qf2_pv;
    private int diff_pv;
    private int crack1_pv;
    private int crack2_pv;
    private int oil_pv;
    private float qf_cp_pv;
    private float diff_cp_pv;
    private float crack_cp_pv;
    private int pre_sp;
    private int heat_sp;
    private int qf1_sp;
    private int qf2_sp;
    private int diff_sp;
    private int crack1_sp;
    private int crack2_sp;
    private int oil_sp;
    private int qf_cp_sp;
    private int diff_cp_sp;
    private int crack_cp_sp;
    // 분위기(Enrich) 트렌드 페이지용 컬럼 (현장 v_trend_ccf 뷰에 추가된 필드, 로컬 컴파일 검증용)
    private float heat_enrich_pv;
    private float qf_enrich_pv;
    private float diff_enrich_pv;
    private float crack1_enrich_pv;
    private float crack2_enrich_pv;
    private String startDate;
    private String endDate;
    
    // Getters and Setters
    public String getTdate() {
        return tdate;
    }
    public void setTdate(String tdate) {
        this.tdate = tdate;
    }
    public int getPre_pv() {
        return pre_pv;
    }
    public void setPre_pv(int pre_pv) {
        this.pre_pv = pre_pv;
    }
    public int getHeat_pv() {
        return heat_pv;
    }
    public void setHeat_pv(int heat_pv) {
        this.heat_pv = heat_pv;
    }
    public int getQf1_pv() {
        return qf1_pv;
    }
    public void setQf1_pv(int qf1_pv) {
        this.qf1_pv = qf1_pv;
    }
    public int getQf2_pv() {
        return qf2_pv;
    }
    public void setQf2_pv(int qf2_pv) {
        this.qf2_pv = qf2_pv;
    }
    public int getDiff_pv() {
        return diff_pv;
    }
    public void setDiff_pv(int diff_pv) {
        this.diff_pv = diff_pv;
    }
    public int getCrack1_pv() {
        return crack1_pv;
    }
    public void setCrack1_pv(int crack1_pv) {
        this.crack1_pv = crack1_pv;
    }
    public int getCrack2_pv() {
        return crack2_pv;
    }
    public void setCrack2_pv(int crack2_pv) {
        this.crack2_pv = crack2_pv;
    }
    public int getOil_pv() {
        return oil_pv;
    }
    public void setOil_pv(int oil_pv) {
        this.oil_pv = oil_pv;
    }
    public float getQf_cp_pv() {
        return qf_cp_pv;
    }
    public void setQf_cp_pv(float qf_cp_pv) {
        this.qf_cp_pv = qf_cp_pv;
    }
    public float getDiff_cp_pv() {
        return diff_cp_pv;
    }
    public void setDiff_cp_pv(float diff_cp_pv) {
        this.diff_cp_pv = diff_cp_pv;
    }
    public float getCrack_cp_pv() {
        return crack_cp_pv;
    }
    public void setCrack_cp_pv(float crack_cp_pv) {
        this.crack_cp_pv = crack_cp_pv;
    }
    public int getPre_sp() {
        return pre_sp;
    }
    public void setPre_sp(int pre_sp) {
        this.pre_sp = pre_sp;
    }
    public int getHeat_sp() {
        return heat_sp;
    }
    public void setHeat_sp(int heat_sp) {
        this.heat_sp = heat_sp;
    }
    public int getQf1_sp() {
        return qf1_sp;
    }
    public void setQf1_sp(int qf1_sp) {
        this.qf1_sp = qf1_sp;
    }
    public int getQf2_sp() {
        return qf2_sp;
    }
    public void setQf2_sp(int qf2_sp) {
        this.qf2_sp = qf2_sp;
    }
    public int getDiff_sp() {
        return diff_sp;
    }
    public void setDiff_sp(int diff_sp) {
        this.diff_sp = diff_sp;
    }
    public int getCrack1_sp() {
        return crack1_sp;
    }
    public void setCrack1_sp(int crack1_sp) {
        this.crack1_sp = crack1_sp;
    }
    public int getCrack2_sp() {
        return crack2_sp;
    }
    public void setCrack2_sp(int crack2_sp) {
        this.crack2_sp = crack2_sp;
    }
    public int getOil_sp() {
        return oil_sp;
    }
    public void setOil_sp(int oil_sp) {
        this.oil_sp = oil_sp;
    }
    public int getQf_cp_sp() {
        return qf_cp_sp;
    }
    public void setQf_cp_sp(int qf_cp_sp) {
        this.qf_cp_sp = qf_cp_sp;
    }
    public int getDiff_cp_sp() {
        return diff_cp_sp;
    }
    public void setDiff_cp_sp(int diff_cp_sp) {
        this.diff_cp_sp = diff_cp_sp;
    }
    public int getCrack_cp_sp() {
        return crack_cp_sp;
    }
    public void setCrack_cp_sp(int crack_cp_sp) {
        this.crack_cp_sp = crack_cp_sp;
    }
    public float getHeat_enrich_pv() {
        return heat_enrich_pv;
    }
    public void setHeat_enrich_pv(float heat_enrich_pv) {
        this.heat_enrich_pv = heat_enrich_pv;
    }
    public float getQf_enrich_pv() {
        return qf_enrich_pv;
    }
    public void setQf_enrich_pv(float qf_enrich_pv) {
        this.qf_enrich_pv = qf_enrich_pv;
    }
    public float getDiff_enrich_pv() {
        return diff_enrich_pv;
    }
    public void setDiff_enrich_pv(float diff_enrich_pv) {
        this.diff_enrich_pv = diff_enrich_pv;
    }
    public float getCrack1_enrich_pv() {
        return crack1_enrich_pv;
    }
    public void setCrack1_enrich_pv(float crack1_enrich_pv) {
        this.crack1_enrich_pv = crack1_enrich_pv;
    }
    public float getCrack2_enrich_pv() {
        return crack2_enrich_pv;
    }
    public void setCrack2_enrich_pv(float crack2_enrich_pv) {
        this.crack2_enrich_pv = crack2_enrich_pv;
    }
    public String getStartDate() {
        return startDate;
    }
    public void setStartDate(String startDate) {
        this.startDate = startDate;
    }
    public String getEndDate() {
        return endDate;
    }
    public void setEndDate(String endDate) {
        this.endDate = endDate;
    }
}
