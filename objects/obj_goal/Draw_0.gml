/// @description Insert description here
// You can write your code in this editor
/*
draw_sprite_ext(glowsprite,image_index,x,y,image_xscale,image_yscale,image_angle,glowcolor,glowalpha)
draw_sprite_ext(glowsprite,image_index,x,y+glowsize,image_xscale,image_yscale,image_angle,glowcolor,glowalpha)
draw_sprite_ext(glowsprite,image_index,x,y-glowsize,image_xscale,image_yscale,image_angle,glowcolor,glowalpha)
draw_sprite_ext(glowsprite,image_index,x+glowsize,y,image_xscale,image_yscale,image_angle,glowcolor,glowalpha)
draw_sprite_ext(glowsprite,image_index,x+glowsize,y+glowsize,image_xscale,image_yscale,image_angle,glowcolor,glowalpha)
draw_sprite_ext(glowsprite,image_index,x+glowsize,y-glowsize,image_xscale,image_yscale,image_angle,glowcolor,glowalpha)
draw_sprite_ext(glowsprite,image_index,x-glowsize,y,image_xscale,image_yscale,image_angle,glowcolor,glowalpha)
draw_sprite_ext(glowsprite,image_index,x-glowsize,y+glowsize,image_xscale,image_yscale,image_angle,glowcolor,glowalpha)
draw_sprite_ext(glowsprite,image_index,x-glowsize,y-glowsize,image_xscale,image_yscale,image_angle,glowcolor,glowalpha)

draw_sprite_ext(glowsprite,image_index,x,y,image_xscale,image_yscale,image_angle,glowcolor,glowalpha/2)
draw_sprite_ext(glowsprite,image_index,x,y+(glowsize*2),image_xscale,image_yscale,image_angle,glowcolor,glowalpha/2)
draw_sprite_ext(glowsprite,image_index,x,y-(glowsize*2),image_xscale,image_yscale,image_angle,glowcolor,glowalpha/2)
draw_sprite_ext(glowsprite,image_index,x+(glowsize*2),y,image_xscale,image_yscale,image_angle,glowcolor,glowalpha/2)
draw_sprite_ext(glowsprite,image_index,x+(glowsize*2),y+(glowsize*2),image_xscale,image_yscale,image_angle,glowcolor,glowalpha/2)
draw_sprite_ext(glowsprite,image_index,x+(glowsize*2),y-(glowsize*2),image_xscale,image_yscale,image_angle,glowcolor,glowalpha/2)
draw_sprite_ext(glowsprite,image_index,x-(glowsize*2),y,image_xscale,image_yscale,image_angle,glowcolor,glowalpha/2)
draw_sprite_ext(glowsprite,image_index,x-(glowsize*2),y+(glowsize*2),image_xscale,image_yscale,image_angle,glowcolor,glowalpha/2)
draw_sprite_ext(glowsprite,image_index,x-(glowsize*2),y-(glowsize*2),image_xscale,image_yscale,image_angle,glowcolor,glowalpha/2)
*/

var _currentincrementedglowangle = 0
while _currentincrementedglowangle < 360
{
	draw_sprite_ext(glowsprite,image_index,x+lengthdir_x(glowsize,glowangle+_currentincrementedglowangle),y+lengthdir_y(glowsize,glowangle+_currentincrementedglowangle),image_xscale,image_yscale,image_angle,glowcolor,glowalpha)
	draw_sprite_ext(glowsprite,image_index,x+lengthdir_x(glowsize*2,(glowangle+_currentincrementedglowangle)*-1),y+lengthdir_y(glowsize*2,(glowangle+_currentincrementedglowangle)*-1),image_xscale,image_yscale,image_angle,glowcolor,glowalpha/2)
	draw_sprite_ext(glowsprite,image_index,x+lengthdir_x(glowsize*4,(glowangle+_currentincrementedglowangle)),y+lengthdir_y(glowsize*4,(glowangle+_currentincrementedglowangle)),image_xscale,image_yscale,image_angle,glowcolor,glowalpha/4)
	draw_sprite_ext(glowsprite,image_index,x+lengthdir_x(glowsize*8,(glowangle+_currentincrementedglowangle)*-1),y+lengthdir_y(glowsize*8,(glowangle+_currentincrementedglowangle)*-1),image_xscale,image_yscale,image_angle,glowcolor,glowalpha/8)
	_currentincrementedglowangle += glowangleincrement
}

draw_self()




