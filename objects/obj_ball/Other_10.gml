/// @description controlled step event
//acceleration = clamp(acceleration+accelerationamount,0,maxacceleration)
acceleration = clamp(acceleration-decelerationamount,0,maxacceleration)
//overtimeacceleration = clamp(overtimeacceleration+overtimeaccelerationamount,0,overtimemaxacceleration)
func_updatespeed()
func_move_towards_point_alt(targetangle,currentmovespeed)
func_outofboundsmeasure()

var _collidables = [obj_mapparent,obj_horseparent]
move_and_collide(hsp,vsp,_collidables)

if stepsoundcooldown > 0
	stepsoundcooldown--

if place_meeting(x,y,obj_mapparent)
{
	//show_debug_message("stuck inside solid, performing anti collision clip")
	func_anticollisionclipping(obj_mapparent)
}
if place_meeting(x,y,obj_horseparent)
{
	var _collidingobject = instance_place(x,y,obj_horseparent);
	//show_debug_message("stuck inside horse, performing anti collision clip")
	func_anticollisionclipping(obj_horseparent)
	defaultmovespeed = 1.5
	func_updatespeed()
	func_performcollision(_collidingobject)
	func_ballpass(_collidingobject)
}

if place_meeting(x+hsp,y+vsp,obj_mapparent)
{
	var _collidingobject = instance_place(x+hsp,y+vsp,obj_mapparent)
	func_performknockback(_collidingobject)
}

if place_meeting(x+hsp,y+vsp,obj_horseparent)
{
	var _collidingobject = instance_place(x+hsp,y+vsp,obj_horseparent)
	var _oldhsp = hsp
	//func_performknockback(_collidingobject)
	func_performcollision(_collidingobject)
	func_ballpass(_collidingobject)
}
if place_meeting(x,y,obj_hoop) && global.REMAINING_WIN_SLOTS > 0 && global.GAME_STATE = "normal"
{
	audio_play_sound(winsound,20,false)
	global.LASTPLAYEDWINSOUND = winsound
	/*
	var _wineffect = instance_create_depth(x,y,0,obj_horsewineffect)
	_wineffect.sprite_index = sprite_index
	*/
	global.REMAINING_WIN_SLOTS = 0
	if global.REMAINING_WIN_SLOTS <= 0 
	{
		if array_length(global.WINNERS_LIST) > 0
			audio_play_sound(sfx_gong,20,false)
		global.GAME_STATE = "raceend"
	}
	if array_length(global.WINNERS_LIST) <= 0
		global.WINJINGLE = winjingle
	array_insert(global.WINNERS_LIST,array_length(global.WINNERS_LIST),currentpass)
	/*
	var _winninghorse = instance_create_depth(x,y,0,obj_winninghorse)
	_winninghorse.sprite_index = winsprite
	_winninghorse.winplacement = array_length(global.WINNERS_LIST)
	_winninghorse.hsp = clamp(hsp,_winninghorse.maxhsp*-1.25,_winninghorse.maxhsp*1.25)
	_winninghorse.vsp = clamp(vsp,_winninghorse.maxvsp*-1.25,_winninghorse.maxvsp*1.25)
	*/
	var _targetgoal = instance_place(x,y,obj_hoop)
	if _targetgoal != -4
	{
		//_winninghorse.targetgoal = _targetgoal
		global.CAM_TARGET_GOAL = _targetgoal
	}
	//instance_destroy()
}
targetangle = func_fixangle(targetangle)
targetangle = round(targetangle)
eyeframe = round(targetangle/22.5)
if canxscaleflip == true
{
	if sign(hsp) != 0
	{
		xscalefliptargetdir = sign(hsp)
	}
	xscaleflipdir = median(xscaleflipdir-xscaleflipspeed,xscalefliptargetdir,xscaleflipdir+xscaleflipspeed)
	if xscaleflipdir = xscalefliptargetdir
		image_xscale = xscalefliptargetdir
	image_xscale = xscaleflipdir
}

