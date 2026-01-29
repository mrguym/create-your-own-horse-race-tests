/// @description Insert description here
// You can write your code in this editor
zoomamount = clamp(zoomamount+(zoominterval*zoomdirection),zoommin,zoommax)
camera_set_view_size(camera,
zoomwidth*zoomamount,
zoomheight*zoomamount)

min_x = 0
max_x = room_width - camera_get_view_width(camera)
//max_x = room_width - zoomwidth
min_x = 0
max_y = room_height - camera_get_view_height(camera)
//max_y = room_height - zoomheight
global.VIEW_W_HALF = camera_get_view_width(camera)/2
global.VIEW_H_HALF = camera_get_view_height(camera)/2

xoffset = 0
yoffset = 0
zoominterval = 0.0125
if instance_exists(target)
{
	x = target.x
	y = target.y
	switch target.object_index
	{
		case obj_goal:
		{
			//show_debug_message(camera_get_view_x(camera)+global.VIEW_W_HALF)
			//show_debug_message(camera_get_view_y(camera)+global.VIEW_H_HALF)
			if (camera_get_view_x(camera)+global.VIEW_W_HALF) <= target.x + 11 && (camera_get_view_x(camera)+global.VIEW_W_HALF) >= target.x - 11 && (camera_get_view_y(camera)+global.VIEW_H_HALF) <= target.y + 11 && (camera_get_view_y(camera)+global.VIEW_H_HALF) >= target.y - 11
				zoominterval = 0.0075
		}
		break
		default:
		{
		}
		break
	}
}
//if room == rm_winnermultiple && zoomamount >= 1
if global.GAME_STATE != "raceend" && zoomamount >= 1
{
	var _move = -keyboard_check(ord("A")) + keyboard_check(ord("D"))
	var _move2 = -keyboard_check(ord("W")) + keyboard_check(ord("S"))
	var _scrollmove = -mouse_wheel_down() + mouse_wheel_up()
	if instance_exists(obj_horseparent) && (room_width > 640 || room_height > 480)
	{
		if keyboard_check_pressed(ord("E"))
		{
			spectatinghorse++
			if spectatinghorse > instance_number(obj_horseparent)-1
			{
				spectatinghorse = -1
			}
		}
		if keyboard_check_pressed(ord("Q"))
		{
			spectatinghorse--
			if spectatinghorse < -1
			{
				spectatinghorse = instance_number(obj_horseparent)-1
			}
		}
		if spectatinghorse > instance_number(obj_horseparent)-1
			spectatinghorse = instance_number(obj_horseparent)-1
		if spectatinghorse != -1
		{
			target = instance_find(obj_horseparent,spectatinghorse)
			spectatingball = -1
		}
		else if target != noone && (target.object_index == obj_horseparent || object_get_parent(target.object_index) == obj_horseparent)
		{
			target = noone
		}
	}
	if instance_exists(obj_ball) && (room_width > 640 || room_height > 480)
	{
		if keyboard_check_pressed(ord("R"))
		{
			spectatingball++
			if spectatingball > instance_number(obj_ball)-1
			{
				spectatingball = -1
			}
		}
		if keyboard_check_pressed(ord("F"))
		{
			spectatingball--
			if spectatingball < -1
			{
				spectatingball = instance_number(obj_ball)-1
			}
		}
		if spectatingball > instance_number(obj_ball)-1
			spectatingball = instance_number(obj_ball)-1
		if spectatingball != -1
		{
			target = instance_find(obj_ball,spectatingball)
			spectatinghorse = -1
		}
		else if target != noone && (target.object_index == obj_ball || object_get_parent(target.object_index) == obj_ball)
		{
			target = noone
		}
	}
	if mouse_check_button(mb_left)
	{
		/*
		if mouse_check_button_pressed(mb_left)
		{
			if collision_point(mouse_x,mouse_y,obj_horseparent,false,true) != noone
			{
				target = collision_point(mouse_x,mouse_y,obj_horseparent,false,true)
			}
			if collision_point(mouse_x,mouse_y,obj_horseparent,false,true) == noone
			{
				target = noone
			}
		}
		*/
		spectatinghorse = -1
		spectatingball = -1
		target = noone
		x -= mouse_x-mouse_x_old
		y -= mouse_y-mouse_y_old
	}
	else if target == noone
	{
		if keyboard_check(vk_shift)
		{
			x = clamp(x-(_scrollmove*32),240,room_width-240)
		}
		else
		{
			y = clamp(y-(_scrollmove*32),240,room_height-240)
		}
		
		if _move != 0
		{
			x = clamp(x+(_move*(2+cammoveacceleratex)),320,room_width-320)
			cammoveacceleratex += 0.05
		}
		else
		{
			cammoveacceleratex = 0
		}
		if _move2 != 0
		{
			y = clamp(y+(_move2*(2+cammoveacceleratey)),240,room_height-240)
			cammoveacceleratey += 0.05
		}
		else
		{
			cammoveacceleratey = 0
		}
	}
}
else
{
	spectatinghorse = -1
	spectatingball = -1
}
//var _distance = point_distance(x,y,targetx+xoffset,targety+yoffset)
//move_towards_point(targetx+xoffset,targety+yoffset,_distance/1.7)

camera_set_view_pos(camera,
clamp(x-global.VIEW_W_HALF,min_x,max_x),
clamp(y-global.VIEW_H_HALF,min_x,max_y))

/*
camera_set_view_pos(camera,
x-global.VIEW_W_HALF,
y-global.VIEW_H_HALF)
*/

if zoomamount <= zoommin && zoomtransitionactive == true
{
	target = noone
	x = zoomwidth/2
	y = zoomheight/2
	zoomdirection = 1
	zoomtransitionactive = false
	room_goto(zoomtransitiontargetroom)
}

mouse_x_old = mouse_x
mouse_y_old = mouse_y
