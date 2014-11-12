package screens
{
	import flash.display.MovieClip;
	import flash.display.SimpleButton;
	import flash.events.MouseEvent;
	
	import screens.Herays;
	
	public class Aloitus extends MovieClip
	{
		public var main_class:Peli;
		
		public function Aloitus(passed_class:Peli)
		{
			main_class = passed_class;
			aloita.addEventListener(MouseEvent.CLICK, on_aloita_button_clicked);
		}
		
		public function on_aloita_button_clicked(event:MouseEvent)
		{
			main_class.herays();
		}
	}
}