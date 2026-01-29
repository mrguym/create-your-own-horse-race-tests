/// @description Insert description here
// You can write your code in this editor
if global.GAME_STATE == "normal"
{
	unlocktimer--
}
if unlocktimer <= 0
{
	var _lefish = instance_create_depth(x,y,1,obj_fish_nightmare)
	_lefish.targetangle = 90
	instance_destroy()
}



