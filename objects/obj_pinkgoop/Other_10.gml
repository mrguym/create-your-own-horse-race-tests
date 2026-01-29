/// @description controlled step event
// You can write your code in this editor
if sprite_index == spr_mutant_comedicresolution_goopinto && (floor(image_index) == (image_number - 1))
{
	sprite_index = spr_mutant_comedicresolution_goop
}
if place_meeting(x,y,obj_horseparent)
{
	var _collidinghorse = instance_place(x,y,obj_horseparent)
	if _collidinghorse != owner
	{
		var _alreadyhasgoopstatus = false
		if instance_exists(obj_goopstatus)
		{
			for (var _i = 0; _i < instance_number(obj_goopstatus); _i++)
			{
				var _currentgoop = instance_find(obj_goopstatus,_i)
				if _currentgoop.owner == id
				{
					_alreadyhasgoopstatus = true
				}
			}
		}
		if _alreadyhasgoopstatus == false
		{
			var _newgoopstatus = instance_create_depth(_collidinghorse.x,_collidinghorse.y,-1,obj_goopstatus)
			var _speedtoremove = 0.5
			_newgoopstatus.owner = _collidinghorse
			if _collidinghorse.defaultmovespeed < _speedtoremove
			{
				_newgoopstatus.speedtorestore = _collidinghorse.defaultmovespeed
				_collidinghorse.defaultmovespeed = 0
			}
			else
			{
				_newgoopstatus.speedtorestore = _speedtoremove
				_collidinghorse.defaultmovespeed -= _speedtoremove
			}
		}
	}
}

if owner == noone
	instance_destroy()





