/// @description controlled step event
// You can write your code in this editor
//repeat (150)
repeat (250)
{
	var _voidline = instance_create_depth(random_range(8,room_width-8),random_range(8,room_height-8),50,obj_voidline)
	_voidline.direction = random_range(0,360)
	_voidline.length = random_range(160,320)
	_voidline.image_alpha = 0.25
}







