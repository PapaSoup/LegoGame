package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.input.mouse.FlxMouseEventManager;
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
		dialogBox = new DialogBox();
		add(dialogBox);
		menu = new GameMenu(Std.int(FlxG.width * 0.8), 0);
		add(menu);
		npc = new NPC(Std.int(FlxG.width * 0.3), Std.int(FlxG.width * 0.3));
		add(npc);
		
		//setup mouseEvents
		FlxMouseEventManager.add(npc, onNpcMouseDown, onNpcMouseUp, onNpcMouseOver, onNpcMouseOut); 
		
		super.create();
	}

	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);
	}
	
	function onNpcMouseDown(npc:NPC)
	{
		dialogBox.setDialog("Hello Adventurer!");
	}
	
	function onNpcMouseUp(npc:NPC) {}
	function onNpcMouseOver(npc:NPC) {}
	function onNpcMouseOut(npc:NPC) {}
}
