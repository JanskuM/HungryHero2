package screen
{
	import starling.display.Button;
	import starling.display.Image;
	import starling.display.Sprite;
	import starling.events.Event;
	import com.greensock.TweenLite;
	
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
			bg = new Image(Assets.getTexture("BgWelcome"));
			addChild(bg);
			
			title = new Image(Assets.getTexture("WelcomeTitle"));
			title.x = 440;
			title.y = 20;
			addChild(title);
			
			hero = new Image(Assets.getTexture("WelcomeHero"));
			addChild(hero);
			hero.x = -hero.width;
			hero.y = 100;
			
			playBtn = new Button(Assets.getTexture("WelcomePlayBtn"));
			playBtn.x = 500;
			playBtn.y = 260;
			addChild(playBtn);
			
			aboutBtn = new Button(Assets.getTexture("WelcomeAboutBtn"));
			aboutBtn.x = 410;
			aboutBtn.y = 380;
			addChild(aboutBtn);
			
		}
		
		public function initialize():void
		{
			visible = true;
			
			hero.x = -hero.width;
			hero.y = 100;
			
			TweenLite.to(hero, 2, {x:80});
			
			addEventListener( Event.ENTER_FRAME, heroAnimation);
		}
		
		private function heroAnimation( event:Event):void
		{
			var currentDate:Date = new Date();
			hero.y = 100 + (Math.cos(currentDate.getTime() * 0.002) * 25);
			playBtn.y = 260 + (Math.cos(currentDate.getTime() * 0.002) * 10);
			aboutBtn.y = 380 + (Math.cos(currentDate.getTime() * 0.002) * 10);
			
		}
	}
}