package source;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.system.FlxAssets.FlxGraphicAsset;
import flixel.util.FlxColor;

/**
 * ...
 * @author ...
 */
class NPC extends FlxSprite 
{

	public function new(?X:Float = 0, ?Y:Float = 0) 
	{
		super(X, Y);
		makeGraphic(Std.int(FlxG.width*0.2), Std.int(FlxG.height*0.3), FlxColor.YELLOW);
	}
	
	
}