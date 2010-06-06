package com.citipf.liyunpeng.models
{
	import com.citipf.liyunpeng.map.IMap;
	import com.citipf.liyunpeng.mdi.SuperWindow;
	import com.citipf.liyunpeng.mdi.containers.MDICanvas;
	import com.citipf.liyunpeng.mdi.managers.MDIManager;
	import com.citipf.liyunpeng.valueObject.PurcProgVO;
	import com.citipf.liyunpeng.views.chartViews.ChartMain;
	import com.citipf.liyunpeng.views.login.PlanDetail;
	import com.citipf.liyunpeng.views.login.PlanList;
	
	import mx.collections.ArrayCollection;
	import mx.core.Container;
	import mx.core.UIComponent;
	
	public class WindowManagerModel
	{
		/**
		 * MDI窗口打开列表
		 */		
		[Bindable]
		public var windowList : ArrayCollection = MDIManager.winList;
		
		/**
		 * MDI窗口打开的Map
		 */		
		[Bindable]
		public var windowMap : IMap = MDIManager.winMap;
		
		/**
		 * 主面板中MDI的窗口主容器
		 */		
		public var mainVBox : MDICanvas ;
		
		[Bindable]
		public var mainBox : Container;
		/**
		 * 登录窗口
		 */
		[Bindable]
		public var loginBox : Container;
		
		[Bindable]
		private var winName : String ;
		
		/**
		 * 打开窗口的内部子容器
		 */		
		private var tempWindow : UIComponent;
		
		/**
		 * 当前窗口
		 */		
		private var currentWindow : SuperWindow;
		
		
		public function WindowManagerModel()
		{
		}
		
		/**
		 * 添加股指窗口方法
		 * 
		 */		
		public function getChartMain() : void
		{
			winName = "股指详细";
			if(windowMap.getValue(winName) == null) {
				tempWindow = new ChartMain();
				currentWindow = new SuperWindow(winName);
				currentWindow.width = 500;
				currentWindow.height = 500;
				currentWindow.addChild(tempWindow);
			} else {
				currentWindow = windowMap.getValue(winName);
			}
			addWindow(currentWindow);
			
		}
		
		/**
		 * 理财规划列表显示
		 */
		public function getPlanList() : void
		{
			winName = "理财规划列表"
			if(windowMap.getValue(winName) == null) {
				tempWindow = new PlanList();
				currentWindow = new SuperWindow(winName);
				currentWindow.width = 500;
				currentWindow.height = 500;
				currentWindow.addChild(tempWindow);
			} else {
				currentWindow = windowMap.getValue(winName);
			}
			addWindow(currentWindow);
		}
		
		public function getPlanDetail(wn : String,data : PurcProgVO) : void
		{
			winName = wn;
			if(windowMap.getValue(winName) == null) {
				tempWindow = new PlanDetail();
				(tempWindow as PlanDetail).purcProg = data;
				currentWindow = new SuperWindow(winName);
				currentWindow.width = 500;
				currentWindow.height = 500;
				currentWindow.addChild(tempWindow);
			} else {
				currentWindow = windowMap.getValue(winName);
			}
			addWindow(currentWindow);
		}
		
		/**
		 * 添加窗口方法
		 * @param 要添加的窗口
		 * 
		 */		
		private function addWindow(win : SuperWindow) : void
		{
			mainVBox.windowManager.add(win);
			windowMap.put(win.title,win);
		}

	}
}