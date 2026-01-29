/// @description Insert description here
// You can write your code in this editor
x = lerp(xstart,obj_manhole.x,clamp(cutscenetimer/cutscenetimermax,0,1))
y = lerp(ystart,obj_manhole.y,clamp(cutscenetimer/cutscenetimermax,0,1))

cutscenetimer++
//show_debug_message(cutscenetimer)


