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
		private var mainClass:Engine;
		public var aloitaNappi:AloitaNappi;
		public var aloitusLoader:Loader;
		public var aloitusUrl:URLRequest;
		
		public function Aloitus(stage:Stage, passedClass:Engine)
		{
			super();
			aloitusLoader = new Loader();                     			
			aloitusUrl = new URLRequest("asdfghjklöä/alkuanimaatio.swf");
			aloitusLoader.load(aloitusUrl);  
			stage.addChild(aloitusLoader);
			
			mainClass = passedClass
			aloitaNappi = new AloitaNappi();
			aloitaNappi.x = 327.5;
			aloitaNappi.y = 440; 
			aloitaNappi.width = aloitaNappi.width /2;
			aloitaNappi.height = aloitaNappi.height /2;
			stage.addChild(aloitaNappi);
			
			aloitaNappi.addEventListener(MouseEvent.CLICK, AloitaPainettu)
		}
		public function AloitaPainettu(event:MouseEvent)
		{
			trace("Aloitus");
			aloitusLoader.unloadAndStop(true);
			mainClass.naytaHerays()
		}
	}
}		