# Select a new goal

# Check if previous goal was completed
scoreboard players add $Main Failures 0
execute if entity @e[tag=Current] run scoreboard players add $Main Failures 1
execute if entity @e[tag=Current] run tellraw @a [{"text":"Your failure to deliver has angered the Gods!","color":"red"}]
execute if entity @e[tag=Current] run effect give @a minecraft:slowness 2 2
execute if entity @e[tag=Current] run effect give @a minecraft:blindness 2 16
# Update helmet
function praise:failure

# Increase difficulty
scoreboard players operation $Main Sacrifice *= 13 Const
scoreboard players operation $Main Sacrifice /= 10 Const
scoreboard players add $Main Sacrifice 4

# Calculate item amounts
execute as @e[tag=Target] run scoreboard players operation @s Sacrifice = $Main Sacrifice
execute as @e[tag=Target] run scoreboard players operation @s Sacrifice /= @s Target

# Clear out items of invalid counts
scoreboard players reset @e[tag=Target,scores={Sacrifice=..0}] Sacrifice
scoreboard players reset @e[tag=Target,scores={Sacrifice=7..}] Sacrifice

# Make sure they all have a cooldown value
scoreboard players add @e[tag=Target] Cooldown 0

# Select a new goal
tag @e[tag=Current] remove Current
function bitmath:rng
scoreboard players operation $Selected Calc = $r Registry
tag @e[type=area_effect_cloud,tag=Target,scores={Sacrifice=1..,Cooldown=..0}] add PossibleSacrifice
execute store result score $Max Calc if entity @e[tag=PossibleSacrifice]
scoreboard players operation $Selected Calc %= $Max Calc
scoreboard players operation $SelectedIn Calc = $Selected Calc
function praise:findselected
scoreboard players reset @e[tag=!Current] Sacrifice

# Increase day count
scoreboard players add $Main Day 1
scoreboard players operation Day Stats = $Main Day

# Stat for successful sacrifices
scoreboard players operation Sacrifices Stats = Day Stats
scoreboard players operation Sacrifices Stats -= 1 Const
scoreboard players operation Sacrifices Stats -= $Main Failures

# Reduce old cooldowns, set new cooldown
scoreboard players remove @e[scores={Cooldown=1..}] Cooldown 1
scoreboard players set @e[tag=Current] Cooldown 2

# Display goal
function praise:displaygoal
