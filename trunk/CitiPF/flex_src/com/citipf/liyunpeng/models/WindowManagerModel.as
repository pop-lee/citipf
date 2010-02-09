package com.citipf.liyunpeng.models
{
	import com.citipf.liyunpeng.map.IMap;
	import com.citipf.liyunpeng.mdi.SuperWindow;
	import com.citipf.liyunpeng.mdi.containers.MDICanvas;
	import com.citipf.liyunpeng.mdi.managers.MDIManager;
	
	import mx.collections.ArrayCollection;
	
	public class WindowManagerModel
	{
		[Bindable]
		public var windowList : ArrayCollection = MDIManager.winList;
		
		[Bindable]
		public var windowMap : IMap = MDIManager.winMap;
		
		public var mainVBox : MDICanvas ;
		
		public function WindowManagerModel()
		{
		}
		
		public function addWindow(win : SuperWindow) : void
		{
			if(windowMap.getValue(win.title) == null) {
				mainVBox.windowManager.add(win);
				windowMap.put(win.title,win);
			}
		}

	}
}