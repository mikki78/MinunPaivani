package screens
{
	import flash.display.Loader;
	import flash.display.MovieClip;
	import flash.display.Stage;
	import flash.events.Event;
	import flash.net.URLRequest;
	
	public class Aloitus extends MovieClip
	{
		public function Aloitus(stage:Stage)
		{
			super();
			var myLoader:Loader = new Loader();                     			
			var url:URLRequest = new URLRequest("asdfghjklöä/alkuanimaatio.swf");
			myLoader.load(url);                                    
			stage.addChild(myLoader);
		}
	}
}