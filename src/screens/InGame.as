package screens
{
	import objects.GameBackground;
	import objects.Hero;
	
	import starling.display.Sprite;
	import starling.events.Event;
	
	public class InGame extends Sprite
	{
		private var bg:GameBackground;
		private var hero:Hero;
		
		public function InGame()
		{
			addEventListener(starling.events.Event.ADDED_TO_STAGE, onAddedToStage);
		}
		
		private function onAddedToStage( event:Event):void
		{
			removeEventListener(Event.ADDED_TO_STAGE, onAddedToStage);
			drawGame();
		}
		
		private function drawGame():void
		{
			bg = new GameBackground();
			bg.speed = 50;
			addChild(bg);
			
			hero = new Hero();
			hero.x = stage.stageWidth/2;
			hero.y = stage.stageHeight/2;
			addChild(hero);			
		}
		
		public function disposeTemporarily():void
		{
			visible = false;
		}
		
		public function initialize():void
		{
			visible = true;
		}
	}
}