/**
* Stock 数据推送数据模型
*/
package com.citipf.liyunpeng.models
{
	import com.adobe.cairngorm.control.CairngormEventDispatcher;
	import com.citipf.liyunpeng.events.GetStockVOListEvent;
	import com.citipf.liyunpeng.valueObject.StockVO;
	
	import mx.collections.ArrayCollection;
	import mx.messaging.ChannelSet;
	import mx.messaging.Consumer;
	import mx.messaging.events.MessageEvent;
	
	[Bindable]
	public class StockModel extends FormateModel
	{
		/**
		 * 数据推送Consumer组建 
		 */		
		private var consumer : Consumer = new Consumer();
		
		/**
		 * 存储股指的数组容器 
		 */
		public var _stockArr : ArrayCollection = new ArrayCollection([new StockVO(11,new Date())]);
		
		/**
		 * 股指数组存储的长度
		 * @default 50
		 */		
		private var _stockArrSize : int = 150;
		
		public function StockModel()
		{
			consumer.destination = "stock-data-feed";
			consumer.subtopic = "stock";
			consumer.channelSet = new ChannelSet(["my-streaming-amf"]);
			consumer.addEventListener(MessageEvent.MESSAGE,messageHandle);
			consumer.subscribe();
		}
		
		/**
		 * 当监听到指定频道推送数据时触发执行
		 * @param event 参数为数据推送监听触发的时间
		 */		
		private function messageHandle(event : MessageEvent) : void
		{
			var _stockVO : StockVO = event.message.body as StockVO;
			trace(_stockVO.stockIndex);
			if(stockArr.length > _stockArrSize) {
				stockArr.removeItemAt(0);
			}
			CairngormEventDispatcher.getInstance().dispatchEvent(new GetStockVOListEvent());
			stockArr.addItem(_stockVO);
		}
		
		/**
		 * 股指访问期方法 
		 * @return 返回存储股指的数组容器
		 */		
//		public function get stockArr() : ArrayCollection
//		{
//			return _stockArr ;
//		}
//		public function set stockArr(arr : ArrayCollection) : void
//		{
//			_stockArr = arr;
//		}
		
		/**
		 * 存储股指的数组容器访问器方法
		 * @return 存储股指的数组容器
		 * 
		 */		
		public function get stockArr() : ArrayCollection
		{
			return _stockArr;
		}
		public function set stockArr(arr : ArrayCollection) : void
		{
			_stockArr = arr;
		}
		
		
		/**
		 * 股指数组存储的长度访问器方法
		 */		
		public function get stockArrSize() : int
		{
			return _stockArrSize
		}
		public function set stockArrSize(size : int) : void
		{
			_stockArrSize = size;
		}
		
	}
}