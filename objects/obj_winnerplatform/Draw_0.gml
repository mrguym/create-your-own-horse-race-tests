/// @description Insert description here
// You can write your code in this editor
draw_self()
draw_set_halign(fa_center)
draw_set_valign(fa_top)
draw_set_color(c_black)
draw_set_font(fnt_comicsans)
/*
switch winplacement
{
	case 1:
	{
		draw_text(x+48,y-32,"1ST")
	}
	break
	case 2:
	{
		draw_text(x+48,y-32,"2ND")
	}
	break
	case 3:
	{
		draw_text(x+48,y-32,"3RD")
	}
	break
	case 4:
	{
		draw_text(x+48,y-32,"4TH")
	}
	break
}
*/
draw_text(x+48,y-32,func_getplacementstring(winplacement))
draw_set_color(c_white)
draw_sprite_ext(portraitsprite,0,x+64,y-(96*image_yscale)+32,1/5,1/5,0,c_white,1)




