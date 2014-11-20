package
{
	import flash.display.MovieClip;
	import flash.display.Stage;
	
	import napit.AloitaNappi;
	
	import screens.Aloitus;
	import screens.EkaKaytava;
	import screens.Herays;
	
	public class Engine extends MovieClip
	{
		public var aloitus:Aloitus;
		public var herays:Herays;
		public var ekaKaytava:EkaKaytava;
		
		public function Engine()
		{
			naytaAloitus();
		}
		
		public function naytaAloitus()
		{
			aloitus = new Aloitus(stage, this);			
			if(herays) 
			{
				trace("Aloitus")
				removeChild(herays);
				herays = null;
			}
			addChild(aloitus);
			
		}
		public function naytaHerays()
		{
			herays = new Herays(stage);
			if(aloitus) 
			{
				trace("Heräys")
				removeChild(aloitus);
				aloitus = null;
			}
			addChild(herays);
			naytaKaytava()
			
		}
			public function naytaKaytava()
		{
			ekaKaytava = new EkaKaytava();
		}
	}
}