# Summon all the aecs and set scores

function praise:setupscoreboards

kill @e[tag=Main]

setworldspawn
summon leash_knot ~ ~ ~ {Tags:[Setup]}
execute @e[tag=Setup] ~ ~ ~ summon area_effect_cloud ~ ~ ~ {Tags:[Main],CustomName:"Main",Duration: 2147483647}
kill @e[tag=Setup]

execute @e[tag=Main] ~ ~ ~ function praise:altar

effect @a instant_health 1 10
effect @a saturation 1 10

function praise:setuptargets

scoreboard players set @e[tag=Main] Sacrifice 0

time set 23800
scoreboard teams leave @a
