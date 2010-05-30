package com.citipf.liyunpeng.valueObject
{
	[Bindable]
	[RemoteClass(alias="com.citipf.liyunpeng.valueObject")]
	public class PurcProgVO
	{
		private var _pp_infoId : int;
//		private var _pp_id : int;
		private var _pp_dpay : int;
		private var _pp_mfund : Number;
		private var _pp_mcount : int;
		private var _pp_purc_date : Date;
		private var _pp_squarym : int;
		private var _pp_mprice : Number;
		private var _pp_funds : Number;
		
		public function PurcProgVO()
		{
		}
		
	public function get pp_infoId() : int {
		return _pp_infoId;
	}
	
	public function set pp_infoId(pp_infoId : int) : void {
		this._pp_infoId = pp_infoId;
	}
//	public function get pp_id() : int{
//		return _pp_id;
//	}
//	public function set pp_id(pp_id : int) : void {
//		this._pp_id = pp_id;
//	}
	public function get pp_dpay() : int {
		return _pp_dpay;
	}
	public function set pp_dpay(pp_dpay : int) : void {
		this._pp_dpay = pp_dpay;
	}
	public function get pp_mfund() : Number {
		return _pp_mfund;
	}
	public function set pp_mfund(pp_mfund : Number) : void {
		this._pp_mfund = pp_mfund;
	}
	public function get pp_mcount() : int {
		return _pp_mcount;
	}
	public function set pp_mcount(pp_mcount : int) : void {
		this._pp_mcount = pp_mcount;
	}
	public function get pp_purc_date() : Date {
		return _pp_purc_date;
	}
	public function set pp_purc_date(pp_purc_date : Date) : void {
		this._pp_purc_date = pp_purc_date;
	}
	public function get pp_squarym() : int {
		return _pp_squarym;
	}
	public function set pp_squarym(pp_squarym : int) : void {
		this._pp_squarym = pp_squarym;
	}
	public function get pp_mprice() : Number {
		return _pp_mprice;
	}
	public function set pp_mprice(pp_mprice : Number) : void {
		this._pp_mprice = pp_mprice;
	}
	public function get pp_funds() : Number {
		return _pp_funds;
	}
	public function set pp_funds(pp_funds : Number) : void {
		this._pp_funds = pp_funds;
	}

	}
}