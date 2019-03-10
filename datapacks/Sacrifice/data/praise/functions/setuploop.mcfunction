# Keep the game stalled until starting
gamerule doDaylightCycle false
gamerule doWeatherCycle false
gamerule doMobSpawning false

time set noon

# Set up scoreboards
scoreboard objectives add SacrificeStatus dummy "Sacrifice Status"
scoreboard objectives add SacrificeMenu trigger "Sacrifice Menu Actions"
scoreboard objectives add Seed trigger "Sacrifice Seed Trigger"
scoreboard objectives add Registry dummy "Math Registry"
scoreboard objectives add Calc dummy "Calculation scoreboard"

# Ensure there is a seed
scoreboard players add $rng Registry 0
execute if score $rng Registry matches 0 run function praise:randomseed

# Show menu
scoreboard players set $Max SacrificeStatus 1200
scoreboard players add @a SacrificeStatus 1
scoreboard players operation @a SacrificeStatus %= $Max SacrificeStatus

execute as @a[scores={SacrificeStatus=100}] run function praise:menu
title @a actionbar "Use the chat menu to start the game"

execute as @a[scores={SacrificeMenu=1}] run function praise:rules
execute as @a[scores={SacrificeMenu=2}] run function praise:placealtar
execute as @a[scores={SacrificeMenu=3}] at @s run function praise:setup

execute as @a[scores={Seed=1..}] run function praise:setseed

execute at @e[tag=Altar] run particle minecraft:end_rod ~ ~1 ~ 0 0 0 0.1 1 force
