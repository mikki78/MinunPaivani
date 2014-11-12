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
		
		private function aloitus()
		{
			aloitus_screen = new Aloitus(this);
			if (herays_screen)
			{
				removeChild(herays_screen);
				herays_screen = null;
			}
			addChild(aloitus_screen);
		}
		
		public function herays()
		{
			herays_screen = new Herays;
			if(aloitus_screen){
				trace("in")
				removeChild(aloitus_screen);
				aloitus_screen = null;
			}
			addChild(herays_screen)	
		}
	}
}