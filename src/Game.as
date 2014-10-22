package
{
	import screen.Welcome;
	
	import starling.display.Sprite;
	import starling.events.Event;
	
	public class Game extends Sprite
	{
		private var screenWelcome:Welcome;
		
		public function Game()
		{
			addEventListener(starling.events.Event.ADDED_TO_STAGE, onAddedToStage);
		}
		
		private function onAddedToStage( event:Event):void
		{
			trace( "starling framework initialized!");
			
			screenWelcome = new Welcome();
			addChild(screenWelcome);
			screenWelcome.initialize();
		}
	}
}