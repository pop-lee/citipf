package com.citipf.liyunpeng.commands
{
	import com.adobe.cairngorm.commands.ICommand;
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.citipf.liyunpeng.MacPopUp.controls.CocoaAlert;
	import com.citipf.liyunpeng.events.GetUserVOEvent;
	import com.citipf.liyunpeng.models.ViewModel;
	import com.citipf.liyunpeng.valueObject.UserVO;
	
	import mx.rpc.AsyncToken;
	import mx.rpc.IResponder;

	public class GetUserVOCommand extends BaseCommands implements ICommand, IResponder
	{
		public function GetUserVOCommand()
		{
		}
		
		public function execute(event:CairngormEvent):void
		{
			var _event : GetUserVOEvent = GetUserVOEvent(event);
			var call : AsyncToken = service.selectUserVO(_event.userVO);
			call.addResponder(this);
		}
		
		public function result(data:Object):void
		{
			model._curUser = data.result as UserVO;
			if(model._curUser == null) {
				CocoaAlert.show("您的银行账号或密码不正确，请重新输入^_^","登录提示",0x4,ViewModel.getInstance().mainBox);
			}
			ViewModel.getInstance().loginBox.enabled = true;
		}
		
		public function fault(info:Object):void
		{
		}
		
	}
}