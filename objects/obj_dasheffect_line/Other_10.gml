/// @description controlled step event
if !instance_exists(targethorse)
	instance_destroy()
if instance_exists(targethorse) && targethorse.targetangle != targetangle
{
	lineleft = 0
}

if lineleft > 0
{
	linelength += lineincrement
	lineleft--
	x2 = x1+lengthdir_x(linelength,targetangle)
	y2 = y1+lengthdir_y(linelength,targetangle)
}
else
{
	linelength -= lineincrement
	x1 = x2-lengthdir_x(linelength,targetangle)
	y1 = y2-lengthdir_y(linelength,targetangle)
	if linelength <= 0
		instance_destroy()
}





