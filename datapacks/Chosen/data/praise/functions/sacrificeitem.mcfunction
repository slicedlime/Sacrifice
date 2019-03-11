# Figure out how many

execute store result score @s Sacrifice run data get entity @s Item.Count

# Accept the sacrifice

execute at @e[tag=Main] run particle happy_villager ~ ~-0.2 ~ 0.2 0.75 0.2 0 5 
execute at @e[tag=Main] run particle smoke ~ ~-0.2 ~ 0.4 0.5 0.4 0 10 

# Reduce the number of sacrifices remaining
scoreboard players operation @e[tag=Current] Sacrifice -= @s Sacrifice
execute if entity @e[tag=Current,scores={Sacrifice=0..}] run kill @s

# Manage remaining items on altar
scoreboard players operation @s Sacrifice = @e[tag=Current] Sacrifice
scoreboard players operation @s Sacrifice *= -1 Const

execute store result entity @s Item.Count byte 1 run scoreboard players get @s Sacrifice

execute if entity @e[tag=Current,scores={Sacrifice=..0}] run title @a title [{"text":"The Gods are pleased"}]
execute if entity @e[tag=Current,scores={Sacrifice=..0}] run title @a subtitle [{"text":"... for now"}]
execute if entity @e[tag=Current,scores={Sacrifice=..0}] run title @a actionbar [{"text":""}]

tag @e[tag=Current,scores={Sacrifice=..0}] remove Current
tag @s remove Accepted
scoreboard players reset @e[scores={Sacrifice=..0}] Sacrifice
scoreboard players reset @s Sacrifice
