package;

import flixel.FlxG;
import flixel.FlxState;
import flixel.text.FlxText;
import source.Background;
import source.DialogBox;
import source.GameMenu;
import source.NPC;

class PlayState extends FlxState
{
	private var background:Background;
	private var dialogBox:DialogBox;
	private var menu:GameMenu;
	private var npc:NPC;
	
	override public function create():Void
	{
		background = new Background(0, 0);
		add(background);
		dialogBox = new DialogBox(0, Std.int(FlxG.height * 0.8));
		add(dialogBox);
		menu = new GameMenu(Std.int(FlxG.width * 0.8), 0);
		npc = new NPC(Std.int(FlxG.width * 0.3), Std.int(FlxG.width * 0.3));
		add(npc);
		add(menu);
		
		super.create();
	}

	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);
	}
}
