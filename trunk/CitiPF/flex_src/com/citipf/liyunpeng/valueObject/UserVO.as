package com.citipf.liyunpeng.valueObject
{
	[Bindable]
	[RemoteClass(alias="com.citipf.liyunpeng.valueObject.UserVO")]
	public class UserVO
	{
		/**
		 * 用户表中自增主键
		 */
		private var _ui_infoId : int ;
		/**
		 * 用户表银行卡号
		 */
		private var _ui_bankId : String;
		/**
		 * 用户表用户姓名
		 */
		private var _ui_name : String ;
		/**
		 * 用户表身份证号
		 */
		private var _ui_id : String ;
		/**
		 * 用户表用户密码
		 */
		private var _ui_passw : String ;
		
		
		public function UserVO()
		{
		}
		
		public function get ui_infoId() 
		{
			return this._ui_bankId;
		}
		
		public function set ui_bankId(ui_bankId : String) : void
		{
			this._ui_bankId = ui_bankId;
		}
		public function get ui_bankId() : String
		{
			return this._ui_bankId;
		}
		public function set ui_name(ui_name : String) : void
		{
			this._ui_name = ui_name;
		}
		public function get ui_name() : String
		{
			return this._ui_name;
		}
		public function set ui_id(ui_id : String) : void
		{
			this._ui_id = ui_id;
		}
		public function get ui_id() : String
		{
			return this._ui_id;
		}
		public function set ui_passw(ui_passw : String) : void
		{
			this._ui_passw = ui_passw;
		}
		public function get ui_passw() : String
		{
			return this._ui_passw;
		}

	}
}