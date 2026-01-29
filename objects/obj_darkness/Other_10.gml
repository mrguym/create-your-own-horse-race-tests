/// @description controlled step event
var _targetdarklevel = darklevelmin
if global.GAME_STATE == "normal"
{
	_targetdarklevel = darklevelmax
}
else if global.GAME_STATE == "raceend" || global.GAME_STATE == "results"
{
	_targetdarklevel = darklevelmin
	darknessfullyinitialized = false
	//if darklevel <= darklevelmin
		//instance_destroy()
}
else
{
	_targetdarklevel = 0.5
	darknessfullyinitialized = false
}
darklevel = clamp(median(darklevel-darklevelspeed,_targetdarklevel,darklevel+darklevelspeed),darklevelmin,darklevelmax)
if darklevel >= darklevelmax
	darknessfullyinitialized = true

if global.GAME_STATE == "normal"
{
	lightninglevel = clamp(lightninglevel-0.01,0,1)
	lightningcooldown--
	if lightningcooldown <= 0
	{
		var _biglightning = irandom_range(lightningbigchance,lightningbigchancemax)
		if _biglightning >=6 && lightningbigchance > 0
		{
			lightninglevel = 0.8
			lightningbigchance = 0
			lightningsound = sfx_thunderbig1
			lightningsounddelay = 60
		}
		else
		{
			lightninglevel = 0.2
			lightningbigchance++
			lightningsound = choose(sfx_thunder1,sfx_thunder2,sfx_thunder3)
			lightningsounddelay = irandom_range(60,90)
		}
		lightningcooldown = irandom_range(lightningcooldownmin,lightningcooldownmax)
	}
	if lightningsounddelay > 0
	{
		lightningsounddelay--
		if lightningsounddelay <= 0
		{
			audio_play_sound(lightningsound,10,false)
		}
	}
}
