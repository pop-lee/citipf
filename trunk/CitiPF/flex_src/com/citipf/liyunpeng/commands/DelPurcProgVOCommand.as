package com.citipf.liyunpeng.commands
{
	import com.adobe.cairngorm.commands.ICommand;
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.citipf.liyunpeng.events.DelPurcProgVOEvent;
	
	import mx.collections.ArrayCollection;
	import mx.rpc.AsyncToken;
	import mx.rpc.IResponder;

	public class DelPurcProgVOCommand extends BaseCommands implements ICommand, IResponder
	{
		public function DelPurcProgVOCommand()
		{
			super();
		}
		
		public function execute(event:CairngormEvent):void
		{
			var delPurcProgVOEvent : DelPurcProgVOEvent = event as DelPurcProgVOEvent;
			var call : AsyncToken = service.deletePurcProgVO(delPurcProgVOEvent.purcProg);
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