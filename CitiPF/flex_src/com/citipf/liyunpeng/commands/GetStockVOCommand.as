package com.citipf.liyunpeng.commands
{
	import com.adobe.cairngorm.commands.ICommand;
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.citipf.liyunpeng.valueObject.StockVO;
	
	import mx.collections.ArrayCollection;
	import mx.rpc.AsyncToken;
	import mx.rpc.IResponder;

	public class GetStockVOCommand extends BaseCommands implements ICommand, IResponder
	{
		public function GetStockVOCommand()
		{
		}

		public function execute(event:CairngormEvent):void
		{
			var call : AsyncToken = service.getStockVOList();
			call.addResponder(this);
		}
		
		public function result(data:Object):void
		{
			trace(((data.result as ArrayCollection).getItemAt(0) as StockVO).stockIndex);
		}
		
		public function fault(info:Object):void
		{
		}
		
	}
}