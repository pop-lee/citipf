package com.citipf.liyunpeng.models
{
	public class PurcModel extends UserModel
	{
		/**
		 * @预计买房年份
		 */
		[Bindable]
		public var a1 : int = 0;
		/**
		 * @预计买房月份
		 */
		[Bindable]
		public var a2 : int = 0;
		/**
		 * 预计购买房平米数
		 */
		[Bindable]
		public var a3 : Number = 0;
		/**
		 * 预计房价每平米价
		 */
		[Bindable]
		public var a4 : Number = 0;
		/**
		 * @预计购房总费用
		 */
		[Bindable]
		public var a8 : Number = 0;
		
		//*************************************
		
		/**
		 * 准备用总资产的数目购房
		 */
		[Bindable]
		public var b2 : Number = 0;
		/**
		 * 此产预期年收益
		 */
		[Bindable]
		public var b3 : Number = 0;
		
		/**
		 * 每月结余中用作购房资金
		 */
		[Bindable]
		public var b7 : Number = 0;
		/**
		 * 这份资金的年收益率
		 */
		[Bindable]
		public var b8 : Number = 0;
		
		//**********************************************
		/**
		 * 根据个人情况预算处的总购房支出
		 */
		[Bindable]
		public var c1 : Number = 0;
		
		
		
		
		public function PurcModel()
		{
		}

	}
}