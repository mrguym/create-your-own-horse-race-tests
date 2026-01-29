/// @description Insert description here
// You can write your code in this editor
event_inherited();

var _cancreatenewthirdeye = false
if !instance_exists(obj_thirdeye)
{
	_cancreatenewthirdeye = true
}
else
{
	_cancreatenewthirdeye = true
	for (var _i = 0; _i < instance_number(obj_thirdeye); _i++)
	{
		var _currentthirdeye = instance_find(obj_thirdeye,_i)
		if _currentthirdeye.owner == id
			_cancreatenewthirdeye = false
	}
}
if _cancreatenewthirdeye == true
{
	var _horseinsight = collision_line(x,y,x+lengthdir_x(room_width+room_height,targetangle),y+lengthdir_y(room_width+room_height,targetangle),obj_horseparent,true,true)
	if _horseinsight != noone && _horseinsight.object_index != obj_horse_mutant3
	{
		if point_distance(x,y,_horseinsight.x,_horseinsight.y) >= 160
		{
			var _thirdeye = instance_create_depth(x,y,-1,obj_thirdeye)
			_thirdeye.target = _horseinsight
			_thirdeye.owner = id
		}
	}
}


