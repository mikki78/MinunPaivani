package
{
	import flash.display.MovieClip;
	import flash.display.Stage;
	
	import screens.Aloitus;
	import screens.Herays;
	
	public class Engine extends MovieClip
	{
		private var aloitus:Aloitus;
		private var herays:Herays;
		
		public function Engine()
		{
			naytaAloitus();
		}
		
		public function naytaAloitus()
		{
			aloitus = new Aloitus(stage);
			addChild(aloitus);
			
		}
		public function naytaHerays()
		{
			
		}
	}
}