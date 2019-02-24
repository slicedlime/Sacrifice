# Summon all the aecs and set scores

gamerule commandBlockOutput false

function praise:setupscoreboards

kill @e[tag=Main]

setworldspawn ~ ~ ~
execute align xyz run summon area_effect_cloud ~0.5 ~0.5 ~0.5 {Tags:[Main],CustomName:"\"Main\"",Duration: 2147483647}

execute as @e[tag=Main] at @s run function praise:altar

effect give @a instant_health 1 10
effect give @a saturation 1 10
gamemode survival @a
clear @a

function praise:setuptargets

scoreboard players set @e[tag=Main] Sacrifice 0
function praise:failure

time set 23800
team leave @a
