/// @description Insert description here
// You can write your code in this editor
if room == rm_mapselection
{
	func_system_variables()
	global.GAME_STATE = "mapselection"
}
else if room == rm_winnersingle
{
	with obj_winportrait
	{
		horseidentity = array_get(global.WINNERS_LIST,0)
		scr_horse_stats(horseidentity,global.PREVIOUS_ROOM)
		if winname != -1
			hasuniquename = true
			
		//jingletimer += other.jingletimertoadd
		//show_debug_message(other.jingletimertoadd)
	}
}
else if room == rm_winnermultiple
{
	var _winnerplatformstocreate = array_length(global.WINNERS_LIST)
	for (var _m = 0; _m < _winnerplatformstocreate; _m++)
	{
		var _platform = instance_create_depth(-128+(160*(_m+1)),320,0,obj_winnerplatform)
		_platform.winplacement = _m+1
		_platform.horseidentity = array_get(global.WINNERS_LIST,_m)
		_platform.image_yscale = (1/(_winnerplatformstocreate-1))*(_winnerplatformstocreate-(_m+1))+1
	}
	if _winnerplatformstocreate >= 5
	{
		room_width = -128+(160*(_winnerplatformstocreate+1))
	}
}
else
{
	if quickcountdown == true
	{
		if instance_exists(obj_fisher)
		{
			global.GAME_STATE = "fishintro"
		}
		else if instance_exists(obj_placeyourbets)
		{
			global.GAME_STATE = "raceintroclassic"
		}
		else
		{
			global.GAME_STATE = "raceintro"
		}
	}
	else
	{
		global.GAME_STATE = "racesetup"
	}
}
//jingletimertoadd = 0
randomize();
scr_map_settings(room)


