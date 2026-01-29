/// @description controlled step event
// You can write your code in this editor

//more ugly code EW
switch obj_system.introcountdown
{
	case 1:
	{
		audio_play_sound(sfx_fisher_whichfishwillicatchtoday,10,false)
		speechsprite = spr_fisher_speech_wfwict
	}
	break
	case 200:
	{
		audio_play_sound(sfx_fisher_ten,10,false)
		speechsprite = spr_fisher_speech_countdown
		speechframe = 0
	}
	break
	case 270:
	{
		audio_play_sound(sfx_fisher_nine,10,false)
		speechsprite = spr_fisher_speech_countdown
		speechframe = 1
	}
	break
	case 340:
	{
		audio_play_sound(sfx_fisher_eight,10,false)
		speechsprite = spr_fisher_speech_countdown
		speechframe = 2
	}
	break
	case 410:
	{
		audio_play_sound(sfx_fisher_seven,10,false)
		speechsprite = spr_fisher_speech_countdown
		speechframe = 3
	}
	break
	case 480:
	{
		audio_play_sound(sfx_fisher_six,10,false)
		speechsprite = spr_fisher_speech_countdown
		speechframe = 4
	}
	break
	case 550:
	{
		audio_play_sound(sfx_fisher_five,10,false)
		speechsprite = spr_fisher_speech_countdown
		speechframe = 5
	}
	break
	case 620:
	{
		audio_play_sound(sfx_fisher_four,10,false)
		speechsprite = spr_fisher_speech_countdown
		speechframe = 6
	}
	break
	case 690:
	{
		audio_play_sound(sfx_fisher_three,10,false)
		speechsprite = spr_fisher_speech_countdown
		speechframe = 7
	}
	break
	case 760:
	{
		audio_play_sound(sfx_fisher_two,10,false)
		speechsprite = spr_fisher_speech_countdown
		speechframe = 8
	}
	break
	case 830:
	{
		audio_play_sound(sfx_fisher_one,10,false)
		speechsprite = spr_fisher_speech_countdown
		speechframe = 9
	}
	break
	case 900:
	{
		audio_play_sound(sfx_fisher_go,10,false)
		speechsprite = spr_fisher_speech_countdown
		speechframe = 10
	}
	break
}





