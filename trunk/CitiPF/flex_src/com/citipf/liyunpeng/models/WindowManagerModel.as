package com.citipf.liyunpeng.models
{
	import com.citipf.liyunpeng.mdi.managers.MDIManager;
	
	import mx.collections.ArrayCollection;
	
	public class WindowManagerModel
	{
		[Bindable]
		public var windowList : ArrayCollection = MDIManager.winList;
		
		public function WindowManagerModel()
		{
		}

	}
}