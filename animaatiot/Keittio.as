package animaatiot
{
	import flash.display.Loader;
	import flash.display.MovieClip;
	import flash.display.Stage;
	import flash.events.TimerEvent;
	import flash.net.URLRequest;
	import flash.utils.Timer;
	
	public class Keittio extends MovieClip
	{
		public var keittioLoader:Loader;
		public var keittioUrl:URLRequest;
		private var mainClass:Engine;
		public var keittioTimer:Timer;
		
		public function Keittio(stage:Stage, passedClass:Engine)
		{
			mainClass = passedClass;
			
			keittioLoader = new Loader();
			keittioUrl = new URLRequest("asdfghjklöä/keittiokohtaus.swf");
			keittioTimer = new Timer(4000, 1);
			
			keittioLoader.load(keittioUrl);
			stage.addChild(keittioLoader);
			
			keittioTimer.addEventListener("timer", timerHandlerKeittio);
			trace("Timerstart");
			keittioTimer.start();
		}
		
		public function timerHandlerKeittio(event:TimerEvent)
		{
			trace("Ajastin");
			keittioLoader.unloadAndStop(true);
			keittioTimer.removeEventListener("timer", timerHandlerKeittio);
			mainClass.naytaEkaKaytava()
		}
	}
}