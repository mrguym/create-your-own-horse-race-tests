/// @description Insert description here
// You can write your code in this editor
event_inherited();

if hasdonecollisionthisframe && speedupcooldown <= 0
{
	if irandom_range(1,4)+(defaultmovespeed/5) >= 4
	{
		x = glitchx
		y = glitchy
		targetangle = glitchangle
		sprite_index = spr_mutant_abominationnation_glitch
		eyesprite = spr_null
		image_index = 0
		glitchspriteduration = 10
	}
	if defaultmovespeed <= 10
		defaultmovespeed += 0.5
	else
		defaultmovespeed = 0
	speedupcooldown = 6
	glitchx = x
	glitchy = y
	glitchangle = targetangle
}
if glitchspriteduration > 0
{
	glitchspriteduration--
}
else
{
	sprite_index = spr_mutant_abominationnation
	eyesprite = spr_mutant_abominationnation_eyes
}

if speedupcooldown > 0
	speedupcooldown--




