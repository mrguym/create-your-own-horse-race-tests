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
	var _currentincrementedglowangle = 0
	while _currentincrementedglowangle < 360
	{
		draw_sprite_ext(glowsprite,image_index,x+lengthdir_x(glowsize,glowangle+_currentincrementedglowangle),y+lengthdir_y(glowsize,glowangle+_currentincrementedglowangle),image_xscale,image_yscale,image_angle,glowcolor,glowalpha)
		draw_sprite_ext(glowsprite,image_index,x+lengthdir_x(glowsize*2,(glowangle+_currentincrementedglowangle)*-1),y+lengthdir_y(glowsize*2,(glowangle+_currentincrementedglowangle)*-1),image_xscale,image_yscale,image_angle,glowcolor,glowalpha/2)
		draw_sprite_ext(glowsprite,image_index,x+lengthdir_x(glowsize*4,(glowangle+_currentincrementedglowangle)),y+lengthdir_y(glowsize*4,(glowangle+_currentincrementedglowangle)),image_xscale,image_yscale,image_angle,glowcolor,glowalpha/4)
		draw_sprite_ext(glowsprite,image_index,x+lengthdir_x(glowsize*8,(glowangle+_currentincrementedglowangle)*-1),y+lengthdir_y(glowsize*8,(glowangle+_currentincrementedglowangle)*-1),image_xscale,image_yscale,image_angle,glowcolor,glowalpha/8)
		_currentincrementedglowangle += glowangleincrement
	}
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



