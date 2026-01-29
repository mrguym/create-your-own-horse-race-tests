/// @description controlled step event
image_alpha -= 1/func_secondstoframes(1)
image_xscale += targetsize/func_secondstoframes(1)
image_yscale += targetsize/func_secondstoframes(1)

if image_alpha <= 0
	instance_destroy()

