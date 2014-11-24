
package screens
{
	import flash.display.Loader;
	import flash.display.MovieClip;
	import flash.display.Stage;
	import flash.events.Event;
	import flash.net.URLRequest;
	
	public class Herays extends MovieClip
	{
		public var heraysLoader:Loader;
		public var heraysUrl:URLRequest
		
		public function Herays(stage:Stage)
		{
			heraysLoader = new Loader();                     			
			heraysUrl = new URLRequest("asdfghjklöä/herays.swf");
			heraysLoader.load(heraysUrl);
			stage.addChild(heraysLoader);
		}
	}
}