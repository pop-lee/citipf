package com.citipf.liyunpeng.valueObject
{
	[Bindable]
	[RemoteClass(alias="com.citipf.liyunpeng.valueObject")]
	public class PurcProgVO
	{
		private var _pp_infoId : int;
		private var _pp_id : int;
		private var _pp_pray : int;
		private var _pp_mfund : Number;
		private var _pp_mcount : int;
		private var _pp_purc_date : Date;
		private var _pp_squarym : int;
		private var _pp_mprice : Number;
		private var _pp_funds : Number;
		
		public function PurcProgVO()
		{
		}
		
	public function pp_infoId() : int {
		return _pp_infoId;
	}
	
	public function pp_infoId(pp_infoId : int) : void {
		this._pp_infoId = pp_infoId;
	}
	public function pp_id() : int{
		return _pp_id;
	}
	public function pp_id(pp_id : int) {
		this._pp_id = pp_id;
	}
	public function pp_pray() : int {
		return _pp_pray;
	}
	public function pp_pray(pp_pray : int) {
		this._pp_pray = pp_pray;
	}
	public function pp_mfund() : Number {
		return _pp_mfund;
	}
	public function pp_mfund(pp_mfund : Number) {
		this._pp_mfund = pp_mfund;
	}
	public function pp_mcount() : int {
		return _pp_mcount;
	}
	public function pp_mcount(pp_mcount : int) {
		this._pp_mcount = pp_mcount;
	}
	public function pp_purc_date() : Date {
		return _pp_purc_date;
	}
	public function pp_purc_date(pp_purc_date : Date) {
		this._pp_purc_date = pp_purc_date;
	}
	public function pp_squarym() : int {
		return _pp_squarym;
	}
	public function pp_squarym(pp_squarym : int) {
		this._pp_squarym = pp_squarym;
	}
	public function pp_mprice() : Number {
		return _pp_mprice;
	}
	public function pp_mprice(pp_mprice : Number) {
		this._pp_mprice = pp_mprice;
	}
	public function pp_funds() : Number {
		return _pp_funds;
	}
	public function pp_funds(pp_funds : Number) {
		this._pp_funds = pp_funds;
	}

	}
}