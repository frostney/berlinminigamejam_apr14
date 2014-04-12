package ;
import elyxis.GameObject;
import elyxis.Scene;
import elyxis.Image;
import flash.display.Sprite;
import flash.geom.Rectangle;
import flash.text.TextField;
import openfl.Assets;
import flash.Lib;

/**
 * ...
 * @author ...
 */
class MainScene extends Scene
{

	public function new() 
	{
		super();
		
		var background = new Image();
		background.bitmapData = Assets.getBitmapData('assets/background.png');
		
		var table = new Image();
		table.bitmapData = Assets.getBitmapData('assets/table.png');
		table.x = 24;
		table.y = Lib.current.stage.stageHeight - table.height - 60;
		
		var plant = new Image();
		plant.bitmapData = Assets.getBitmapData('assets/plant.png');
		plant.x = table.x;
		plant.y = table.y - plant.height;
		
		var elephant = new Image();
		elephant.bitmapData = Assets.getBitmapData('assets/elephant.png');
		elephant.x = 200;
		elephant.y = table.y - elephant.height / 2 - 25;
		
		var textfield = new TextField();
		textfield.text = 'Try to get rid of the elephant in the room';
		textfield.width = Lib.current.stage.stageWidth;
		
		var inventory = new Sprite();
		
		inventory.graphics.beginFill(0xbb0000, 0.6);
		
		for (i in 0...2) {
			inventory.graphics.drawRoundRect(50 + i * 55, 50, 50, 50, 6, 6);
		}
		
		addGameObject(background);
		addGameObject(table);
		addGameObject(plant);
		addGameObject(elephant);
		
		addChild(textfield);
		addChild(inventory);
		
		
		//image.x = (stage.stageWidth - image.width) / 2;
		//image.y = (stage.stageHeight - image.height) / 2;
	}
	
}