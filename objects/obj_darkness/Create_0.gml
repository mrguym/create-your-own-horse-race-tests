/// @description Insert description here
// You can write your code in this editor
darklevel = 0.5
darklevelmin = 0
darklevelmax = 1
darklevelspeed = 0.005
darknessfullyinitialized = false

lightninglevel = 0
//lightningcooldownmin = 10*60
//lightningcooldownmin = 6*60
lightningcooldownmin = func_secondstoframes(5)
//lightningcooldownmax = 20*60
//lightningcooldownmax = 12*60
lightningcooldownmax = func_secondstoframes(10)
lightningcooldown = irandom_range(lightningcooldownmin,lightningcooldownmax)
lightningbigchance = 0
lightningbigchancemax = 6
lightningsound = sfx_thunder1
lightningsounddelay = 0


