package source;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.group.FlxGroup.FlxTypedGroup;
import flixel.system.FlxAssets;
import flixel.system.FlxAssets.FlxGraphicAsset;
import flixel.text.FlxText;
import flixel.util.FlxColor;

/**
 * ...
 * @author ...
 */
class DialogBox extends FlxTypedGroup<FlxSprite>
{
	private var dialog:FlxText;
	private var background:FlxSprite;

	public function new() 
	{
		super();
		background = new FlxSprite().makeGraphic(Std.int(FlxG.width * 0.8), Std.int(FlxG.height * 0.2), FlxColor.LIME);
		background.setPosition(0, Std.int(FlxG.height * 0.8));
		add(background);
		dialog = new FlxText(Std.int(FlxG.width * 0.02), Std.int(FlxG.height * 0.82), Std.int(FlxG.width*0.7), "<Empty>");
		dialog.setFormat(FlxAssets.FONT_DEFAULT, Std.int(FlxG.width * 0.03), FlxColor.BLACK);
		add(dialog);
	}
	
	public function setDialog(msg:String)
	{
		dialog.text = msg; 
	}
}