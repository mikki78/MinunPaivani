package screens
{
	import flash.display.Loader;
	import flash.display.MovieClip;
	import flash.display.Stage;
	import flash.events.Event;
	import flash.net.URLRequest;
	
	public class EkaKaytava extends MovieClip
	{
		public var ekaKaytavaLoader:Loader;
		public var ekaKaytavaUrl:URLRequest;
		
		public function EkaKaytava(stage:Stage, passedClass:Engine)
		{
			ekaKaytavaLoader = new Loader();                     			
			ekaKaytavaUrl = new URLRequest("asdfghjklöä/ekaKaytava.swf");
			
			ekaKaytavaLoader.load(ekaKaytavaUrl);
			stage.addChild(ekaKaytavaLoader);
		}
	}
}