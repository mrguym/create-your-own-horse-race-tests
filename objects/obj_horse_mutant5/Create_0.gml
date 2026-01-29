/// @description Insert description here
// You can write your code in this editor
event_inherited()

horseidentity = "Blue Knob"
scr_horse_stats(horseidentity)

transformtimer = func_secondstoframes(3)
transformtimerdefault = func_secondstoframes(3)
transforming = false

for (var _i = 0; _i < instance_number(obj_horse_mutant5); _i++)
{
	var _currentblueknob = instance_find(obj_horse_mutant5,_i)
	_currentblueknob.transformtimer = 0 + (transformtimerdefault*(_i/instance_number(obj_horse_mutant5)))
}



