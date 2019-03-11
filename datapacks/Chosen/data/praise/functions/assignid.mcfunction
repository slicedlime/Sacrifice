# Assign a new unique id to an entity with the tag New

scoreboard players add $Next SacrificeID 0
scoreboard players operation @e[tag=New,limit=1] SacrificeID = $Next SacrificeID
tag @e[tag=New,limit=1] remove New

scoreboard players add $Next SacrificeID 1
