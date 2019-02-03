# Find the matching plural form

scoreboard players reset * Calc
execute as @e[scores={ItemId=0..}] run scoreboard players operation @s Calc = @s ItemId
scoreboard players operation @e[scores={ItemId=0..}] Calc -= @e[scores={Plural=1..}] ItemId
scoreboard players set @e[scores={Calc=0},tag=!UniquePlural] Plural 1
scoreboard players reset @e[scores={Plural=1..},tag=UniquePlural] Plural
#scoreboard players reset * Calc
