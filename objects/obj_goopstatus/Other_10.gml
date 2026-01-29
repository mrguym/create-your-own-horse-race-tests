/// @description Insert description here
// You can write your code in this editor
if owner == noone
	instance_destroy()

x = owner.x
y = owner.y
with owner
{
	if place_meeting(x,y,obj_pinkgoop) && instance_place(x,y,obj_pinkgoop).owner != id
	{
	}
	else
	{
		defaultmovespeed += other.speedtorestore
		instance_destroy(other)
	}
}







