package com.wia.domain;

public class Menu {
	private String menu_code;
	private String menu_name;
	private String menu_url;
	private String menu_group;
	private int sort_order;

	// 권한부여 화면에서 특정 사용자의 조회 가능 여부(조인 결과)
	private String granted_yn;

	public String getMenu_code() {
		return menu_code;
	}
	public void setMenu_code(String menu_code) {
		this.menu_code = menu_code;
	}
	public String getMenu_name() {
		return menu_name;
	}
	public void setMenu_name(String menu_name) {
		this.menu_name = menu_name;
	}
	public String getMenu_url() {
		return menu_url;
	}
	public void setMenu_url(String menu_url) {
		this.menu_url = menu_url;
	}
	public String getMenu_group() {
		return menu_group;
	}
	public void setMenu_group(String menu_group) {
		this.menu_group = menu_group;
	}
	public int getSort_order() {
		return sort_order;
	}
	public void setSort_order(int sort_order) {
		this.sort_order = sort_order;
	}
	public String getGranted_yn() {
		return granted_yn;
	}
	public void setGranted_yn(String granted_yn) {
		this.granted_yn = granted_yn;
	}
}
