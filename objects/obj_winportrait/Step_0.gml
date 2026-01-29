/// @description Insert description here
// You can write your code in this editor
//if jinglefinished == false
if global.JINGLEFINISHED == false
{
	//show_debug_message(jingletimer)
	//show_debug_message(jinglelength)
	//if jingletimer >= jinglelength
	//if obj_system.jingletimertoadd >= jinglelength
	if global.JINGLETIMER >= jinglelength
	{
		if secondwinsound != -1
		{
			audio_play_sound(secondwinsound,20,false)
		}
		else
		{
			audio_play_sound(winsound,20,false)
		}
		global.JINGLEFINISHED = true
	}
}
if global.JINGLEFINISHED == true
{
	textscale = clamp(textscale+0.015,textscale,targettextscale)
}


