package screens
{
	import flash.display.Loader;
	import flash.display.MovieClip;
	import flash.display.Stage;
	import flash.events.Event;
	import flash.net.URLRequest;
	
	public class EkaKaytava extends MovieClip
	{
		public function EkaKaytava()
		{
			var myLoader:Loader = new Loader();                     			
			var url:URLRequest = new URLRequest("asdfghjklöä/ekaKaytava.swf");
			myLoader.load(url);                                    
			stage.addChild(myLoader);
		}
	}
}