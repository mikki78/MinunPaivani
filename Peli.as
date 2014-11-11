package
{
	import flash.display.Sprite;
	
	import screens.Aloitus;
	import screens.Herays;
	
	public class Peli extends Sprite
	{
		public var aloitus_screen:Aloitus;
		public var herays_screen:Herays;
		
		public function Peli()
		{
			aloitus();
		}
		
		private function aloitus():void
		{
			aloitus_screen = new Aloitus;
			if (herays_screen)
			{
				removeChild(aloitus_screen);
				aloitus_screen = null;
				herays();
			}
			addChild(aloitus_screen);
		}
		
		public function herays()
		{
			herays_screen = new Herays;
			removeChild(aloitus_screen);
			aloitus_screen = null;
			addChild(herays_screen);	
		}
	}
}