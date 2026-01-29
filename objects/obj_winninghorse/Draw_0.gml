/// @description Insert description here
// You can write your code in this editor
draw_self()
draw_set_halign(fa_center)
draw_set_valign(fa_top)
draw_set_color(c_yellow)
draw_set_font(fnt_comicsans)
/*
switch winplacement
{
	case 1:
	{
		draw_text(x,y+16,"1ST")
	}
	break
	case 2:
	{
		draw_text(x,y+16,"2ND")
	}
	break
	case 3:
	{
		draw_text(x,y+16,"3RD")
	}
	break
	case 4:
	{
		draw_text(x,y+16,"4TH")
	}
	break
}
*/
func_draw_text_ext_transformed_outline(x,y+16,func_getplacementstring(winplacement),22,500,1,1,0,c_yellow,c_black,1)
func_draw_text_ext_transformed_outline(x,y+32,wintimetext,22,500,1,1,0,c_yellow,c_black,1)
draw_set_color(c_white)




