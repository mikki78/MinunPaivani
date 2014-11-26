package napit
{
	import flash.display.DisplayObject;
	import flash.display.SimpleButton;
	
	public class SiivousNappi extends SimpleButton
	{
		public function SiivousNappi(upState:DisplayObject=null, overState:DisplayObject=null, downState:DisplayObject=null, hitTestState:DisplayObject=null)
		{
			super(upState, overState, downState, hitTestState);
		}
	}
}