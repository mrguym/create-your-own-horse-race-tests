/// @description Insert description here
// You can write your code in this editor
if (floor(image_index) == (image_number - 1))
{
	with obj_spriteloadermanager
	{
		spritesloaded++
		if spritesloaded >= spritestoload && finishedloading == false
		{
			finishedloading = true
		}
	}
	instance_destroy()
}





