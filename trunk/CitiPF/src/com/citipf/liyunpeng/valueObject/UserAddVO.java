package com.citipf.liyunpeng.valueObject;

public class UserAddVO {
	
	private int ua_infoId;
	private Double ua_avg_micom;
	private Double ua_avg_mpout;
	
	public int getUa_infoId() {
		return ua_infoId;
	}

	public void setUa_infoId(int ua_infoId) {
		this.ua_infoId = ua_infoId;
	}

	public Double getUa_avg_micom() {
		return ua_avg_micom;
	}

	public void setUa_avg_micom(Double ua_avg_micom) {
		this.ua_avg_micom = ua_avg_micom;
	}

	public Double getUa_avg_mpout() {
		return ua_avg_mpout;
	}

	public void setUa_avg_mpout(Double ua_avg_mpout) {
		this.ua_avg_mpout = ua_avg_mpout;
	}

	public String toString() {
		return this.ua_infoId + "," + this.ua_avg_micom + "," + this.ua_avg_mpout ;
	}
}
