package screen
{
	import starling.display.Button;
	import starling.display.Image;
	import starling.display.Sprite;
	import starling.events.Event;
	
	public class Welcome extends Sprite
	{
		private var bg:Image;
		private var title:Image;
		private var hero:Image;
		
		private var playBtn:Button;
		private var aboutBtn:Button;
		
		public function Welcome()
		{
			addEventListener(starling.events.Event.ADDED_TO_STAGE, onAddedToStage);
		}
		
		private function onAddedToStage(event:Event):void
		{
			trace("welcome screen initialized");
			
			drawScreen();
		}
		
		private function drawScreen():void
		{
			bg = new Image(Assets.getTexture(BgWelcome));
			addChild(bg);
			
			title = new Image(Assets.getTexture(WelcomeTitle));
			title.x = 440;
			title.y = 20;
			addChild(title);
			
			hero = new Image(Assets.getTexture(WelcomeHero));
			addChild(hero);
			
		}
	}
}