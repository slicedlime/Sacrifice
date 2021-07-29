scoreboard players set $Running Info 1
gamerule doDaylightCycle true
gamerule doWeatherCycle true
gamerule randomTickSpeed 3
scoreboard players reset @a Unpause

title @a reset
title @a title "Game Resumed"
title @a subtitle ""

effect clear @a[gamemode=survival] blindness
effect clear @a[gamemode=survival] slowness
effect clear @a[gamemode=survival] jump_boost
