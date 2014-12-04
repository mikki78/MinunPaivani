package animaatiot
{
	import flash.display.Loader;
	import flash.display.MovieClip;
	import flash.display.Stage;
	import flash.events.TimerEvent;
	import flash.net.URLRequest;
	import flash.utils.Timer;
	
	public class PyykkiHuone extends MovieClip
	{
		public var pyykkiHuoneLoader:Loader;
		public var pyykkiHuoneUrl:URLRequest;
		public var pyykkiHuoneTimer:Timer;
		
		private var mainClass:Engine;
		
		public function PyykkiHuone(stage:Stage, passedClass:Engine)
		{
			mainClass = passedClass;
			
			pyykkiHuoneLoader = new Loader;
			pyykkiHuoneUrl = new URLRequest("asdfghjklöä/pesuhuonekohtaus.swf");
			pyykkiHuoneTimer = new Timer(4500, 1);
			
			pyykkiHuoneLoader.load(pyykkiHuoneUrl);
			stage.addChild(pyykkiHuoneLoader);
			
			pyykkiHuoneTimer.addEventListener("timer", timerHandlerPyykkiHuone);
			trace("Timerstart");
			pyykkiHuoneTimer.start();
		}
		
		public function timerHandlerPyykkiHuone(event:TimerEvent)
		{
			trace("Ajastin");
			pyykkiHuoneLoader.unloadAndStop(true);
			pyykkiHuoneTimer.removeEventListener("timer", timerHandlerPyykkiHuone);
			mainClass.naytaTokaKaytava()
		}
	}
}