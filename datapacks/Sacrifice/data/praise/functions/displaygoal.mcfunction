# Find the correct plural form of the noun
scoreboard players reset * Plural
scoreboard players set @e[tag=Current] Plural 1
execute if entity @e[tag=UniquePlural,scores={Plural=1..}] run function praise:findplural

# Display title
title @a title [{"text":"Dawn of Day "},{"score":{"objective":"Day","name":"$Main"}}]
execute if entity @e[tag=Current,scores={Sacrifice=1},tag=A] run title @a subtitle [{"text":"The Gods demand a "}, {"selector":"@e[tag=Current]"}]
execute if entity @e[tag=Current,scores={Sacrifice=1},tag=An] run title @a subtitle [{"text":"The Gods demand an "}, {"selector":"@e[tag=Current]"}]
execute if entity @e[tag=Current,scores={Sacrifice=2..}] if entity @e[scores={Plural=1..},tag=SamePlural] run title @a subtitle [{"text":"The Gods demand "}, {"score":{"objective":"Sacrifice","name":"@e[tag=Current]"}}, {"text":" "}, {"selector":"@e[scores={Plural=1..}]"}]
execute if entity @e[tag=Current,scores={Sacrifice=2..}] if entity @e[scores={Plural=1..},tag=!SamePlural] run title @a subtitle [{"text":"The Gods demand "}, {"score":{"objective":"Sacrifice","name":"@e[tag=Current]"}}, {"text":" "}, {"selector":"@e[scores={Plural=1..}]"}, {"text":"s"}]
