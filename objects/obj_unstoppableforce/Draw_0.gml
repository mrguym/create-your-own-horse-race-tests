/// @description Insert description here
// You can write your code in this editor
//draw_sprite_ext(sprite_index,image_index,x,y,spritedirectionfacing,image_yscale,image_angle,image_blend,image_alpha)
var _allowedtobeseen = true

if instance_exists(obj_darkness)
{
	if obj_darkness.darknessfullyinitialized == false && hiddenindarkness == true
		_allowedtobeseen = false
}

if _allowedtobeseen == true
{
	draw_self()
	draw_sprite(eyesprite,eyeframe,x,y)
}



