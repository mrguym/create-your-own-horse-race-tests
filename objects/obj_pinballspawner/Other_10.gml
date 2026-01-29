/// @description controlled step event
spawncooldown++
if spawncooldown >= spawncooldownmax && instance_number(obj_pinball) < pinballmaxamount
{
	var _pinball = instance_create_depth(x,y,5,obj_pinball)
	//_pinball.vsp = -7
	_pinball.image_xscale = 0.5
	_pinball.image_yscale = 0.5
	_pinball.targetangle = image_angle
	_pinball.percievedangle = image_angle
	_pinball.acceleration = random_range(2,4)
	spawncooldown = 0
}
