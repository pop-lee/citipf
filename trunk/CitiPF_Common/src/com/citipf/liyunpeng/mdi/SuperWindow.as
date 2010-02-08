package com.citipf.liyunpeng.mdi
{
	import com.citipf.liyunpeng.interfaceFiles.IWindow;
	import com.citipf.liyunpeng.mdi.containers.MDIWindow;

	public class SuperWindow extends MDIWindow implements IWindow
	{
		public function SuperWindow(title : String = null)
		{
			super();
			if(title != null) super.title = title;
		}
		
	}
}