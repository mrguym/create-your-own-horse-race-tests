/// @description Insert description here
// You can write your code in this editor
if instance_exists(owner)
{
	draw_sprite_ext(sprite_index,0,owner.x,owner.y,1,1,0,c_white,0.25)
}

draw_sprite_ext(sprite_index,1,x+lengthdir_x((countdown*2),30),y+lengthdir_y((countdown*2),30),1,1,0,c_white,1-(countdown/countdowndefault))
draw_sprite_ext(sprite_index,1,x+lengthdir_x((countdown*2),150),y+lengthdir_y((countdown*2),150),1,1,0,c_white,1-(countdown/countdowndefault))
draw_sprite_ext(sprite_index,1,x+lengthdir_x((countdown*2),270),y+lengthdir_y((countdown*2),270),1,1,0,c_white,1-(countdown/countdowndefault))

draw_self()



