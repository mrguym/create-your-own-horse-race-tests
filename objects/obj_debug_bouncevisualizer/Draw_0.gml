/// @description Insert description here
// You can write your code in this editor
draw_self()
draw_set_color(c_lime)
draw_sprite(sprite_index,image_index,x+lengthdir_x(32,targetangle+angletoadd),y+lengthdir_y(32,targetangle+angletoadd))
draw_set_color(c_red)
draw_line(x,y,x-lengthdir_x(128,targetangle),y-lengthdir_y(128,targetangle))
draw_set_color(c_lime)
draw_line(x,y,x+lengthdir_x(128,targetangle+angletoadd),y+lengthdir_y(128,targetangle+angletoadd))
draw_set_color(c_aqua)
draw_line(x,y,x+lengthdir_x(128,targetangle+(angletoadd*2)),y+lengthdir_y(128,targetangle+(angletoadd*2)))

draw_set_color(c_white)





