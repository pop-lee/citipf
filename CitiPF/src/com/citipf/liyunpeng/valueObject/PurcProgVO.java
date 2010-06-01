package com.citipf.liyunpeng.valueObject;

import java.util.Date;

public class PurcProgVO {
	
	private int pp_infoId;
//	private int pp_id;
	private int pp_dpay;
	private double pp_mfund;
	private int pp_mcount;
	private Date pp_purc_date;
	private int pp_squarym;
	private double pp_mprice;
	private double pp_funds;
	
	public int getPp_infoId() {
		return pp_infoId;
	}
	public void setPp_infoId(int pp_infoId) {
		this.pp_infoId = pp_infoId;
	}
//	public int getPp_id() {
//		return pp_id;
//	}
//	public void setPp_id(int pp_id) {
//		this.pp_id = pp_id;
//	}
	public int getPp_dpay() {
		return pp_dpay;
	}
	public void setPp_dpay(int pp_dpay) {
		this.pp_dpay = pp_dpay;
	}
	public double getPp_mfund() {
		return pp_mfund;
	}
	public void setPp_mfund(double pp_mfund) {
		this.pp_mfund = pp_mfund;
	}
	public int getPp_mcount() {
		return pp_mcount;
	}
	public void setPp_mcount(int pp_mcount) {
		this.pp_mcount = pp_mcount;
	}
	public Date getPp_purc_date() {
		return pp_purc_date;
	}
	public void setPp_purc_date(Date pp_purc_date) {
		this.pp_purc_date = pp_purc_date;
	}
	public int getPp_squarym() {
		return pp_squarym;
	}
	public void setPp_squarym(int pp_squarym) {
		this.pp_squarym = pp_squarym;
	}
	public double getPp_mprice() {
		return pp_mprice;
	}
	public void setPp_mprice(double pp_mprice) {
		this.pp_mprice = pp_mprice;
	}
	public double getPp_funds() {
		return pp_funds;
	}
	public void setPp_funds(double pp_funds) {
		this.pp_funds = pp_funds;
	}
	
	public String toString() {
		return this.pp_infoId + 
//		"," + this.pp_id + 
		"," + this.pp_dpay + 
		"," + this.pp_mfund + 
		"," + this.pp_mcount + 
		"," + this.pp_purc_date + 
		"," + this.pp_squarym + 
		"," + this.pp_mprice + 
		"," + this.pp_funds;
	}
}
