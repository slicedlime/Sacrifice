# Figure out how many

execute store result score @s Sacrifice run data get entity @s Item.Count

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

# Accept the sacrifice
execute if score @e[tag=CurrentTeam,limit=1] Sacrifice matches 1.. run function praise:accept_sacrifice

scoreboard players reset @s Sacrifice

tag @s remove Accepted
tag @e[tag=CurrentTeam] remove CurrentTeam
tag @a remove OnTeam
