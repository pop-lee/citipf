package com.citipf.liyunpeng.commands
{
	import com.adobe.cairngorm.commands.ICommand;
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.citipf.liyunpeng.events.GetUInveVOEvent;
	import com.citipf.liyunpeng.valueObject.UInveVO;
	
	import mx.rpc.AsyncToken;
	import mx.rpc.IResponder;

	public class GetUInveVOCommand extends BaseCommands implements ICommand, IResponder
	{
		public function GetUInveVOCommand()
		{
			super();
		}
		
		public function execute(event:CairngormEvent):void
		{
			var _event : GetUInveVOEvent = GetUInveVOEvent(event);
			var call : AsyncToken = service.selectUInveVO(_event.uInveVO);
			call.addResponder(this);
		}
		
		public function result(data:Object):void
		{
			model._uInve = data.result as UInveVO;
		}
		
		public function fault(info:Object):void
		{
		}
		
	}
}