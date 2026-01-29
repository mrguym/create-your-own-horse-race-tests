/// @description Insert description here
// You can write your code in this editor
event_inherited();

if transforming == false
{
	if transformtimer > 0
		transformtimer--
	else
	{
		var _sound = audio_play_sound(sfx_generate,10,false)
		audio_sound_pitch(_sound,0.75)
		audio_sound_gain(_sound,0.65,0)
		if sprite_index == spr_mutant_blueknob1
		{
			sprite_index = spr_mutant_blueknob1_transform
		}
		if sprite_index == spr_mutant_blueknob2
		{
			sprite_index = spr_mutant_blueknob2_transform
		}
		image_index = 0
		eyesprite = spr_null
		transforming = true
	}
}
else
{
	if (floor(image_index) == (image_number - 1))
	{
		if sprite_index == spr_mutant_blueknob1_transform
		{
			sprite_index = spr_mutant_blueknob2
			eyesprite = spr_horse_bulletnboard_eyes
		}
		if sprite_index == spr_mutant_blueknob2_transform
		{
			sprite_index = spr_mutant_blueknob1
			eyesprite = spr_horse_doorknob_eyes
		}
		transformtimer = transformtimerdefault
		transforming = false
	}
}






