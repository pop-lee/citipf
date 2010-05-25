package com.citipf.liyunpeng.valueObject;

public class UserVO {
	
	/**
	 * 用户表中自增主键
	 */
	private int ui_infoId ;
	/**
	 * 用户表银行卡号
	 */
	private String ui_bankId;
	/**
	 * 用户表用户姓名
	 */
	private String ui_name;
	/**
	 * 用户表身份证号
	 */
	private String ui_id;
	/**
	 * 用户表用户密码
	 */
	private String ui_passw;
	
	
	public int getUi_infoId() {
		return ui_infoId;
	}
	public String getUi_bankId() {
		return ui_bankId;
	}
	public void setUi_bankId(String ui_bankId) {
		this.ui_bankId = ui_bankId;
	}
	public String getUi_name() {
		return ui_name;
	}
	public void setUi_name(String ui_name) {
		this.ui_name = ui_name;
	}
	public String getUi_id() {
		return ui_id;
	}
	public void setUi_id(String ui_id) {
		this.ui_id = ui_id;
	}
	public String getUi_passw() {
		return ui_passw;
	}
	public void setUi_passw(String ui_passw) {
		this.ui_passw = ui_passw;
	}
	
	public String toString() {
		return	this.ui_infoId + "," +
				this.ui_bankId + "," +
				this.ui_name + "," +
				this.ui_id + "," +
				this.ui_passw + ".";
	}
}
