package
{
	import animaatiot.Keittio;
	import animaatiot.KylpyHuone;
	import animaatiot.PyykkiHuone;
	import animaatiot.SiivousKaappi;
	
	import flash.display.MovieClip;
	import flash.display.Stage;
	
	import napit.AloitaNappi;
	
	import pelit.HammaspesuPeli;
	
	import screens.Aloitus;
	import screens.EkaKaytava;
	import screens.HammaspesuPeliOhjeet;
	import screens.Herays;
	import screens.TokaKaytava;
	
	public class Engine extends MovieClip
	{
		public var aloitus:Aloitus;
		public var herays:Herays;
		public var ekaKaytava:EkaKaytava;
		public var tokaKaytava:TokaKaytava;
		public var keittio:Keittio;
		public var pyykkiHuone:PyykkiHuone;
		public var hammaspesuPeliOhjeet:HammaspesuPeliOhjeet;
		public var hammaspesuPeli:HammaspesuPeli;
		public var kylpyHuone:KylpyHuone;
		public var siivousKaappi:SiivousKaappi;
		
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
		
		public function naytaKeittio()
		{
			keittio = new Keittio(stage, this);
			if(ekaKaytava)
			{
				trace("Keittiö");
				removeChild(ekaKaytava);
				ekaKaytava = null;
			}
			addChild(keittio);
		}
		
		public function naytaPyykkiHuone()
		{
			pyykkiHuone = new PyykkiHuone(stage, this);
			if(tokaKaytava)
			{
				trace("Pyykkihuone");
				removeChild(tokaKaytava);
				tokaKaytava = null;
			}
			addChild(pyykkiHuone);
		}
		
		public function naytaHammaspesuPeliOhjeet()
		{
			hammaspesuPeliOhjeet = new HammaspesuPeliOhjeet(stage, this);
			if (ekaKaytava)
			{
				trace("HammaspesuPelin ohjeet")
				removeChild(ekaKaytava);
				ekaKaytava = null;
			}
			addChild(hammaspesuPeliOhjeet);
		}
		
		public function naytaHammaspesuPeli()
		{
			hammaspesuPeli = new HammaspesuPeli(stage);
			if (hammaspesuPeliOhjeet)
			{
				trace("HammaspesuPeli");
				removeChild(hammaspesuPeliOhjeet);
				hammaspesuPeliOhjeet = null;
			}
			addChild(hammaspesuPeli);
		}
		
		public function naytaKylpyHuone()
		{
			kylpyHuone = new KylpyHuone(stage, this);
			if (ekaKaytava)
			{
				trace("Kylpyhuone");
				removeChild(ekaKaytava);
				ekaKaytava = null;
			}
			addChild(kylpyHuone);
		}
		
		public function naytaSiivousKaappi()
		{
			siivousKaappi = new SiivousKaappi(stage, this);
			if ( tokaKaytava)
			{
				trace("Siivouskaappi");
				removeChild(tokaKaytava);
				tokaKaytava = null;
			}
			addChild(siivousKaappi);
		}
	}
}