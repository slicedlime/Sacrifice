# Figure out if the game is running or not

execute if entity @e[type=minecraft:area_effect_cloud,tag=Main] run function praise:gameloop
execute unless entity @e[type=minecraft:area_effect_cloud,tag=Main] run function praise:setuploop
