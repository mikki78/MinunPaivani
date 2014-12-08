package pelit
{
	import flash.display.Bitmap;
	import flash.display.Loader;
	import flash.display.MovieClip;
	import flash.display.Stage;
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
		public var hpTimer:Timer;
		
		public function HammaspesuPeli(stageRef:Stage)
		{
			suuLoader = new Loader();
			suuUrl = new URLRequest("asdfghjklöä/suu.png");
			
			suuLoader.load(suuUrl);
			addChild(suuLoader);
			
			Mouse.hide();
			hiirenKursori = new Harja();
			hiirenKursori.mouseEnabled = false;
			
			hp = new HP();
			hp.x = Math.random() * stageRef.stageWidth;
			hp.y = Math.random() * stageRef.stageHeight;
			hp.width = hp.width / 2;
			hp.height = hp.height / 2;
			trace("Peikko");
			addChild(hp);
			
			addChild(hiirenKursori);
			hiirenKursori.addEventListener(Event.ENTER_FRAME, SeuraaHiirta);
			
			hp.addEventListener(MouseEvent.CLICK, hpPainettu);
			
			hpTimer = new Timer(3000, 1);
			hpTimer.addEventListener("timer", hpTimerHandler);
			trace("Timerstart");
			hpTimer.start();
		}
		
		public function SeuraaHiirta(event:Event)
		{
			hiirenKursori.x = mouseX;
			hiirenKursori.y = mouseY;
		}
		
		public function hpTimerHandler(event:TimerEvent):void
		{
			trace("Peikko katoaa");
			hpTimer.removeEventListener("timer", hpTimerHandler);
			removeChild(hp);
		}
	
		public function hpPainettu(event:MouseEvent)
		{
			trace("Peikko klikattu");
			removeChild(hp);
			hp.removeEventListener(MouseEvent.CLICK, hpPainettu);
		}
	}
}