/// @description controlled step event
//x = clamp(x+hsp,0,room_width)
//y = clamp(y+vsp,0,room_height)
x += hsp
y += vsp

/*
if x + hsp >= room_width
{
	hsp = abs(hsp)*-1 
}
if x + hsp <= 0
{
	hsp = abs(hsp)
}

if y + vsp >= room_height
{
	vsp = abs(vsp)*-1 
}
if y + vsp <= 0
{
	vsp = abs(vsp)
}
*/

hsp = median(hsp-hspacc,targethsp,hsp+hspacc)
vsp = median(vsp-vspacc,targetvsp,vsp+vspacc)

if x > targetgoal.x
{
	targethsp = maxhsp*-1
}
if x < targetgoal.x
{
	targethsp = maxhsp
}
if y > targetgoal.y
{
	targetvsp = maxvsp*-1
}
if y < targetgoal.y
{
	targetvsp = maxvsp
}

