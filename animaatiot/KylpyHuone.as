package animaatiot
{
	import flash.display.Loader;
	import flash.display.MovieClip;
	import flash.display.Stage;
	import flash.events.TimerEvent;
	import flash.net.URLRequest;
	import flash.utils.Timer;
	
	public class KylpyHuone extends MovieClip
	{
		public var kylpyHuoneLoader:Loader;
		public var kylpyHuoneUrl:URLRequest;
		public var kylpyHuoneTimer:Timer;
		
		private var mainClass:Engine;
		
		public function KylpyHuone(stage:Stage, passedClass:Engine)
		{
			mainClass = passedClass;
			
			kylpyHuoneLoader = new Loader();
			kylpyHuoneUrl = new URLRequest("asdfghjklöä/kylpyhuone.swf");
			kylpyHuoneTimer = new Timer(12500, 1);
			
			kylpyHuoneLoader.load(kylpyHuoneUrl);
			stage.addChild(kylpyHuoneLoader);
			
			kylpyHuoneTimer.addEventListener("timer", timerHandlerKylpyhuone);
			trace("Timestart");
			kylpyHuoneTimer.start();
		}
		
		public function timerHandlerKylpyhuone(event:TimerEvent)
		{
			trace("Ajastin");
			kylpyHuoneLoader.unloadAndStop(true);
			kylpyHuoneTimer.removeEventListener("timer", timerHandlerKylpyhuone);
			mainClass.naytaHammaspesuPeliOhjeet()
		}
	}
}