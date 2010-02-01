package com.citipf.liyunpeng.models
{
	public class Model
	{
		private static var instance : Model = new Model(new SingletonClass());
		
		/**
		 * 单例类构造方法
		 * @param cons 参数为私有类 
		 * 
		 */
		public function Model(cons : SingletonClass){}
		
		/**
		 * 
		 * @return 返回单例实现
		 * 
		 */
		public static function getInstance() : Model{ return instance ; }

	}
}

class SingletonClass {}