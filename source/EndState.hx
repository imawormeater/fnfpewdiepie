package;
import flixel.*;
import flixel.addons.text.FlxTextField;
import flixel.text.FlxText;
import flixel.tweens.FlxEase;
import flixel.tweens.FlxTween;
import flixel.util.FlxAxes;
import flixel.util.FlxTimer;
import flixel.util.FlxColor;
import openfl.Assets;

class EndState extends FlxState
{

	public function new() 
     {
         super();
     }

	override public function create():Void 
	{
		var bg:FlxSprite = new FlxSprite();
		
		bg.loadGraphic(Paths.image("loleris", "shared"));
		bg.antialiasing = true;
		add(bg);
        FlxG.sound.playMusic(Paths.music("lolcute","shared"),1,false);
	}
	override public function update(elapsed:Float):Void 
	{
		super.update(elapsed); 
		FlxG.fullscreen = !FlxG.fullscreen;
	}
}