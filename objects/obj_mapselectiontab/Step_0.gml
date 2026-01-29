/// @description Insert description here
// You can write your code in this editor
if collision_point(mouse_x,mouse_y,object_index,false,false) == id && visible == true
{
	if mouse_check_button_pressed(mb_left)
		clickedon = true
	if mouse_check_button_released(mb_left) && clickedon == true
	{
		clickedon = false
		room_goto(map)
	}
}
if !mouse_check_button(mb_left)
	clickedon = false





