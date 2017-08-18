# Select a new goal

# Check if previous goal was completed
scoreboard players add @e[tag=Main] Failures 0
execute @e[tag=Current] ~ ~ ~ scoreboard players add @e[tag=Main] Failures 1
execute @e[tag=Current] ~ ~ ~ tellraw @a [{"text":"Your failure to deliver has angered the Gods!","color":"red"}]

# Increase difficulty
scoreboard players operation @e[tag=Main] Sacrifice *= 15 Const
scoreboard players operation @e[tag=Main] Sacrifice /= 10 Const
scoreboard players add @e[tag=Main] Sacrifice 4

# Calculate item amounts
execute @e[tag=Target] ~ ~ ~ scoreboard players operation @s Sacrifice = @e[tag=Main] Sacrifice
execute @e[tag=Target] ~ ~ ~ scoreboard players operation @s Sacrifice /= @s Target

# Clear out items of invalid counts
scoreboard players reset @e[tag=Target,score_Sacrifice=0] Sacrifice
scoreboard players reset @e[tag=Target,score_Sacrifice_min=16] Sacrifice

# Select a new goal
scoreboard players tag @e[tag=Current] remove Current
scoreboard players tag @e[tag=Main] add Current
scoreboard players tag @r[type=area_effect_cloud,tag=Target,score_Sacrifice_min=1] add Current
scoreboard players reset @e[tag=!Current] Sacrifice
scoreboard players tag @e[tag=Main] remove Current

# Increase day count
scoreboard players add @e[tag=Main] Day 1
scoreboard players operation Day Stats = @e[tag=Main] Day

# Stat for successful sacrifices
scoreboard players operation Sacrifices Stats = Day Stats
scoreboard players operation Sacrifices Stats -= 1 Const
scoreboard players operation Sacrifices Stats -= @e[tag=Main] Failures

# Set current score
scoreboard players reset * Current
scoreboard players set @e[tag=Current] Current 1

# Display goal
function praise:displaygoal
