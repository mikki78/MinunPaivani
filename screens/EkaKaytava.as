package screens
{
	import flash.display.Loader;
	import flash.display.MovieClip;
	import flash.display.Stage;
	import flash.events.Event;
	import flash.net.URLRequest;
	import flash.display.SimpleButton;
	import flash.events.MouseEvent;
	
	import napit.VasenNuoliNappi;
	
	public class EkaKaytava extends MovieClip
	{
		public var ekaKaytavaLoader:Loader;
		public var ekaKaytavaUrl:URLRequest;
		public var vasenNuoliNappi:VasenNuoliNappi;
		private var mainClass:Engine;
		
		public function EkaKaytava(stage:Stage, passedClass:Engine)
		{
			ekaKaytavaLoader = new Loader();                     			
			ekaKaytavaUrl = new URLRequest("asdfghjklöä/ekaKaytava.swf");
			
			ekaKaytavaLoader.load(ekaKaytavaUrl);
			stage.addChild(ekaKaytavaLoader);
			
			mainClass = passedClass
			vasenNuoliNappi = new VasenNuoliNappi();
			vasenNuoliNappi.x = 65;
			vasenNuoliNappi.y = 434; 
			vasenNuoliNappi.width = vasenNuoliNappi.width /10;
			vasenNuoliNappi.height = vasenNuoliNappi.height /10;
			stage.addChild(vasenNuoliNappi);
			
			vasenNuoliNappi.addEventListener(MouseEvent.CLICK, VasenNuoliPainettu)
		}
		
		public function VasenNuoliPainettu(event:MouseEvent)
		{
			trace("Vasen nuoli painettu");
			ekaKaytavaLoader.unloadAndStop(true);
			mainClass.naytaTokaKaytava()
		}
	}
}