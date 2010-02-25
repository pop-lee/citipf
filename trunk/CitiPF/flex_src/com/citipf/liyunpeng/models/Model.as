package com.citipf.liyunpeng.models
{
	import flash.errors.IllegalOperationError;
	
	[Bindable]
	public class Model extends StockModel
	{
		private static var instance : Model = new Model();
		
		/**
		 * 单例类构造方法
		 * @param cons 参数为私有类 
		 */
		public function Model()
		{
			if(instance != null) {
				throw new IllegalOperationError(
				"This is a singleton class,you can call the getInstall() method!" + 
				"--这是一个单例类,您可以调用getInstance方法获取实例！");
			}
		}
		
		/**
		 * @return 返回单例实现
		 */
		public static function getInstance() : Model{ return instance ; }

	}
}