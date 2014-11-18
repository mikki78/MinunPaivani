package screens
{
	import flash.display.Loader;
	import flash.display.MovieClip;
	import flash.display.SimpleButton;
	import flash.display.Stage;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.net.URLRequest;
	import napit.AloitaNappi;
	
	public class Aloitus extends MovieClip
	{
		public var mainClass:Engine;
		public var aloitaNappi:AloitaNappi;
		
		public function Aloitus(stage:Stage, passedClass:Engine)
		{
			super();
			var myLoader:Loader = new Loader();                     			
			var url:URLRequest = new URLRequest("asdfghjklöä/alkuanimaatio.swf");
			myLoader.load(url);  
			stage.addChild(myLoader);
			
			mainClass = passedClass
			aloitaNappi = new AloitaNappi();
			aloitaNappi.x = stage.stageHeight/2;
			aloitaNappi.y = stage.stageWidth/2; 
			aloitaNappi.width = 220; 
			aloitaNappi.height =20;
			stage.addChild(aloitaNappi);
			
			aloitaNappi.addEventListener(MouseEvent.CLICK, AloitaPainettu)
		}
		public function AloitaPainettu(event:MouseEvent)
		{
			mainClass.naytaHerays()
		}
	}
}
		