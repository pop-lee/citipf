/**
* Stock 数据推送数据模型
*/
package com.citipf.liyunpeng.models
{
	import mx.collections.ArrayCollection;
	import mx.messaging.ChannelSet;
	import mx.messaging.Consumer;
	import mx.messaging.events.MessageEvent;
	
	public class StockModel
	{
		/**
		 * 数据推送Consumer组建 
		 */		
		private var consumer : Consumer = new Consumer();
		
		/**
		 * 存储股指的数组容器 
		 */
		private var _stockArr : ArrayCollection = new ArrayCollection
		
		public function StockModel()
		{
//			consumer.destination = "stock-data-feed";
//			consumer.subtopic = "stock";
//			consumer.channelSet = new ChannelSet(["my-streaming-amf"]);
//			consumer.addEventListener(MessageEvent.MESSAGE,messageHandle);
//			consumer.subscribe();
		}
		
		/**
		 * 当监听到指定频道推送数据时触发执行
		 * @param event 参数为数据推送监听触发的时间
		 * 
		 */		
		private function messageHandle(event : MessageEvent) : void
		{
			trace(event.message.body);
		}
		
		/**
		 * 股指访问期方法 
		 * @return 返回存储股指的数组容器
		 * 
		 */		
		public function get stockArr() : ArrayCollection
		{
			return _stockArr ;
		}

	}
}