package com.citipf.liyunpeng.commands
{
	import com.adobe.cairngorm.business.ServiceLocator;
	import com.citipf.liyunpeng.models.Model;
	
	public class BaseCommands
	{
		protected var model : Model ;
		
		protected var service : Object ;
		
		public function BaseCommands()
		{
			service = ServiceLocator.getInstance().getRemoteObject("citiPFService");
			model = Model.getInstance();
		}

	}
}