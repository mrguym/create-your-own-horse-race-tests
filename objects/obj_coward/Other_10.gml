/// @description controlled step event
// You can write your code in this editor

x += 8 * image_xscale

if x > room_width+64 || x < -64
{
	instance_destroy()
}


