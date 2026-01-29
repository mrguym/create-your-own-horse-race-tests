/// @description controlled step event
var _detectedvoiceline = false
for (var _m = 0; _m < array_length(voicestodetect); _m++)
{
	if audio_is_playing(array_get(voicestodetect,_m))
	{
		_detectedvoiceline = true
	}
}
if _detectedvoiceline == true && currentmouthsprite != mouthtalksprite
{
	currentmouthsprite = mouthtalksprite
	image_index = 0
}
if _detectedvoiceline == false
{
	currentmouthsprite = mouthstillsprite
}
if global.GAME_STATE != "racesetup"
{
	switch announcertype
	{
		case "normal":
		{
			sprite_index = spr_announcer
		}
		break
		case "spooky":
		{
			sprite_index = spr_announcer_spooky
		}
		break
		case "weird":
		{
			sprite_index = spr_announcer_weird
			mouthstillsprite = spr_announcer_mouth_still_weird
			mouthtalksprite = spr_announcer_mouth_talk_weird
			leftbrandsprite = spr_announcer_brand_left_weird
			rightbrandsprite = spr_announcer_brand_right_weird
		}
		break
	}
}
else
{
	sprite_index = spr_announcer_sleep
}

//dont look at my ugly code DONT LOOK AT IT
switch obj_system.introcountdown
{
	case 1:
	{
		switch announcertype
		{
			case "normal":
			{
				audio_play_sound(sfx_voice_placeyourbets,10,false)
				displaytext = "PLACE YOUR#BETS"
			}
			break
			case "spooky":
			{
				audio_play_sound(sfx_voice_spooky_placeyourbets,10,false)
				displaytext = "place your#bets."
			}
			break
			case "weird":
			{
				audio_play_sound(sfx_voice_weird_placeyourbets,10,false)
				displaytext = "STEB#RUOY ECALP"
			}
			break
		}
	}
	break
	case 120:
	{
		switch announcertype
		{
			case "normal":
			{
				audio_play_sound(sfx_voice_ten,10,false)
				displaytext = "[[[[[[[[[[10]]]]]]]]]]"
			}
			break
			case "spooky":
			{
				audio_play_sound(sfx_voice_spooky_ten,10,false)
				displaytext = "ten."
			}
			break
			case "weird":
			{
				audio_play_sound(sfx_voice_weird_ten,10,false)
				displaytext = "TEB#RUOY ECALP"
			}
			break
		}
	}
	break
	case 180:
	{
		switch announcertype
		{
			case "normal":
			{
				audio_play_sound(sfx_voice_nine,10,false)
				displaytext = "[[[[[[[[[9]]]]]]]]]"
			}
			break
			case "spooky":
			{
				audio_play_sound(sfx_voice_spooky_nine,10,false)
				displaytext = "nine."
			}
			break
			case "weird":
			{
				audio_play_sound(sfx_voice_weird_nine,10,false)
				displaytext = "TEB#RUOY ECAL"
			}
			break
		}
	}
	break
	case 240:
	{
		switch announcertype
		{
			case "normal":
			{
				audio_play_sound(sfx_voice_eight,10,false)
				displaytext = "[[[[[[[[8]]]]]]]]"
			}
			break
			case "spooky":
			{
				audio_play_sound(sfx_voice_spooky_eight,10,false)
				displaytext = "eight."
			}
			break
			case "weird":
			{
				audio_play_sound(sfx_voice_weird_eight,10,false)
				displaytext = "TEB#RUOY ECA"
			}
			break
		}
	}
	break
	case 300:
	{
		switch announcertype
		{
			case "normal":
			{
				audio_play_sound(sfx_voice_seven,10,false)
				displaytext = "[[[[[[[7]]]]]]]"
			}
			break
			case "spooky":
			{
				audio_play_sound(sfx_voice_spooky_seven,10,false)
				displaytext = "seven."
			}
			break
			case "weird":
			{
				audio_play_sound(sfx_voice_weird_seven,10,false)
				displaytext = "EB#RUOY ECA"
			}
			break
		}
	}
	break
	case 360:
	{
		switch announcertype
		{
			case "normal":
			{
				audio_play_sound(sfx_voice_six,10,false)
				displaytext = "[[[[[[6]]]]]]"
			}
			break
			case "spooky":
			{
				audio_play_sound(sfx_voice_spooky_six,10,false)
				displaytext = "six."
			}
			break
			case "weird":
			{
				audio_play_sound(sfx_voice_weird_six,10,false)
				displaytext = "B#RUOY ECA"
			}
			break
		}
	}
	break
	case 420:
	{
		switch announcertype
		{
			case "normal":
			{
				audio_play_sound(sfx_voice_five,10,false)
				displaytext = "[[[[[5]]]]]"
			}
			break
			case "spooky":
			{
				audio_play_sound(sfx_voice_spooky_five,10,false)
				displaytext = "five."
			}
			break
			case "weird":
			{
				audio_play_sound(sfx_voice_weird_five,10,false)
				displaytext = "RUOY ECA"
			}
			break
		}
	}
	break
	case 480:
	{
		switch announcertype
		{
			case "normal":
			{
				audio_play_sound(sfx_voice_four,10,false)
				displaytext = "[[[[4]]]]"
			}
			break
			case "spooky":
			{
				audio_play_sound(sfx_voice_spooky_four,10,false)
				displaytext = "four."
			}
			break
			case "weird":
			{
				audio_play_sound(sfx_voice_weird_four,10,false)
				displaytext = "RUOY EC"
			}
			break
		}
	}
	break
	case 540:
	{
		switch announcertype
		{
			case "normal":
			{
				audio_play_sound(sfx_voice_three,10,false)
				displaytext = "[[[3]]]"
			}
			break
			case "spooky":
			{
				audio_play_sound(sfx_voice_spooky_three,10,false)
				displaytext = "three."
			}
			break
			case "weird":
			{
				audio_play_sound(sfx_voice_weird_three,10,false)
				displaytext = "RUOY E"
			}
			break
		}
	}
	break
	case 600:
	{
		switch announcertype
		{
			case "normal":
			{
				audio_play_sound(sfx_voice_two,10,false)
				displaytext = "[[2]]"
			}
			break
			case "spooky":
			{
				audio_play_sound(sfx_voice_spooky_two,10,false)
				displaytext = "two."
			}
			break
			case "weird":
			{
				audio_play_sound(sfx_voice_weird_two,10,false)
				displaytext = "OY E"
			}
			break
		}
	}
	break
	case 660:
	{
		switch announcertype
		{
			case "normal":
			{
				audio_play_sound(sfx_voice_one,10,false)
				displaytext = "[1]"
			}
			break
			case "spooky":
			{
				audio_play_sound(sfx_voice_spooky_one,10,false)
				displaytext = "one."
			}
			break
			case "weird":
			{
				audio_play_sound(sfx_voice_weird_one,10,false)
				displaytext = ":O"
			}
			break
		}
	}
	break
	case 720:
	{
		switch announcertype
		{
			case "normal":
			{
				audio_play_sound(sfx_voice_go,10,false)
				displaytext = "GO! GO! GO!#GO! GO! GO!#GO! GO! GO!"
			}
			break
			case "spooky":
			{
				audio_play_sound(sfx_voice_spooky_go,10,false)
				displaytext = "go."
			}
			break
			case "weird":
			{
				audio_play_sound(sfx_voice_weird_go,10,false)
				displaytext = ":)"
			}
			break
		}
	}
	break
}
if floateffectcooldown >= 15
{
	var _effect = instance_create_depth(x,y+64,0,obj_announcerfloateffect)
	//_effect.vsp += vsp
	floateffectcooldown = 0
}
else
	floateffectcooldown++

if targetswitchcooldown < targetswitchcooldownmax
	targetswitchcooldown++

if targetswitchcooldown >= targetswitchcooldownmax
{
	orbitx = clamp(xstart+random_range(-128,128),128,room_width-128)
	orbity = clamp(ystart+random_range(-96,96),96,room_height-96)
	targetswitchcooldown = 0
}

x += hsp
y += vsp
hsp = median(hsp-hspacc,targethsp,hsp+hspacc)
vsp = median(vsp-vspacc,targetvsp,vsp+vspacc)
if global.GAME_STATE == "racesetup"
{
	hsp /= 2
	vsp /= 2
}

if global.GAME_STATE == "normal"
{
	targetvsp = maxvsp * -6
	if y <= -100
	{
		instance_destroy()
	}
}
else
{
	//if instance_exists(orbittarget)
	//{
		if x > orbitx
		{
			targethsp = maxhsp*-1
		}
		if x < orbitx
		{
			targethsp = maxhsp
		}
		if y > orbity
		{
			targetvsp = maxvsp*-1
		}
		if y < orbity
		{
			targetvsp = maxvsp
		}
	//}
}





