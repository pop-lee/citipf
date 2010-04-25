package com.citipf.liyunpeng.commands
{
	import com.adobe.cairngorm.business.ServiceLocator;
	import com.citipf.liyunpeng.models.Model;
	
	public class BaseCommands
	{
		protected static var model : Model ;
		
		protected static var service : Object ;
		
		public function BaseCommands()
		{
			service = ServiceLocator.getInstance().getRemoteObject("citiPFService");
			model = Model.getInstance();
		}

	}
}