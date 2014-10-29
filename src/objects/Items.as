package objects
{	
	import starling.display.Image;
	import starling.display.Sprite;
	
	public class Items extends Sprite
	{
		private var _foodItemType:int;
		private var itemImage:Image;
		
		public function Items(_foodItemType:int)
		{
			this.foodItemType = _foodItemType
		}

		public function get foodItemType():int
		{
			return _foodItemType;
		}

		public function set foodItemType(value:int):void
		{
			_foodItemType = value;
			itemImage = new Image(Assets.getAtlas().getTexture("item" + _foodItemType));
			itemImage.x = -itemImage.texture.width * 0.5;
			itemImage.y = -itemImage.texture.height * 0.5;
			addChild(itemImage);
		}

	}
}