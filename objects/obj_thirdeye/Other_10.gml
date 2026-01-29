/// @description controlled step event
// You can write your code in this editor
if !instance_exists(target) || !instance_exists(owner) || target == noone || owner == noone
{
	instance_destroy()
}
else
{
	if beepsoundcooldown > 0
		beepsoundcooldown--
	else
	{
		beepsoundcooldown = beepsoundcooldowndefault
		var _beepsound = audio_play_sound(sfx_gunbeep,10,false)
		audio_sound_pitch(_beepsound,2)
	}
	if point_distance(x,y,target.x,target.y) > (movespeed*2)
	{
		move_towards_point(target.x,target.y,movespeed)
	}
	else
	{
		speed = 0
	}
	countdown--
	if countdown <= 0
	{
		audio_play_sound(sfx_shine,10,false)
		var _collidinghorse = instance_place(x,y,obj_horseparent)
		if _collidinghorse != noone && _collidinghorse != owner
		{
			var _shuttereffect1 = instance_create_depth(owner.x,owner.y,-1,obj_horsewineffect)
			_shuttereffect1.sprite_index = spr_skyboxtrikethrice_shutter
			_shuttereffect1.image_yscale = 0.5
			_shuttereffect1.targetsize = 0
			var _shuttereffect2 = instance_create_depth(_collidinghorse.x,_collidinghorse.y,-1,obj_horsewineffect)
			_shuttereffect2.sprite_index = spr_skyboxtrikethrice_shutter
			_shuttereffect2.image_yscale = 0.5
			_shuttereffect2.targetsize = 0
			
			var _ownerx = owner.x
			var _ownery = owner.y
			var _ownerangle = owner.targetangle
			var _collidingx = _collidinghorse.x
			var _collidingy = _collidinghorse.y
			var _collidingangle = _collidinghorse.targetangle
			_collidinghorse.x = _ownerx
			_collidinghorse.y = _ownery
			_collidinghorse.targetangle = _ownerangle
			owner.x = _collidingx
			owner.y = _collidingy
			owner.targetangle = _collidingangle
			
			if _collidinghorse.object_index == obj_horse_mutant2
			{
				_collidinghorse.glitchx = _ownerx
				_collidinghorse.glitchy = _ownery
				_collidinghorse.glitchangle = _ownerangle
			}
			if _collidinghorse.object_index == obj_horse_mutant4
			{
				_collidinghorse.teleportx = _ownerx
				_collidinghorse.teleporty = _ownery
			}
		}
		else
		{
			var _shuttereffect = instance_create_depth(x,y,-1,obj_horsewineffect)
			_shuttereffect.sprite_index = spr_skyboxtrikethrice_shutter
			_shuttereffect.image_yscale = 0.5
			_shuttereffect.targetsize = 0
		}
		instance_destroy()
	}
}







