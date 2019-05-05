# Show particles

execute at @e[tag=Main] run particle happy_villager ~ ~-0.2 ~ 0.2 0.75 0.2 0 5 
execute at @e[tag=Main] run particle smoke ~ ~-0.2 ~ 0.4 0.5 0.4 0 10 

# Reduce the number of sacrifices remaining
scoreboard players operation @e[tag=CurrentTeam] Sacrifice -= @s Sacrifice
execute if entity @e[tag=CurrentTeam,scores={Sacrifice=0..}] run kill @s

# Manage remaining items on altar
scoreboard players operation @s Sacrifice = @e[tag=CurrentTeam] Sacrifice
scoreboard players operation @s Sacrifice *= -1 Const

execute store result entity @s Item.Count byte 1 run scoreboard players get @s Sacrifice

execute if entity @e[tag=CurrentTeam,scores={Sacrifice=..0}] run summon minecraft:item ~ ~2 ~ {"Item":{"id":"minecraft:ender_pearl","Count":1b,tag:{display:{Name:"{\"text\":\"Orb of Servitude\",\"color\":\"blue\"}",Lore:['"A token of recognition"']}}}}
execute if entity @e[tag=CurrentTeam,scores={Sacrifice=..0}] run title @a[tag=OnTeam] title [{"text":"The Gods are pleased"}]
execute if entity @e[tag=CurrentTeam,scores={Sacrifice=..0}] run title @a[tag=OnTeam] subtitle [{"text":"... for now"}]
execute if entity @e[tag=CurrentTeam,scores={Sacrifice=..0}] run title @a[tag=OnTeam] actionbar [{"text":""}]
execute if entity @e[tag=CurrentTeam,scores={Sacrifice=..0}] run tellraw @a [{"text":"The Gods have accepted the sacrifices of "},{"selector":"@e[tag=CurrentTeam]"},{"text":"."}]

scoreboard players reset @e[scores={Sacrifice=..0}] Sacrifice
