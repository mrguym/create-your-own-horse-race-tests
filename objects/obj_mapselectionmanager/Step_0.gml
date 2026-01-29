/// @description Insert description here
// You can write your code in this editor
if mouse_check_button(mb_left)
{
	y += mouse_y-mouse_y_old
}
else
{
	if mouse_wheel_up()
	{
		y += 32
	}
	if mouse_wheel_down()
	{
		y -= 32
	}
}
//y = clamp(y,ystart-(96*array_length(mapselectionlist))+448,ystart)
y = clamp(y,ystart-(96*mapscurrentlyonpage)+448,ystart)
mapselectionpage = clamp(mapselectionpage,1,mapselectionmaximumpages)

if mapselectionpagecreated == false
{
	func_createmapselectionpage()
}


with obj_mapselectiontab
{
	y = other.y+yoffset
}

mouse_x_old = mouse_x
mouse_y_old = mouse_y

