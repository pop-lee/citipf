package com.citipf.liyunpeng.microCharts
{
	import mx.collections.ArrayCollection;
	import mx.core.UIComponent;
	
	[Style(name="lineColor", type="uint", inherit="no")]
	[Style(name="lineThickness", type="int", inherit="no")]
	
	public class SparkLine extends UIComponent
	{

		private var _lineColor:uint = 0x000000
		private var _lineThickness:uint = 0
		private var _renderDirty:Boolean = true;
		private var _items:ArrayCollection
		private var _oldWidth:Number
		private var _oldHeight:Number
		private var _xField:String
		 
		
		public function SparkLine():void{
			super();
		}
		
		//Properties
		public function set xField(value:String):void{
			_xField = value
			_renderDirty=true;
			invalidateProperties();
		}
		public function get xField():String{
			return _xField;
		}
		
		public function set dataProvider(value:ArrayCollection):void{
			_items = value;
			_renderDirty=true;
			invalidateDisplayList();
		}
		
		public function get dataProvider():ArrayCollection{
			return _items;
		}
		
		override protected function commitProperties():void{
			_lineColor = getStyle("lineColor")	
			_lineThickness = getStyle("lineThickness")	
		}
		
		//Update Details
		private function updateDetails():void
		{
			_oldWidth = unscaledWidth;
			_oldHeight = unscaledHeight;
		}
		
		override protected function updateDisplayList(unscaledWidth:Number, unscaledHeight:Number):void {
			super.updateDisplayList(unscaledWidth, unscaledHeight);
			
			if(_oldWidth != unscaledWidth || _oldHeight != unscaledHeight)
				{
					updateDetails();
					_renderDirty = true;		
				}
				
			if (_renderDirty){
				drawSparkLine(unscaledWidth, unscaledHeight);
				_renderDirty = false;
			}   
				   
		  }
		  
		private function drawSparkLine(unscaledWidth:Number, unscaledHeight:Number):void{
			//ClearChildren - We don't really need to do this but it's good practice.   If you don't do it sometimes you
			//add the same component 100 times to your app.
			clearChildren();
			
			//Figure out what were dealing with
			var numItems:int = _items.length
			var spaceWidth:Number = unscaledWidth/numItems
			
			//Find min and max
			var minNumber:Number
			var maxNumber:Number
			var tempNumber:Number
			var i:int = 0;
			minNumber = _items.getItemAt(0)[_xField] 
			maxNumber = minNumber
			
			for(i=0; i<numItems-1;i++){
				tempNumber = _items.getItemAt(i)[_xField]
				if (minNumber<tempNumber)
					minNumber = tempNumber;
				if (maxNumber > tempNumber)
					maxNumber = tempNumber;
			}
			
			//Figure out the space height
			var spaceHeight:Number = unscaledHeight/(maxNumber-minNumber)
			
			//Clear Graphics
			graphics.clear();
			
			//Draw Sparkline
			graphics.lineStyle(_lineThickness, _lineColor, 1)
			graphics.moveTo(0, unscaledHeight);
			
			for (i=0; i<numItems-1; i++){
				graphics.lineTo(i*spaceWidth,(_items.getItemAt(i)[_xField] - minNumber)*spaceHeight)
			}
			graphics.endFill()
			
		}
		
		private function clearChildren():void{
			  var i:int = 0;
			var j:int = this.numChildren
			for (i=0; i<j; i++){					
				this.removeChildAt(0);
			}
		  }
		
	}
}