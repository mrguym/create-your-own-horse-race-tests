/// @description Insert description here
// You can write your code in this editor
ini_open("settings.ini");
excludefrommapselection = [rm_init,rm_maptemplate,rm_mapselection,rm_winnersingle,rm_winnermultiple,rm_roadcutscene,rm_raytest,rm_infinitetest,rm_hell]
mapselectionlist = []
y = ini_read_real("mapselectionpersistence","mapselectiony",ystart);
mapselectionpage = ini_read_real("mapselectionpersistence","mapselectionpage",1);
mapstoshowperpage = 15
mapscurrentlyonpage = 1
mapselectionpagecreated = false
ini_close();

var _currentindex = 0
var _indexhitmax = false
	
while _indexhitmax == false
{
	if room_exists(_currentindex)
	{
		if array_get_index(excludefrommapselection,_currentindex) == -1
		{
			array_insert(mapselectionlist,array_length(mapselectionlist),asset_get_index(room_get_name(_currentindex)))
		}
		_currentindex++
	}
	else
	{
		_indexhitmax = true
		break;
	}
}
//show_debug_message(mapselectionlist)

mapselectionmaximumpages = ceil(array_length(mapselectionlist)/mapstoshowperpage)

func_createmapselectionpage()

mouse_x_old = mouse_x
mouse_y_old = mouse_y

