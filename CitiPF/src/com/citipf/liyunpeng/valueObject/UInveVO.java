package com.citipf.liyunpeng.valueObject;

public class UInveVO {
	private int ip_infId;
	private int ip_pref;
	public int getIp_infId() {
		return ip_infId;
	}
	public void setIp_infId(int ip_infId) {
		this.ip_infId = ip_infId;
	}
	public int getIp_pref() {
		return ip_pref;
	}
	public void setIp_pref(int ip_pref) {
		this.ip_pref = ip_pref;
	}
	
	public String toString() {
		return this.ip_infId + "," + this.ip_pref + ".";
	}
}
