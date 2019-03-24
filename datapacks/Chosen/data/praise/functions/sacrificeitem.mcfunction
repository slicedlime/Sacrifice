# Figure out how many

execute store result score @s Sacrifice run data get entity @s Item.Count

# Accept the sacrifice

execute at @e[tag=Main] run particle happy_villager ~ ~-0.2 ~ 0.2 0.75 0.2 0 5 
execute at @e[tag=Main] run particle smoke ~ ~-0.2 ~ 0.4 0.5 0.4 0 10 

tag @e[tag=CurrentTeam] remove CurrentTeam
execute if entity @s[tag=chosen] run tag @e[tag=Chosen] add CurrentTeam
execute if entity @s[tag=servants] run tag @e[tag=Servants] add CurrentTeam
execute if entity @s[tag=fallen] run tag @e[tag=Fallen] add CurrentTeam
execute if entity @s[tag=devout] run tag @e[tag=Devout] add CurrentTeam
execute if entity @s[tag=clergy] run tag @e[tag=Clergy] add CurrentTeam
execute if entity @s[tag=collectors] run tag @e[tag=Collectors] add CurrentTeam
execute if entity @s[tag=forsaken] run tag @e[tag=Forsaken] add CurrentTeam
execute if entity @s[tag=believers] run tag @e[tag=Believers] add CurrentTeam

execute as @e[tag=CurrentTeam] run function praise:tag_team

# Reduce the number of sacrifices remaining
scoreboard players operation @e[tag=CurrentTeam] Sacrifice -= @s Sacrifice
execute if entity @e[tag=CurrentTeam,scores={Sacrifice=0..}] run kill @s

# Manage remaining items on altar
scoreboard players operation @s Sacrifice = @e[tag=CurrentTeam] Sacrifice
scoreboard players operation @s Sacrifice *= -1 Const

execute store result entity @s Item.Count byte 1 run scoreboard players get @s Sacrifice

execute if entity @e[tag=CurrentTeam,scores={Sacrifice=..0}] run summon minecraft:item ~ ~2 ~ {"Item":{"id":"minecraft:ender_pearl","Count":1b,tag:{display:{Name:"{\"text\":\"Orb of Servitude\",\"color\":\"blue\"}",Lore:["A token of recognition"]}}}}
execute if entity @e[tag=CurrentTeam,scores={Sacrifice=..0}] run title @a[tag=OnTeam] title [{"text":"The Gods are pleased"}]
execute if entity @e[tag=CurrentTeam,scores={Sacrifice=..0}] run title @a[tag=OnTeam] subtitle [{"text":"... for now"}]
execute if entity @e[tag=CurrentTeam,scores={Sacrifice=..0}] run title @a[tag=OnTeam] actionbar [{"text":""}]
execute if entity @e[tag=CurrentTeam,scores={Sacrifice=..0}] run tellraw @a [{"text":"The Gods have accepted the sacrifices of "},{"selector":"@e[tag=CurrentTeam]"},{"text":"."}]

tag @s remove Accepted
scoreboard players reset @e[scores={Sacrifice=..0}] Sacrifice
scoreboard players reset @s Sacrifice

tag @e[tag=CurrentTeam] remove CurrentTeam
tag @a remove OnTeam