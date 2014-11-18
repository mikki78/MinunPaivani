package
{
	import flash.display.MovieClip;
	import flash.display.Stage;
	
	import screens.Aloitus;
	import screens.Herays;
	import napit.AloitaNappi;
	
	public class Engine extends MovieClip
	{
		public var aloitus:Aloitus;
		public var herays:Herays;
		
		public function Engine()
		{
			naytaAloitus();
		}
		
		public function naytaAloitus()
		{
			aloitus = new Aloitus(stage, this);			
			addChild(aloitus);
		
		}
		public function naytaHerays()
		{
			herays = new Herays(stage);
			if(aloitus) 
			{
				trace("in")
				removeChild(aloitus);
				aloitus = null;
			}
			addChild(herays);
		}
	}
}