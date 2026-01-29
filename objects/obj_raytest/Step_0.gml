/// @description Insert description here
// You can write your code in this editor
if keyboard_check(vk_left)
{
	angletoadd += 0.5
}
if keyboard_check(vk_right)
{
	angletoadd -= 0.5
}
if keyboard_check_pressed(ord("R"))
{
	angletoadd = 0
}
if keyboard_check(ord("A"))
{
	targetangle += 0.5
}
if keyboard_check(ord("D"))
{
	targetangle -= 0.5
}
reflectionangle = angletoadd * 2



