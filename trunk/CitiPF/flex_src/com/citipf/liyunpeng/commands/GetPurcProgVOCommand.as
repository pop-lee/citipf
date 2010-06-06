package com.citipf.liyunpeng.commands
{
	import com.adobe.cairngorm.commands.ICommand;
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.citipf.liyunpeng.events.GetPurcProgVOEvent;
	
	import mx.collections.ArrayCollection;
	import mx.rpc.AsyncToken;
	import mx.rpc.IResponder;

	public class GetPurcProgVOCommand extends BaseCommands implements ICommand, IResponder
	{
		public function GetPurcProgVOCommand()
		{
			super();
		}
		
		public function execute(event:CairngormEvent):void
		{
			var getPurcProgVOEvent : GetPurcProgVOEvent = event as GetPurcProgVOEvent;
			var call : AsyncToken = service.selectPurcProgVOList(getPurcProgVOEvent.purcProgVO);
			call.addResponder(this);
		}
		
		public function result(data:Object):void
		{
			model._purcProgList = data.result as ArrayCollection;
		}
		
		public function fault(info:Object):void
		{
		}
		
	}
}