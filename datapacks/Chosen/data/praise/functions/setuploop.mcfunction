# Keep the game stalled until starting
gamerule doDaylightCycle false
gamerule doWeatherCycle false
gamerule doMobSpawning false

time set noon

# Set up scoreboards
scoreboard objectives add SacrificeStatus dummy "Sacrifice Status"
scoreboard objectives add SacrificeMenu trigger "Sacrifice Menu Actions"
scoreboard objectives add SacrificeRules dummy "Sacrifice Rules ticker"
scoreboard objectives add Seed trigger "Sacrifice Seed Trigger"
scoreboard objectives add Registry dummy "Math Registry"
scoreboard objectives add Calc dummy "Calculation scoreboard"

scoreboard players enable @a SacrificeMenu
scoreboard players enable @a Seed

# World border
execute store result score $Border Calc run worldborder get
execute unless score $Border Calc matches 100 run worldborder center ~ ~
execute unless score $Border Calc matches 100 run worldborder set 100
gamemode adventure @a[gamemode=!adventure,name=!slicedlime]

# Player griefing fixup

effect give @a minecraft:weakness 1 100 true
effect give @a minecraft:mining_fatigue 1 100 true

# Team setup
team add chosen "The Chosen Ones"
team modify chosen color gold
team add servants "The Servants of the Gods"
team modify servants color aqua
team add fallen "The Fallen"
team modify fallen color gray
team add devout "The Devout"
team modify devout color red
team add clergy "The Clergy"
team modify clergy color yellow
team add collectors "The Collectors"
team modify collectors color light_purple
team add forsaken "The Forsaken"
team modify forsaken color dark_red
team add believers "The Believers"
team modify believers color green
team add watchers "The Watchers"
team modify watchers color white

# Ensure there is a seed
scoreboard players add $rng Registry 0
execute if score $rng Registry matches 0 run function praise:randomseed

# Rules
execute as @a[scores={SacrificeRules=0..}] run function praise:rules

# Show menu
scoreboard players set $Max SacrificeStatus 1200
scoreboard players add @a SacrificeStatus 1
scoreboard players operation @a SacrificeStatus %= $Max SacrificeStatus

execute as @a[scores={SacrificeStatus=100}] run function praise:menu
title @a actionbar "Use the chat menu to start the game"

# Main actions

execute as @a[scores={SacrificeMenu=1}] run function praise:rules
execute as @a[scores={SacrificeMenu=2}] run function praise:placealtar
execute as @a[scores={SacrificeMenu=3}] at @s run function praise:setup
execute as @a[scores={SacrificeMenu=4}] run function praise:teammenu

# Team join actions

execute as @a[scores={SacrificeMenu=101}] run team join chosen @s
execute as @a[scores={SacrificeMenu=102}] run team join servants @s
execute as @a[scores={SacrificeMenu=103}] run team join fallen @s
execute as @a[scores={SacrificeMenu=104}] run team join devout
execute as @a[scores={SacrificeMenu=105}] run team join clergy @s
execute as @a[scores={SacrificeMenu=106}] run team join collectors @s
execute as @a[scores={SacrificeMenu=107}] run team join forsaken @s
execute as @a[scores={SacrificeMenu=108}] run team join believers @s
execute as @a[scores={SacrificeMenu=109}] run team join watchers @s
tag @a[scores={SacrificeMenu=101..}] add JoinedTeam
scoreboard players set @a[scores={SacrificeMenu=101..}] SacrificeStatus 101

tag @a[team=] add JoinedTeam
team join chosen @a[team=]
function praise:teamjoin

# Misc menu stuff

scoreboard players set @a[scores={SacrificeMenu=1..}] SacrificeMenu 0

execute as @a[scores={Seed=1..}] run function praise:setseed

execute at @e[tag=Altar] run particle minecraft:end_rod ~ ~1 ~ 0 0 0 0.1 1 force
