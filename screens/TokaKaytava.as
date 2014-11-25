package screens
{
	import flash.display.Loader;
	import flash.display.MovieClip;
	import flash.display.SimpleButton;
	import flash.display.Stage;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.net.URLRequest;
	
	import napit.OikeaNuoliNappi;
	import napit.PyykkiNappi;
	
	public class TokaKaytava extends MovieClip
	{
		public var tokaKaytavaLoader:Loader;
		public var tokaKaytavaUrl:URLRequest;
		public var oikeaNuoliNappi:OikeaNuoliNappi;
		public var pyykkiNappi:PyykkiNappi;
		private var mainClass:Engine;
		
		public function TokaKaytava(stage:Stage, passedClass:Engine)
		{
			super();
			tokaKaytavaLoader = new Loader();
			tokaKaytavaUrl = new URLRequest("asdfghjklöä/tokaKaytava.swf");
			
			tokaKaytavaLoader.load(tokaKaytavaUrl);
			stage.addChild(tokaKaytavaLoader);
			
			mainClass = passedClass;
			
			oikeaNuoliNappi = new OikeaNuoliNappi();
			oikeaNuoliNappi.x = 575;
			oikeaNuoliNappi.y = 434; 
			oikeaNuoliNappi.width = oikeaNuoliNappi.width /10;
			oikeaNuoliNappi.height = oikeaNuoliNappi.height /10;
			stage.addChild(oikeaNuoliNappi);
			
			oikeaNuoliNappi.addEventListener(MouseEvent.CLICK, OikeaNuoliPainettu)
			
			pyykkiNappi = new PyykkiNappi();
			pyykkiNappi.x = 595;
			pyykkiNappi.y = 158; 
			pyykkiNappi.width = pyykkiNappi.width /5.5;
			pyykkiNappi.height = pyykkiNappi.height /5.5;
			stage.addChild(pyykkiNappi);
			
			pyykkiNappi.addEventListener(MouseEvent.CLICK, PyykkiNappiPainettu)
		}
		
		public function OikeaNuoliPainettu(event:MouseEvent)
		{
			trace("Oikea nuoli painettu");
			tokaKaytavaLoader.unloadAndStop(true);
			mainClass.naytaEkaKaytava()
		}
		
		public function PyykkiNappiPainettu(event:MouseEvent)
		{
			trace("Pyykki nappi painettu");
		}
	}
}