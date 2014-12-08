package animaatiot
{
	import flash.display.Loader;
	import flash.display.MovieClip;
	import flash.display.Stage;
	import flash.events.TimerEvent;
	import flash.net.URLRequest;
	import flash.utils.Timer;
	
	public class SiivousHuone extends MovieClip
	{
		public var siivousHuoneLoader:Loader;
		public var siivousHuoneUrl:URLRequest;
		private var mainClass:Engine;
		public var siivousHuoneTimer:Timer;
		
		public function SiivousHuone(stage:Stage, passedClass:Engine)
		{
			mainClass = passedClass;
			
			siivousHuoneLoader = new Loader();
			siivousHuoneUrl = new URLRequest("asdfghjklöä/siivous.swf");
			siivousHuoneTimer = new Timer(6000, 1);
			
			siivousHuoneLoader.load(siivousHuoneUrl);
			stage.addChild(siivousHuoneLoader);
			
			siivousHuoneTimer.addEventListener("timer", timerHandlerSiivousHuone);
			trace("Timerstart");
			siivousHuoneTimer.start();
		}
		
		public function timerHandlerSiivousHuone(event:TimerEvent)
		{
			trace("Ajastin");
			siivousHuoneLoader.unloadAndStop(true);
			siivousHuoneTimer.removeEventListener("timer", timerHandlerSiivousHuone);
			mainClass.naytaTokaKaytava()
		}
	}
}