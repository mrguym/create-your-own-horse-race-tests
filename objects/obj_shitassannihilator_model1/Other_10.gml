/// @description controlled step event
// You can write your code in this editor
if !audio_is_playing(sfx_laserloop)
	audio_play_sound(sfx_laserloop,10,false)
if manualcontrol == false
{
	image_angle = func_fixangle(image_angle+turnspeed)
}
else
{
	var _targetangle = point_direction(x,y,mouse_x,mouse_y)
	if image_angle > _targetangle+180
	{
		image_angle -= 360
	}
	else if image_angle <= _targetangle-180
	{
		image_angle += 360
	}
	image_angle = lerp(image_angle,_targetangle,0.1)
}

var _beamdistance = 64
var _foundcollision = false
while _foundcollision == false
{
	image_xscale = _beamdistance/96
	if place_meeting(x,y,obj_mapparent)
	{
		_foundcollision = true
	}
	else if _beamdistance > room_width+room_height
	{
		_foundcollision = true
	}
	else
	{
		_beamdistance += 8
	}
}
if place_meeting(x,y,obj_horseparent)
{
	var _collidingobject = instance_place(x,y,obj_horseparent)
	var _deatheffect = instance_create_depth(_collidingobject.x,_collidingobject.y,0,obj_horsedeatheffect)
	_deatheffect.skullcolor = _collidingobject.bodycolor
	var _deathsound = audio_play_sound(sfx_failure,10,false)
	audio_sound_pitch(_deathsound,0.75)
	instance_destroy(_collidingobject)
}
