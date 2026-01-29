/// @description controlled step event
// You can write your code in this editor
if !instance_exists(target) || !instance_exists(owner) || target == noone || owner == noone
{
	instance_destroy()
}
else
{
	if point_distance(owner.x,owner.y,target.x,target.y) > maxdistance
	{
		instance_destroy()
	}
	x = target.x
	y = target.y
	countdown--
	if countdown <= 0
	{
		audio_play_sound(sfx_gun,10,false)
		var _deatheffect = instance_create_depth(x,y,0,obj_horsedeatheffect)
		_deatheffect.skullcolor = target.bodycolor
		instance_destroy(target)
		instance_destroy()
	}
}






