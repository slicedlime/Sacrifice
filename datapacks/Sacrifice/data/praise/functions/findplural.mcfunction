# Find the matching plural form

scoreboard players reset * Calc
execute @e[score_ItemId_min=0] ~ ~ ~ scoreboard players operation @s Calc = @s ItemId
scoreboard players operation @e[score_ItemId_min=0] Calc -= @e[score_Plural_min=1] ItemId
scoreboard players set @e[score_Calc=0,score_Calc_min=0,tag=!UniquePlural] Plural 1
scoreboard players reset @e[score_Plural_min=1,tag=UniquePlural] Plural
#scoreboard players reset * Calc
