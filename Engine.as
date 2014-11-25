package
{
	import flash.display.MovieClip;
	import flash.display.Stage;
	
	import napit.AloitaNappi;
	
	import screens.Aloitus;
	import screens.EkaKaytava;
	import screens.Herays;
	import screens.TokaKaytava;
	
	public class Engine extends MovieClip
	{
		public var aloitus:Aloitus;
		public var herays:Herays;
		public var ekaKaytava:EkaKaytava;
		public var tokaKaytava:TokaKaytava;
		
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
			herays = new Herays(stage, this);
			if(aloitus) 
			{
				trace("Heräys")
				removeChild(aloitus);
				aloitus = null;
			}
			addChild(herays);
			
		}
		public function naytaEkaKaytava()
		{
			ekaKaytava = new EkaKaytava(stage, this);
			if (herays)
			{
				trace("Eka käytävä");
				removeChild(herays);
				herays = null;
			}
			addChild(ekaKaytava);
		}
		
		public function naytaTokaKaytava()
		{
			tokaKaytava = new TokaKaytava(stage, this);
			if (ekaKaytava)
			{
				trace("Toka käytävä");
				removeChild(ekaKaytava);
				ekaKaytava = null;
			}
			addChild(tokaKaytava);
		}
	}
}