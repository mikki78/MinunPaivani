package animaatiot
{
	import flash.display.Loader;
	import flash.display.MovieClip;
	import flash.display.Stage;
	import flash.events.TimerEvent;
	import flash.net.URLRequest;
	import flash.utils.Timer;
	
	public class SiivousKaappi extends MovieClip
	{
		public var siivousKaappiLoader:Loader;
		public var siivousKaappiUrl:URLRequest;
		public var siivousKaappiTimer:Timer;
		
		private var mainClass:Engine;
		
		public function SiivousKaappi(stage:Stage, passedClass:Engine)
		{
			mainClass = passedClass;
			
			siivousKaappiLoader = new Loader();
			siivousKaappiUrl = new URLRequest("asdfghjklöä/siivouskaappi.swf");
			siivousKaappiTimer = new Timer(5900, 1);
			
			siivousKaappiLoader.load(siivousKaappiUrl);
			stage.addChild(siivousKaappiLoader);
			
			siivousKaappiTimer.addEventListener("timer", timerHandlerSiivousKaappi);
			trace("Timestart");
			siivousKaappiTimer.start();
		}
		
		public function timerHandlerSiivousKaappi(event:TimerEvent)
		{
			trace("Ajastin");
			siivousKaappiLoader.unloadAndStop(true);
			siivousKaappiTimer.removeEventListener("timer", timerHandlerSiivousKaappi);
			mainClass.naytaTokaKaytava()
		}
	}
}