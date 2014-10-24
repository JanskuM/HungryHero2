package
{
	import events.NavigationEvent;
	
	import screen.Welcome;
	
	import screens.InGame;
	
	import starling.display.Sprite;
	import starling.events.Event;
	
	public class Game extends Sprite
	{
		private var screenWelcome:Welcome;
		private var screenInGame:InGame
		
		public function Game()
		{
			addEventListener(starling.events.Event.ADDED_TO_STAGE, onAddedToStage);
		}
		
		private function onAddedToStage( event:Event):void
		{
			trace( "starling framework initialized!");
			
			addEventListener(events.NavigationEvent.CHANGE_SCREEN, onChangeScreen);
			
			screenInGame = new InGame();
			screenInGame.disposeTemporarily();
			addChild(screenInGame);
			
			screenWelcome = new Welcome();
			addChild(screenWelcome);
			screenWelcome.initialize();
		}
		
		private function onChangeScreen(event:NavigationEvent):void
		{
			switch (event.params.id)
			{
				case "play":
					screenWelcome.disposeTemporarily();
					screenInGame.initialize();
					break;
			}
			
		}
	}
}