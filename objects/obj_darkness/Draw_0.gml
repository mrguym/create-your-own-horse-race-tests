/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_black)
draw_set_alpha(clamp(darklevel-lightninglevel,0,1))
draw_rectangle(-16,-16,room_width+16,room_height+16,false)
draw_set_color(c_white)
draw_set_alpha(1)
if instance_exists(obj_horseparent)
{
    for (var _i=0; _i<instance_number(obj_horseparent); _i++)
    {
        var _honse = instance_find(obj_horseparent,_i)
		if _honse.hiddenindarkness == false
		 draw_sprite(_honse.eyesprite,_honse.eyeframe,_honse.x,_honse.y)
    }
}



