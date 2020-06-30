# Summon all the aecs and set scores

gamerule commandBlockOutput false

gamerule doDaylightCycle true
gamerule doWeatherCycle true
gamerule doMobSpawning true

function praise:reset
function praise:setupscoreboards

gamerule maxCommandChainLength 100000

execute if entity @e[tag=Altar] at @e[tag=Altar] align xyz run summon area_effect_cloud ~0.5 ~0.5 ~0.5 {Tags:[Main],CustomName:"\"Main\"",Duration: 2147483647}
execute unless entity @e[tag=Altar] align xyz run summon area_effect_cloud ~0.5 ~0.5 ~0.5 {Tags:[Main],CustomName:"\"Main\"",Duration: 2147483647}

execute as @e[tag=Main] at @s run setworldspawn ~ ~ ~
execute as @e[tag=Main] at @s run function praise:altar

effect give @a instant_health 1 10 true
effect give @a saturation 1 10 true
effect give @a resistance 1 10 true
gamemode survival @a[team=!watchers]
gamemode spectator @a[team=watchers]
clear @a

worldborder set 60000000

function praise:setupdifficulty
function praise:setupteams
function praise:setuptargets

scoreboard players set @e[tag=Main] Sacrifice 0
function praise:failure

time set 23800

execute at @e[tag=Main,limit=1] run teleport @a ~ ~ ~ -90 0
kill @e[tag=Altar]

scoreboard objectives remove SacrificeMenu
scoreboard objectives remove SacrificeSetup
scoreboard objectives remove SacrificeRules
