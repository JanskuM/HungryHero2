package objects
{
	import starling.display.MovieClip;
	import starling.display.Sprite;
	import starling.events.Event;
	
	public class Hero extends Sprite
	{
		private var heroArt:MovieClip;
		
		public function Hero()
		{
			
			addEventListener( starling.events.Event.ADDED_TO_STAGE, onAddedToStage);
		}
		
		private function onAddedToStage():void
		{
			removeEventListener( starling.events.Event.ADDED_TO_STAGE, onAddedToStage);
			createHeroArt();
		}
		
		private function createHeroArt():void
		{
			heroArt = new MovieClip(Assets.getAtlas().getTextures("fly_"), 20);
			heroArt.x = Math.ceil(-heroArt.width/2);
			heroArt.y = Math.ceil(-heroArt.height/2);
			addChild(heroArt);
			
		}
	}
}