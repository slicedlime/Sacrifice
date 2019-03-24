# Set the number of sacrifices for each team

scoreboard players set @s Sacrifice 0
execute if entity @s[tag=Chosen] at @a[team=chosen] run scoreboard players operation @s Sacrifice += @e[tag=Current] Sacrifice
execute if entity @s[tag=Servants] at @a[team=servants] run scoreboard players operation @s Sacrifice += @e[tag=Current] Sacrifice
execute if entity @s[tag=Fallen] at @a[team=fallen] run scoreboard players operation @s Sacrifice += @e[tag=Current] Sacrifice
execute if entity @s[tag=Devout] at @a[team=devout] run scoreboard players operation @s Sacrifice += @e[tag=Current] Sacrifice
execute if entity @s[tag=Clergy] at @a[team=clergy] run scoreboard players operation @s Sacrifice += @e[tag=Current] Sacrifice
execute if entity @s[tag=Collectors] at @a[team=collectors] run scoreboard players operation @s Sacrifice += @e[tag=Current] Sacrifice
execute if entity @s[tag=Forsaken] at @a[team=forsaken] run scoreboard players operation @s Sacrifice += @e[tag=Current] Sacrifice
execute if entity @s[tag=Believers] at @a[team=believers] run scoreboard players operation @s Sacrifice += @e[tag=Current] Sacrifice
