/// @description Insert description here
// You can write your code in this editor
screencenterx = 640/2
screencentery = 480/2
//
finishedloading = false
spritestoload = 0
spritesloaded = 0
var _stopcounting = false
while _stopcounting == false
{
	spritestoload++
	if !sprite_exists(spritestoload)
	{
		_stopcounting = true
		spritestoload--
	}
	else
	{
		sprite_prefetch(spritestoload)
	}
}
image_speed = 0
var _howmanytoloadatonce = spritestoload
var _lol = 0
while _lol < _howmanytoloadatonce
{
	with instance_create_depth(x,y,1,obj_spriteloaderinstance)
	{
		sprite_index = _lol
	}
	_lol++
}

logocol1 = make_color_rgb(255,0,0)
logocol2 = make_color_rgb(255,255,0)
logocol3 = make_color_rgb(0,255,0)
logocol4 = make_color_rgb(0,255,255)
logocol5 = make_color_rgb(0,0,255)
logocol6 = make_color_rgb(255,0,255)
currentlogocol = logocol1
logocolphase = 1
logocolphasemax = 6
logocollerp = 0
logocollerpspeed = 1/60





