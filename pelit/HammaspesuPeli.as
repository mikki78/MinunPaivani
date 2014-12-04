package pelit
{
	import flash.display.Bitmap;
	import flash.display.Loader;
	import flash.display.MovieClip;
	import flash.events.*;
	import flash.geom.*;
	import flash.net.URLRequest;
	import flash.text.*;
	import flash.ui.*;
	import flash.utils.*;
	
	import muut.HP;
	import muut.Harja;
	
	public class HammaspesuPeli extends MovieClip
	{
		public var hiirenKursori:MovieClip;
		public var suuLoader:Loader;
		public var suuUrl:URLRequest;
		public var hp:HP;
		
		public function HammaspesuPeli()
		{
			suuLoader = new Loader();
			suuUrl = new URLRequest("asdfghjklöä/suu.png");
			
			suuLoader.load(suuUrl);
			addChild(suuLoader);
			
			Mouse.hide();
			hiirenKursori = new Harja();
			hiirenKursori.mouseEnabled = false;
			
			addChild(hiirenKursori);
			hiirenKursori.addEventListener(Event.ENTER_FRAME, SeuraaHiirta);
			
		}
		
		public function SeuraaHiirta(event:Event)
		{
			hiirenKursori.x = mouseX;
			hiirenKursori.y = mouseY;
			Aloita()
		}
		
		public function Aloita()
		{
			hp = new HP();
			hp.x = 200;
			hp.y = 200;
			hp.width = hp.width / 2;
			hp.height = hp.height / 2;
			trace("joop");
			addChild(hp);
		}
	}
}