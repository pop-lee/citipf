package com.citipf.liyunpeng.commands
{
	import com.adobe.cairngorm.commands.ICommand;
	import com.adobe.cairngorm.control.CairngormEvent;
	
	import mx.collections.ArrayCollection;
	import mx.rpc.AsyncToken;
	import mx.rpc.IResponder;
	import mx.rpc.events.FaultEvent;

	public class GetStockVOCommand extends BaseCommands implements ICommand, IResponder
	{
		public function GetStockVOCommand()
		{
		}

		public function execute(event:CairngormEvent):void
		{
			var call : AsyncToken = service.selectStockVOList();
			call.addResponder(this);
		}
		
		public function result(data:Object):void
		{
			model.stockArrSize = (data.result as ArrayCollection).length;
			model.stockArr = data.result as ArrayCollection;
		}
		
		public function fault(info:Object):void
		{
			var faultEvent : FaultEvent = FaultEvent(info);
		}
		
	}
}