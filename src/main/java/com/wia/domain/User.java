package com.wia.domain;

public class User {
	private int user_code;
	private String user_id;
	private String user_pwd;
	private String user_name;
	private String user_dept;
	private String user_position;
	private String use_yn;
	private String admin_yn;
	private String reg_date;

	// 화면에서 넘어오는 신규 비밀번호(입력값). 수정 시 비워두면 기존 비밀번호 유지.
	private String new_pwd;

	public int getUser_code() {
		return user_code;
	}
	public void setUser_code(int user_code) {
		this.user_code = user_code;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getUser_pwd() {
		return user_pwd;
	}
	public void setUser_pwd(String user_pwd) {
		this.user_pwd = user_pwd;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getUser_dept() {
		return user_dept;
	}
	public void setUser_dept(String user_dept) {
		this.user_dept = user_dept;
	}
	public String getUser_position() {
		return user_position;
	}
	public void setUser_position(String user_position) {
		this.user_position = user_position;
	}
	public String getUse_yn() {
		return use_yn;
	}
	public void setUse_yn(String use_yn) {
		this.use_yn = use_yn;
	}
	public String getAdmin_yn() {
		return admin_yn;
	}
	public void setAdmin_yn(String admin_yn) {
		this.admin_yn = admin_yn;
	}
	public String getReg_date() {
		return reg_date;
	}
	public void setReg_date(String reg_date) {
		this.reg_date = reg_date;
	}
	public String getNew_pwd() {
		return new_pwd;
	}
	public void setNew_pwd(String new_pwd) {
		this.new_pwd = new_pwd;
	}
}
