# Select a new goal

# Check if previous goal was completed
scoreboard players add @e[tag=Team] Failures 0
execute as @e[tag=Team,scores={Sacrifice=1..}] run function praise:failteam

# Update helmet
function praise:failure

# Increase difficulty
execute unless entity @e[scores={Sacrifice=1..}] run function praise:add_difficulty

# Calculate item amounts
execute as @e[tag=Target] run scoreboard players operation @s Sacrifice = $Main Sacrifice
execute as @e[tag=Target] run scoreboard players operation @s Sacrifice /= @s Target

# Clear out items of invalid counts
scoreboard players reset @e[tag=Target,scores={Sacrifice=..0}] Sacrifice
scoreboard players reset @e[tag=Target,scores={Sacrifice=5..}] Sacrifice

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

# Multiply by player count
execute as @e[tag=Team] run function praise:set_team_sacrifice

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
execute as @e[tag=Team] run function praise:displaygoal
