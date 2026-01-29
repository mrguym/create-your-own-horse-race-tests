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
	if spritemergedwitheyedirection == false
	{
		draw_sprite_ext(sprite_index,image_index,x,y,xscaleflipdir,image_yscale,image_angle,image_blend,image_alpha)
		draw_sprite(eyesprite,eyeframe,x,y)
		
		if global.OUT_OF_BOUNDS_MEASURE == "wrap"
		{
			draw_sprite_ext(sprite_index,image_index,x,y+room_height,xscaleflipdir,image_yscale,image_angle,image_blend,image_alpha)
			draw_sprite_ext(sprite_index,image_index,x,y-room_height,xscaleflipdir,image_yscale,image_angle,image_blend,image_alpha)
			draw_sprite_ext(sprite_index,image_index,x+room_width,y,xscaleflipdir,image_yscale,image_angle,image_blend,image_alpha)
			draw_sprite_ext(sprite_index,image_index,x+room_width,y+room_height,xscaleflipdir,image_yscale,image_angle,image_blend,image_alpha)
			draw_sprite_ext(sprite_index,image_index,x+room_width,y-room_height,xscaleflipdir,image_yscale,image_angle,image_blend,image_alpha)
			draw_sprite_ext(sprite_index,image_index,x-room_width,y,xscaleflipdir,image_yscale,image_angle,image_blend,image_alpha)
			draw_sprite_ext(sprite_index,image_index,x-room_width,y+room_height,xscaleflipdir,image_yscale,image_angle,image_blend,image_alpha)
			draw_sprite_ext(sprite_index,image_index,x-room_width,y-room_height,xscaleflipdir,image_yscale,image_angle,image_blend,image_alpha)
			draw_sprite(eyesprite,eyeframe,x,y+room_height)
			draw_sprite(eyesprite,eyeframe,x,y-room_height)
			draw_sprite(eyesprite,eyeframe,x+room_width,y)
			draw_sprite(eyesprite,eyeframe,x+room_width,y+room_height)
			draw_sprite(eyesprite,eyeframe,x+room_width,y-room_height)
			draw_sprite(eyesprite,eyeframe,x-room_width,y)
			draw_sprite(eyesprite,eyeframe,x-room_width,y+room_height)
			draw_sprite(eyesprite,eyeframe,x-room_width,y-room_height)
		}
	}
	else
	{
		draw_sprite_ext(sprite_index,eyeframe,x,y,xscaleflipdir,image_yscale,image_angle,image_blend,image_alpha)
		if global.OUT_OF_BOUNDS_MEASURE == "wrap"
		{
			draw_sprite_ext(sprite_index,eyeframe,x,y+room_height,xscaleflipdir,image_yscale,image_angle,image_blend,image_alpha)
			draw_sprite_ext(sprite_index,eyeframe,x,y-room_height,xscaleflipdir,image_yscale,image_angle,image_blend,image_alpha)
			draw_sprite_ext(sprite_index,eyeframe,x+room_width,y,xscaleflipdir,image_yscale,image_angle,image_blend,image_alpha)
			draw_sprite_ext(sprite_index,eyeframe,x+room_width,y+room_height,xscaleflipdir,image_yscale,image_angle,image_blend,image_alpha)
			draw_sprite_ext(sprite_index,eyeframe,x+room_width,y-room_height,xscaleflipdir,image_yscale,image_angle,image_blend,image_alpha)
			draw_sprite_ext(sprite_index,eyeframe,x-room_width,y,xscaleflipdir,image_yscale,image_angle,image_blend,image_alpha)
			draw_sprite_ext(sprite_index,eyeframe,x-room_width,y+room_height,xscaleflipdir,image_yscale,image_angle,image_blend,image_alpha)
			draw_sprite_ext(sprite_index,eyeframe,x-room_width,y-room_height,xscaleflipdir,image_yscale,image_angle,image_blend,image_alpha)
		}
	}
}



