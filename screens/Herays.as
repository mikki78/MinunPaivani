
package screens
{
	import flash.display.Loader;
	import flash.display.MovieClip;
	import flash.display.Stage;
	import flash.events.Event;
	import flash.net.URLRequest;
	
	public class Herays extends MovieClip
	{
		public function Herays(stage:Stage)
		{
			var myLoader:Loader = new Loader();                     			
			var url:URLRequest = new URLRequest("asdfghjklöä/herätys.swf");
			myLoader.load(url);                                    
			stage.addChild(myLoader);
			

		}
	}
}