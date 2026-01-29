/// @description Insert description here
// You can write your code in this editor
event_inherited();

var _hasowngoop = false
var _numberofownedgoops = 0
var _maxgoops = 6
if instance_exists(obj_pinkgoop)
{
	for (var _i = 0; _i < instance_number(obj_pinkgoop); _i++)
	{
		var _currentgoop = instance_find(obj_pinkgoop,_i)
		if _currentgoop.owner == id
			_numberofownedgoops++
	}
	if _numberofownedgoops >= 2
		_hasowngoop = true
}
if _hasowngoop == true
{
	var _closestgoop = noone
	var _closestgoopdistance = (room_width+room_height)*2
	var _farthestgoop = noone
	var _farthestgoopdistance = 0
	var _secondclosestgoop = noone
	var _secondclosestgoopdistance = (room_width+room_height)*2
	for (var _i = 0; _i < instance_number(obj_pinkgoop); _i++)
	{
		var _currentgoop = instance_find(obj_pinkgoop,_i)
		var _currentgoopdistance = point_distance(x,y,_currentgoop.x,_currentgoop.y)
	
		if _currentgoopdistance < _closestgoopdistance
		{
			if _currentgoop.owner == id
			{
				_secondclosestgoop = _closestgoop
				_secondclosestgoopdistance = _closestgoopdistance
				_closestgoop = _currentgoop
				_closestgoopdistance = _currentgoopdistance
			}
		}
		if _currentgoopdistance > _farthestgoopdistance
		{
			if _currentgoop.owner == id
			{
				_farthestgoop = _currentgoop
				_farthestgoopdistance = _currentgoopdistance
			}
		}
	}
	var _goopradius = 128
	if _closestgoop != noone && _closestgoopdistance <= _goopradius
	{
		if neargooptoolongtimer < 240
		{
			neargooptoolongtimer++
		}
		//else if _secondclosestgoop != noone
		else if _farthestgoop != noone
		{
			neargooptoolongtimer = 0
			audio_play_sound(sfx_nightmaretruckstophighway,10,false)
			var _newgoop = instance_create_depth(x,y,1,obj_pinkgoop)
			_newgoop.owner = id
			_newgoop.sprite_index = spr_mutant_comedicresolution_goopinto
			//x = _secondclosestgoop.x
			//y = _secondclosestgoop.y
			x = _farthestgoop.x
			y = _farthestgoop.y
			gooping = true
			goopingx = x
			goopingy = y
			sprite_index = spr_mutant_comedicresolution_goopoutof
			eyesprite = spr_null
			//instance_destroy(_secondclosestgoop)
			instance_destroy(_farthestgoop)
		}
	}
	else
	{
		neargooptoolongtimer = 0
		if irandom_range(1,60) == 60 && gooping == false
		{
			if _numberofownedgoops >= _maxgoops
			{
				for (var _i = 0; _i < instance_number(obj_pinkgoop); _i++)
				{
					var _currentgoop = instance_find(obj_pinkgoop,_i)
					if _currentgoop.owner == id && _numberofownedgoops >= _maxgoops
					{
						instance_destroy(_currentgoop)
						_numberofownedgoops--
					}
				}
			}
			var _newgoop = instance_create_depth(x,y,1,obj_pinkgoop)
			_newgoop.owner = id
		}
	}
}
else
{
	if irandom_range(1,60) == 60 && gooping == false
	{
		if _numberofownedgoops >= _maxgoops
		{
			for (var _i = 0; _i < instance_number(obj_pinkgoop); _i++)
			{
				var _currentgoop = instance_find(obj_pinkgoop,_i)
				if _currentgoop.owner == id && _numberofownedgoops >= _maxgoops
				{
					instance_destroy(_currentgoop)
					_numberofownedgoops--
				}
			}
		}
		var _newgoop = instance_create_depth(x,y,1,obj_pinkgoop)
		_newgoop.owner = id
	}
}
if gooping == true
{
	x = goopingx
	y = goopingy
}
if sprite_index == spr_mutant_comedicresolution_goopoutof && (floor(image_index) == (image_number - 1))
{
	sprite_index = spr_mutant_comedicresolution
	eyesprite = spr_mutant_comedicresolution_eyes
	gooping = false
}







