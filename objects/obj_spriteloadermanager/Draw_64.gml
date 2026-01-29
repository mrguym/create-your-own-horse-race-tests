/// @description Insert description here
// You can write your code in this editor
draw_set_font(fnt_comicsans)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
//draw_set_color(c_black)
//draw_rectangle(-16,-16,room_width+16,room_height+16,false)
draw_set_color(c_white)
//loadingphase
draw_sprite(spr_titlescreenbg,0,0,0)
draw_sprite(spr_cyohrt_logo,0,screencenterx,screencentery-175)
draw_sprite_ext(spr_cyohrt_logo_rainbowpart,0,screencenterx,screencentery-175,1,1,0,currentlogocol,1)
draw_healthbar(screencenterx-300, screencentery-25, screencenterx+300, screencentery+25, ((spritesloaded/spritestoload)*100),c_black,c_white,c_white,0,true,true)
if spritesloaded < spritestoload
{
	func_draw_text_ext_transformed_outline(screencenterx, screencentery-75,string_hash_to_newline("loading assets " + string(spritesloaded) + "/" + string(spritestoload)),16,500,1,1,0,c_white,c_black,1)
}
else
{
	func_draw_text_ext_transformed_outline(screencenterx, screencentery-75,string_hash_to_newline("done loading, click anywhere to continue"),16,500,1,1,0,c_white,c_black,1)
}
draw_set_valign(fa_top)
func_draw_text_ext_transformed_outline(screencenterx, screencentery+75,string_hash_to_newline("Horse Race Tests by Blake Andrews#CYOHRT Engine by mr_guym#Classic Map Music by Anibal Bley#Horses Tambourine & HRTTHRT Credits Music by Lilliyan Ling#Victory Jingles by lexycat#Extracted Sprites/Sprite Recreations by ArcadeT6#Map Music Remakes by Grander"),22,500,1,1,0,c_white,c_black,1)
draw_set_halign(fa_left)
draw_set_valign(fa_bottom)
func_draw_text_ext_transformed_outline(2,screencentery*2,string_hash_to_newline("v1.1"),22,500,1,1,0,c_white,c_black,1)
//





