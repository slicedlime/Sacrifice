# Figure out if the game is running or not

execute if entity @e[type=minecraft:area_effect_cloud,tag=Main] if score $Running Info matches 1 run function praise:gameloop
execute if entity @e[type=minecraft:area_effect_cloud,tag=Main] if score $Running Info matches 0 run function praise:pauseloop
execute unless entity @e[type=minecraft:area_effect_cloud,tag=Main] run function praise:setuploop
