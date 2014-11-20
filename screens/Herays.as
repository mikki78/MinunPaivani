
package screens
{
	import flash.display.Loader;
	import flash.display.MovieClip;
	import flash.display.Stage;
	import flash.events.Event;
	import flash.net.URLRequest;
	
	public class Herays extends MovieClip
	{
		var myLoader:Loader;
		var movieClip:MovieClip;
		
		public function Herays(stage:Stage)
		{
			var myLoader:Loader = new Loader();                     			
			var url:URLRequest = new URLRequest("asdfghjklöä/herays.swf");
			myLoader.load(url);
			stage.addChild(myLoader);
		}
		
		/*public function onFileLoaded(e:Event):void
		{
			var movieClip:MovieClip;
			movieClip = myLoader.content;
			addChild(movieClip);
			movieClip.play();
			addEventListener(Event.ENTER_FRAME, onEnter, true, 0, false);
		}
		
		public function onEnter(e:Event):void
		{
			if (movieClip.currentFrame == movieClip.totalFrames)
			{
				movieClip.stop();
				removeEventListener(Event.ENTER_FRAME, onEnter, true, 0, false);
			}
		}*/
	}
}