# Runs every tick when paused

execute as @e[type=!player] run data merge entity @s {NoAI:1b}

effect give @a[gamemode=survival] slowness 10 100
effect give @a[gamemode=survival] blindness 10 2
effect give @a[gamemode=survival] jump_boost 10 128

title @a times 0 100 0
title @a title ""
title @a subtitle "Game Paused"

scoreboard players enable @a Unpause
execute as @a[scores={Unpause=1..},limit=1] run function praise:unpause
