/// @description Insert description here
// You can write your code in this editor
if finishedloading == false
{
//	sprite_prefetch(spritestoload)
//	spritesloaded++
	if spritesloaded >= spritestoload && finishedloading == false
	{
		finishedloading = true
	}
}
//else if mouse_check_button_pressed(mb_left)
if mouse_check_button_pressed(mb_left)
{
	room_goto(rm_mapselection)
}
if logocollerp < 1
		logocollerp += logocollerpspeed
else
{
	if logocolphase < logocolphasemax
		logocolphase++
	else
		logocolphase = 1
	logocollerp = 0
}
if logocolphase == 1
{
	currentlogocol = merge_colour(logocol1,logocol2,logocollerp)
}
if logocolphase == 2
{
	currentlogocol = merge_colour(logocol2,logocol3,logocollerp)
}
if logocolphase == 3
{
	currentlogocol = merge_colour(logocol3,logocol4,logocollerp)
}
if logocolphase == 4
{
	currentlogocol = merge_colour(logocol4,logocol5,logocollerp)
}
if logocolphase == 5
{
	currentlogocol = merge_colour(logocol5,logocol6,logocollerp)
}
if logocolphase == 6
{
	currentlogocol = merge_colour(logocol6,logocol1,logocollerp)
}




