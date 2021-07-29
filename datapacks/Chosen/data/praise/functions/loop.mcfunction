# Figure out if the game is running or not

scoreboard objectives add SacrificeMode dummy "Which mode the game is in"
scoreboard players add Mode SacrificeMode 0
execute if score Mode SacrificeMode matches 0 run function praise:setuploop

execute if score Mode SacrificeMode matches 1 if entity @e[type=minecraft:area_effect_cloud,tag=Main] if score $Running Info matches 1 run function praise:gameloop
execute if score Mode SacrificeMode matches 1 if entity @e[type=minecraft:area_effect_cloud,tag=Main] if score $Running Info matches 0 run function praise:pauseloop
