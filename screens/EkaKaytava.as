package screens
{
	import flash.display.Loader;
	import flash.display.MovieClip;
	import flash.display.SimpleButton;
	import flash.display.Stage;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.net.URLRequest;
	
	import napit.KeittioNappi;
	import napit.UlkoOviNappi;
	import napit.VasenNuoliNappi;
	import napit.VessanOviNappi;
	
	public class EkaKaytava extends MovieClip
	{
		public var ekaKaytavaLoader:Loader;
		public var ekaKaytavaUrl:URLRequest;
		public var vasenNuoliNappi:VasenNuoliNappi;
		public var keittioNappi:KeittioNappi;
		public var ulkoOviNappi:UlkoOviNappi;
		public var vessanOviNappi:VessanOviNappi;
		private var mainClass:Engine;
		
		public function EkaKaytava(stage:Stage, passedClass:Engine)
		{
			ekaKaytavaLoader = new Loader();                     			
			ekaKaytavaUrl = new URLRequest("asdfghjklöä/ekaKaytava.swf");
			
			ekaKaytavaLoader.load(ekaKaytavaUrl);
			stage.addChild(ekaKaytavaLoader);
			
			mainClass = passedClass
			
			vasenNuoliNappi = new VasenNuoliNappi();
			vasenNuoliNappi.x = 65;
			vasenNuoliNappi.y = 434; 
			vasenNuoliNappi.width = vasenNuoliNappi.width /10;
			vasenNuoliNappi.height = vasenNuoliNappi.height /10;
			stage.addChild(vasenNuoliNappi);
			
			vasenNuoliNappi.addEventListener(MouseEvent.CLICK, VasenNuoliPainettu)
				
			keittioNappi = new KeittioNappi();
			keittioNappi.x = 486;
			keittioNappi.y = 186; 
			keittioNappi.width = keittioNappi.width /9;
			keittioNappi.height = keittioNappi.height /9;
			stage.addChild(keittioNappi);
			
			keittioNappi.addEventListener(MouseEvent.CLICK, KeittioPainettu)
				
			ulkoOviNappi = new UlkoOviNappi();
			ulkoOviNappi.x = 660;
			ulkoOviNappi.y = 158; 
			ulkoOviNappi.width = ulkoOviNappi.width /5.5;
			ulkoOviNappi.height = ulkoOviNappi.height /5.5;
			stage.addChild(ulkoOviNappi);
			
			ulkoOviNappi.addEventListener(MouseEvent.CLICK, UlkoOviPainettu)
				
			vessanOviNappi = new VessanOviNappi();
			vessanOviNappi.x = 64;
			vessanOviNappi.y = 158; 
			vessanOviNappi.width = vessanOviNappi.width /5.5;
			vessanOviNappi.height = vessanOviNappi.height /5.5;
			stage.addChild(vessanOviNappi);
			
			vessanOviNappi.addEventListener(MouseEvent.CLICK, VessanOviPainettu)
		}
		
		public function VasenNuoliPainettu(event:MouseEvent)
		{
			trace("Vasen nuoli painettu");
			ekaKaytavaLoader.unloadAndStop(true);
			stage.removeChild(vasenNuoliNappi);
			stage.removeChild(keittioNappi);
			stage.removeChild(ulkoOviNappi);
			stage.removeChild(vessanOviNappi);
			mainClass.naytaTokaKaytava()
		}
		
		public function KeittioPainettu(event:MouseEvent)
		{
			trace("Keittiö painettu");
			ekaKaytavaLoader.unloadAndStop(true);
			stage.removeChild(vasenNuoliNappi);
			stage.removeChild(keittioNappi);
			stage.removeChild(ulkoOviNappi);
			stage.removeChild(vessanOviNappi);
			mainClass.naytaKeittio()
		}
		
		public function UlkoOviPainettu(event:MouseEvent)
		{
			trace("Ulko-ovi painettu");
		}
		
		public function VessanOviPainettu(event:MouseEvent)
		{
			trace("Vessan ovi painettu");
			ekaKaytavaLoader.unloadAndStop(true);
			stage.removeChild(vasenNuoliNappi);
			stage.removeChild(keittioNappi);
			stage.removeChild(ulkoOviNappi);
			stage.removeChild(vessanOviNappi);
			mainClass.naytaKylpyHuone()
		}
	}
}