package com.wia.domain;

public class RepairHistory {
	private int repair_idx;
	private String repair_date;
	private String equip_name;
	private String worker_name;
	private String symptom;
	private String repair_content;
	private String reg_user;
	private String reg_date;

	// 조회 조건(검색기간)
	private String sdateTime;
	private String edateTime;

	public int getRepair_idx() {
		return repair_idx;
	}
	public void setRepair_idx(int repair_idx) {
		this.repair_idx = repair_idx;
	}
	public String getRepair_date() {
		return repair_date;
	}
	public void setRepair_date(String repair_date) {
		this.repair_date = repair_date;
	}
	public String getEquip_name() {
		return equip_name;
	}
	public void setEquip_name(String equip_name) {
		this.equip_name = equip_name;
	}
	public String getWorker_name() {
		return worker_name;
	}
	public void setWorker_name(String worker_name) {
		this.worker_name = worker_name;
	}
	public String getSymptom() {
		return symptom;
	}
	public void setSymptom(String symptom) {
		this.symptom = symptom;
	}
	public String getRepair_content() {
		return repair_content;
	}
	public void setRepair_content(String repair_content) {
		this.repair_content = repair_content;
	}
	public String getReg_user() {
		return reg_user;
	}
	public void setReg_user(String reg_user) {
		this.reg_user = reg_user;
	}
	public String getReg_date() {
		return reg_date;
	}
	public void setReg_date(String reg_date) {
		this.reg_date = reg_date;
	}
	public String getSdateTime() {
		return sdateTime;
	}
	public void setSdateTime(String sdateTime) {
		this.sdateTime = sdateTime;
	}
	public String getEdateTime() {
		return edateTime;
	}
	public void setEdateTime(String edateTime) {
		this.edateTime = edateTime;
	}
}
