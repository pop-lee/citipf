package com.citipf.liyunpeng.models
{
	import com.citipf.liyunpeng.map.IMap;
	import com.citipf.liyunpeng.mdi.SuperWindow;
	import com.citipf.liyunpeng.mdi.containers.MDICanvas;
	import com.citipf.liyunpeng.mdi.managers.MDIManager;
	import com.citipf.liyunpeng.views.chartViews.ChartMain;
	
	import mx.collections.ArrayCollection;
	import mx.core.UIComponent;
	
	public class WindowManagerModel
	{
		[Bindable]
		public var windowList : ArrayCollection = MDIManager.winList;
		
		[Bindable]
		public var windowMap : IMap = MDIManager.winMap;
		
		public var mainVBox : MDICanvas ;
		
		private var tempWindow : UIComponent;
		
		private var currentWindow : SuperWindow;
		
		public function WindowManagerModel()
		{
		}
		
		public function getChartMain() : void
		{
			if(windowMap.getValue("股指详细") == null) {
				tempWindow = new ChartMain();
				currentWindow = new SuperWindow("股指详细");
				currentWindow.addChild(tempWindow);
			} else {
				currentWindow = windowMap.getValue("股指详细");
			}
			addWindow(currentWindow);
			
		}
		
		private function addWindow(win : SuperWindow) : void
		{
			mainVBox.windowManager.add(win);
			windowMap.put(win.title,win);
		}

	}
}