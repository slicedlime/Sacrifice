# Find the n:th lowest ID where n = $Selected Calc and add a tag Current to the selected

# Find the lowest ID out of the set
scoreboard players set $Min Calc 10000000
execute as @e[tag=PossibleSacrifice] run scoreboard players operation $Min Calc < @s SacrificeID

# If this is the right entity
execute if score $Selected Calc matches 0 as @e[tag=PossibleSacrifice] if score @s SacrificeID = $Min Calc run tag @s add Current
execute if score $Selected Calc matches 0 run tag @e[tag=PossibleSacrifice] remove PossibleSacrifice

# ... otherwise
scoreboard players operation $PreSelected Calc = $Selected Calc
execute if score $PreSelected Calc matches 1.. run scoreboard players remove $Selected Calc 1
execute if score $PreSelected Calc matches 1.. as @e[tag=PossibleSacrifice] if score @s SacrificeID = $Min Calc run tag @s remove PossibleSacrifice
execute if score $PreSelected Calc matches 1.. run function praise:findselected
