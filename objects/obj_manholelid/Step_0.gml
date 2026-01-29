/// @description Insert description here
// You can write your code in this editor
if closing == true
{
	y = lerp(ystart-64,ystart,clamp(lidtimer/lidtimermax,0,1))
}
if closing == false
{
	y = lerp(ystart,ystart-64,clamp(lidtimer/lidtimermax,0,1))
}
lidtimer++

//if closing == true && obj_nightfincutscene.cutscenetimer >= 1600 && obj_nightfincutscene.cutscenetimer < obj_nightfincutscene.cutscenetimermax
if closing == true && obj_nightfincutscene.cutscenetimer >= 2100 && obj_nightfincutscene.cutscenetimer < obj_nightfincutscene.cutscenetimermax
{
	audio_play_sound(sfx_manhole,10,false)
	closing = false
	lidtimer = 0
}
if closing == false && obj_nightfincutscene.cutscenetimer >= obj_nightfincutscene.cutscenetimermax
{
	audio_play_sound(sfx_manholereverse,10,false)
	closing = true
	lidtimer = 0
}
if obj_nightfincutscene.cutscenetimer >= obj_nightfincutscene.cutscenetimermax && !audio_is_playing(sfx_manholereverse)
	audio_stop_sound(sfx_mu_sirens)
