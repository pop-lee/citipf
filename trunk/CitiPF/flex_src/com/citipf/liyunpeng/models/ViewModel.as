package com.citipf.liyunpeng.models
{
	import com.citipf.liyunpeng.views.carPlan.CarPlanMain;
	import com.citipf.liyunpeng.views.chiEduPlan.ChiEduPlanMain;
	import com.citipf.liyunpeng.views.finaNews.FinaNewsMain;
	import com.citipf.liyunpeng.views.iPrefTest.IPrefTestMain;
	import com.citipf.liyunpeng.views.lifeInsuPlan.LifeInsuPlanMain;
	import com.citipf.liyunpeng.views.persPlan.PersPlanMain;
	import com.citipf.liyunpeng.views.purcPlan.PurcPlanMain;
	
	import flash.errors.IllegalOperationError;
	
	public class ViewModel
	{
		
		private static var instance : ViewModel = new ViewModel();
		
		/**
		 * 导航按钮宽度
		 */
		public const _navButtonWidth : uint = 280;
		
		public static function getInstance() : ViewModel { return instance; }
		
		public function ViewModel()
		{
			if(instance != null) {
				throw new IllegalOperationError(
				"This is a singleton class,you can call the getInstall() method!" + 
				"--这是一个单例类,您可以调用getInstance方法获取实例！");
			}
//			StyleManager.loadStyleDeclarations("./assets/mainStyle.swf");
			new CarPlanMain();
			new ChiEduPlanMain();
			new IPrefTestMain();
			new LifeInsuPlanMain();
			new PersPlanMain();
			new PurcPlanMain();
			new FinaNewsMain();
			new IPrefTestMain();
		}
		
	}
}