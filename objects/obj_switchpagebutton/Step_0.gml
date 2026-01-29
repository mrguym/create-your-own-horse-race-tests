/// @description Insert description here
// You can write your code in this editor
if collision_point(mouse_x,mouse_y,object_index,false,false) == id && visible == true
{
	if mouse_check_button_pressed(mb_left)
		clickedon = true
	if mouse_check_button_released(mb_left) && clickedon == true
	{
		clickedon = false
		obj_mapselectionmanager.mapselectionpage += pageswitchamount
		obj_mapselectionmanager.mapselectionpagecreated = false
	}
	/*
	if mouse_check_button_pressed(mb_left)
	{
		obj_mapselectionmanager.mapselectionpage += pageswitchamount
		obj_mapselectionmanager.mapselectionpagecreated = false
		show_debug_message(obj_mapselectionmanager.mapselectionpage)
	}
	*/
}
if !mouse_check_button(mb_left)
	clickedon = false

if image_xscale > 0
{
	if obj_mapselectionmanager.mapselectionpage >= obj_mapselectionmanager.mapselectionmaximumpages
	{
		visible = false
	}
	else
		visible = true
}
if image_xscale < 0
{
	if obj_mapselectionmanager.mapselectionpage == 1
	{
		visible = false
	}
	else
		visible = true
}




