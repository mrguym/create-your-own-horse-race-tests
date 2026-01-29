/// @description controlled step event, inheriting from horseparent
// You can write your code in this editor
event_inherited();


if keyboard_check_pressed(ord("1"))
{
	var _deatheffect = instance_create_depth(x,y,0,obj_horsedeatheffect)
	_deatheffect.sprite_index = sprite_index
	instance_destroy()
}
var _cancreatenewcrosshair = false
if !instance_exists(obj_crosshair)
{
	_cancreatenewcrosshair = true
}
else
{
	_cancreatenewcrosshair = true
	for (var _i = 0; _i < instance_number(obj_crosshair); _i++)
	{
		var _currentcrosshair = instance_find(obj_crosshair,_i)
		if _currentcrosshair.owner == id
			_cancreatenewcrosshair = false
	}
}
if _cancreatenewcrosshair == true && cankill == true
{
	var _closesthorse = noone
	var _closesthorsedistance = (room_width+room_height)*2
	for (var _i = 0; _i < instance_number(obj_horseparent); _i++)
	{
		var _currenthorse = instance_find(obj_horseparent,_i)
		var _currenthorsedistance = point_distance(x,y,_currenthorse.x,_currenthorse.y)
	
		if _currenthorsedistance < _closesthorsedistance
		{
			if _currenthorse != id && _currenthorse.object_index != obj_horse_cyan
			{
				_closesthorse = _currenthorse
				_closesthorsedistance = _currenthorsedistance
			}
		}
	}
	var _crosshairradius = 96
	if _closesthorse != noone && _closesthorsedistance <= _crosshairradius
	{
		//func_playstepsound(sfx_gunbeep,beepsoundcooldown)
		if beepsoundcooldown <= 0
		{
			audio_play_sound(sfx_gunbeep,10,false)
			beepsoundcooldown = 2
		}
		var _crosshair = instance_create_depth(x,y,-1,obj_crosshair)
		_crosshair.target = _closesthorse
		_crosshair.owner = id
		_crosshair.maxdistance = _crosshairradius
		if _closesthorse.object_index == obj_horse_white
			_crosshair.countdown = func_secondstoframes(6)
		if _closesthorse.object_index == obj_horse_shitass
			_crosshair.countdown = 5
		_crosshair.countdown = clamp(_crosshair.countdown-func_secondstoframes(overtimeacceleration/2),1,_crosshair.countdown)
	}
}
if beepsoundcooldown > 0
	beepsoundcooldown--
