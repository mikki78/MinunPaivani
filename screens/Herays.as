package screens
{
	import flash.display.Loader;
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.display.Stage;
	import flash.events.Event;
	import flash.events.TimerEvent;
	import flash.net.URLRequest;
	import flash.utils.Timer;
	
	public class Herays extends MovieClip
	{
		public var heraysLoader:Loader;
		public var heraysUrl:URLRequest;
		private var mainClass:Engine;
		public var heraysTimer:Timer;
		
		public function Herays(stage:Stage, passedClass:Engine)
		{	
			mainClass = passedClass;
			heraysLoader = new Loader();                     			
			heraysUrl = new URLRequest("asdfghjklöä/herays.swf");
			heraysTimer = new Timer(12300, 1);
			
			heraysLoader.load(heraysUrl);
			stage.addChild(heraysLoader);
			heraysTimer.addEventListener("timer", timerHandler);
			trace("timerstart");
			heraysTimer.start();
		}
		
		public function timerHandler(event:TimerEvent):void
		{
			trace("Ajastin");
			heraysLoader.unloadAndStop(true);
			heraysTimer.removeEventListener("timer", timerHandler);
			trace("tässä");
			mainClass.naytaEkaKaytava()
		}
	}
}