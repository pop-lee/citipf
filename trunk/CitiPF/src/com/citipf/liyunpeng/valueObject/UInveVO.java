package com.citipf.liyunpeng.valueObject;

public class UInveVO {
	
	private int ip_infoId;
	private int ip_pref;
	
	
	public int getIp_infoId() {
		return ip_infoId;
	}
	public void setIp_infoId(int ip_infoId) {
		this.ip_infoId = ip_infoId;
	}
	public int getIp_pref() {
		return ip_pref;
	}
	public void setIp_pref(int ip_pref) {
		this.ip_pref = ip_pref;
	}
	
	public String toString() {
		return this.ip_infoId + "," + this.ip_pref + ".";
	}
}
