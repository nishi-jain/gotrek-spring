package com.compro.Trek.form;


public class TrekUserModel {
	private int xref_id;
	private int trek_id;
	private int user_id;
	private String role;
	
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public int getXref_id() {
		return xref_id;
	}
	public void setXref_id(int xref_id) {
		this.xref_id = xref_id;
	}
	public int getTrek_id() {
		return trek_id;
	}
	public void setTrek_id(int trek_id) {
		this.trek_id = trek_id;
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	
}
