package napit
{
	import flash.display.DisplayObject;
	import flash.display.SimpleButton;
	
	public class VasenNuoliNappi extends SimpleButton
	{
		public function VasenNuoliNappi(upState:DisplayObject=null, overState:DisplayObject=null, downState:DisplayObject=null, hitTestState:DisplayObject=null)
		{
			super(upState, overState, downState, hitTestState);
		}
	}
}