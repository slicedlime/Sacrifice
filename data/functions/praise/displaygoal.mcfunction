# Find the correct plural form of the noun
scoreboard players reset * Plural
scoreboard players set @e[tag=Current] Plural 1
function praise:findplural if @e[tag=UniquePlural,score_Plural_min=1]

# Display title
title @a title [{"text":"Dawn of Day "},{"score":{"objective":"Day","name":"@e[tag=Main]"}}]
execute @e[score_Current_min=1,score_Sacrifice=1,tag=A] ~ ~ ~ title @a subtitle [{"text":"The Gods demand a "}, {"selector":"@e[tag=Current]"}]
execute @e[score_Current_min=1,score_Sacrifice=1,tag=An] ~ ~ ~ title @a subtitle [{"text":"The Gods demand an "}, {"selector":"@e[tag=Current]"}]
execute @e[score_Current_min=1,score_Sacrifice_min=2] ~ ~ ~ execute @e[score_Plural_min=1,tag=SamePlural] ~ ~ ~ title @a subtitle [{"text":"The Gods demand "}, {"score":{"objective":"Sacrifice","name":"@e[tag=Current]"}}, {"text":" "}, {"selector":"@e[score_Plural_min=1]"}]
execute @e[score_Current_min=1,score_Sacrifice_min=2] ~ ~ ~ execute @e[score_Plural_min=1,tag=!SamePlural] ~ ~ ~ title @a subtitle [{"text":"The Gods demand "}, {"score":{"objective":"Sacrifice","name":"@e[tag=Current]"}}, {"text":" "}, {"selector":"@e[score_Plural_min=1]"}, {"text":"s"}]
