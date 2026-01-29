/// @description Insert description here
// You can write your code in this editor
draw_self()
draw_sprite_ext(currentmouthsprite,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha)
if image_xscale < 0
{
	draw_sprite_ext(rightbrandsprite,image_index,x,y,abs(image_xscale),image_yscale,image_angle,image_blend,image_alpha)
}
else
{
	draw_sprite_ext(leftbrandsprite,image_index,x,y,abs(image_xscale),image_yscale,image_angle,image_blend,image_alpha)
}
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_set_color(c_white)
draw_set_font(fnt_comicsans)
draw_text(x-(10*sign(image_xscale)),y-(10*sign(image_yscale)),string_hash_to_newline(displaytext))


