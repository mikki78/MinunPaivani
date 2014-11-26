package napit
{
	import flash.display.DisplayObject;
	import flash.display.SimpleButton;
	
	public class KeittioNappi extends SimpleButton
	{
		public function KeittioNappi(upState:DisplayObject=null, overState:DisplayObject=null, downState:DisplayObject=null, hitTestState:DisplayObject=null)
		{
			super(upState, overState, downState, hitTestState);
		}
	}
}