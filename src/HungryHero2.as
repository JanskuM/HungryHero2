package
{
	import flash.display.Sprite;
	
	import net.hires.debug.Stats;
	
	import starling.core.Starling;
	
	[SWF(frameRate = 60, width = 800, height = 600, backgroundColor = 0x333333)]
	public class HungryHero2 extends Sprite
	{
		private var stats:Stats;
		private var myStarling:Starling;
		
		public function HungryHero2()
		{
			stats = new Stats();
			addChild(stats);
			
			myStarling = new Starling(Game, stage);
			myStarling.antiAliasing = 1;
			myStarling.start();
		}
	}
}