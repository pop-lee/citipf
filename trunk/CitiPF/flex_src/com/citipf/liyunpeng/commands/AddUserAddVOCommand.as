package com.citipf.liyunpeng.commands
{
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.adobe.cairngorm.commands.ICommand;
	import mx.rpc.IResponder;

	public class AddUserAddVOCommand extends BaseCommands implements ICommand, IResponder
	{
		public function AddUserAddVOCommand()
		{
			super();
		}
		
		public function execute(event:CairngormEvent):void
		{
		}
		
		public function result(data:Object):void
		{
		}
		
		public function fault(info:Object):void
		{
		}
		
	}
}