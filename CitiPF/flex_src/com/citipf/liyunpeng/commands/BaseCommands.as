package com.citipf.liyunpeng.commands
{
	import com.adobe.cairngorm.business.ServiceLocator;
	
	public class BaseCommands
	{
		protected var service : Object ;
		
		public function BaseCommands()
		{
			service = ServiceLocator.getInstance().getRemoteObject("citiPFService");
		}

	}
}