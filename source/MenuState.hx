package;

import flixel.FlxG;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.ui.FlxButton;

class MenuState extends FlxState
{
	private var btnPlay:FlxButton;
	
	override public function create():Void
	{
		btnPlay = new FlxButton(0, 0, "Play", clickPlay);
		btnPlay.screenCenter();
		add(btnPlay);
		super.create();
	}

	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);
	}
	
	private function clickPlay():Void
	{
		FlxG.switchState(new PlayState());
	}
}
