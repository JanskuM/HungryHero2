package objects
{
	import starling.display.Image;
	import starling.display.Sprite;
	import starling.events.Event;
	
	public class BgLayer extends Sprite
	{
		private var image1:Image;
		private var image2:Image;
		
		private var _layer:int;
		private var _parallax:Number; // Ctrl + 1 saa lisättyä get ja set funktion muuttujille, jonka avulla voit määrittää arvoja muuttujalle muualta.
		
		public function BgLayer(layer:int)
		{
			_layer = layer;
			addEventListener(starling.events.Event.ADDED_TO_STAGE, onAddedToStage);
		}
		
		private function onAddedToStage(event:Event):void
		{
			removeEventListener(starling.events.Event.ADDED_TO_STAGE, onAddedToStage);
			
			if( _layer == 1)
			{
				image1 = new Image(Assets.getTexture("BgLayer" + _layer));
				image2 = new Image(Assets.getTexture("BgLayer" + _layer));
			}
			
			else
			{
				image1 = new Image(Assets.getAtlas().getTexture("bgLayer" + _layer));
				image2 = new Image(Assets.getAtlas().getTexture("bgLayer" + _layer));
			}
			
			image1.x = 0;
			image1.y = stage.stageHeight - image1.height;
			
			image2.x = image2.width;
			image2.y = image1.y;
			
			addChild(image1);
			addChild(image2);
			
		}
		
		public function get parallax():Number
		{
			return _parallax;
		}

		public function set parallax(value:Number):void
		{
			_parallax = value;
		}

	}
}