package screens
{
	import flash.display.Loader;
	import flash.display.MovieClip;
	import flash.display.Stage;
	import flash.events.MouseEvent;
	import flash.net.URLLoader;
	import flash.net.URLRequest;
	
	import napit.AloitaHpNappi;
	import pelit.HammaspesuPeli;
	
	public class HammaspesuPeliOhjeet extends MovieClip
	{
		public var hpOhjeetLoader:Loader;
		public var hpOhjeetUrl:URLRequest;
		public var aloitaHpNappi:AloitaHpNappi;
		public var pelaaHpLoader:Loader;
		public var pelaaHpUrl:URLRequest;
		
		private var mainClass:Engine;
		
		public function HammaspesuPeliOhjeet(stage:Stage, passedClass:Engine)
		{
			hpOhjeetLoader = new Loader();
			hpOhjeetUrl = new URLRequest("asdfghjklöä/hammaspesuohjeet.swf");
			
			hpOhjeetLoader.load(hpOhjeetUrl);
			stage.addChild(hpOhjeetLoader);
			
			mainClass = passedClass;
			
			aloitaHpNappi = new AloitaHpNappi();
			aloitaHpNappi.x = 327.5;
			aloitaHpNappi.y = 440;
			aloitaHpNappi.width = aloitaHpNappi.width / 2;
			aloitaHpNappi.height = aloitaHpNappi.height / 2;
			stage.addChild(aloitaHpNappi);
			
			aloitaHpNappi.addEventListener(MouseEvent.CLICK, AloitaHpPainettu)
			
		}
		
		public function AloitaHpPainettu(event:MouseEvent)
		{
			trace("Aloita HpPeli");
			hpOhjeetLoader.unloadAndStop(true);
			stage.removeChild(aloitaHpNappi);
			mainClass.naytaHammaspesuPeli()
		}
	}
}