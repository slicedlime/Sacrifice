# Find the correct plural form of the noun
scoreboard players reset * Plural
scoreboard players set @e[tag=Current] Plural 1
execute if entity @e[tag=UniquePlural,scores={Plural=1..}] run function praise:findplural

function praise:tag_team

# Display title
title @a[tag=OnTeam] title [{"text":"Dawn of Day "},{"score":{"objective":"Day","name":"$Main"}}]
execute if entity @s[scores={Sacrifice=1}] if entity @e[tag=Current,tag=A] run title @a[tag=OnTeam] subtitle [{"text":"The Gods demand a "}, {"selector":"@e[tag=Current]"}]
execute if entity @s[scores={Sacrifice=1}] if entity @e[tag=Current,tag=An] run title @a[tag=OnTeam] subtitle [{"text":"The Gods demand an "}, {"selector":"@e[tag=Current]"}]
execute if entity @s[scores={Sacrifice=2..}] if entity @e[tag=Current] if entity @e[scores={Plural=1..},tag=SamePlural] run title @a[tag=OnTeam] subtitle [{"text":"The Gods demand "}, {"score":{"objective":"Sacrifice","name":"@s"}}, {"text":" "}, {"selector":"@e[scores={Plural=1..}]"}]
execute if entity @s[scores={Sacrifice=2..}] if entity @e[tag=Current] if entity @e[scores={Plural=1..},tag=!SamePlural] run title @a[tag=OnTeam] subtitle [{"text":"The Gods demand "}, {"score":{"objective":"Sacrifice","name":"@s"}}, {"text":" "}, {"selector":"@e[scores={Plural=1..}]"}, {"text":"s"}]

# Display to chat
tellraw @a[tag=OnTeam] [{"text":"Dawn of Day "},{"score":{"objective":"Day","name":"$Main"}}]
execute if entity @s[scores={Sacrifice=1}] if entity @e[tag=Current,tag=A] run tellraw @a[tag=OnTeam] [{"text":"The Gods demand a "}, {"selector":"@e[tag=Current]"}]
execute if entity @s[scores={Sacrifice=1}] if entity @e[tag=Current,tag=An] run tellraw @a[tag=OnTeam] [{"text":"The Gods demand an "}, {"selector":"@e[tag=Current]"}]
execute if entity @s[scores={Sacrifice=2..}] if entity @e[tag=Current] if entity @e[scores={Plural=1..},tag=SamePlural] run tellraw @a[tag=OnTeam] [{"text":"The Gods demand "}, {"score":{"objective":"Sacrifice","name":"@s"}}, {"text":" "}, {"selector":"@e[scores={Plural=1..}]"}]
execute if entity @s[scores={Sacrifice=2..}] if entity @e[tag=Current] if entity @e[scores={Plural=1..},tag=!SamePlural] run tellraw @a[tag=OnTeam] [{"text":"The Gods demand "}, {"score":{"objective":"Sacrifice","name":"@s"}}, {"text":" "}, {"selector":"@e[scores={Plural=1..}]"}, {"text":"s"}]

tag @a remove OnTeam
