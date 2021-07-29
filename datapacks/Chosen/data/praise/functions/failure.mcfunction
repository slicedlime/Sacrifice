# Replace helmet slot

scoreboard players operation @a[team=chosen] Failures = @e[tag=Chosen] Failures
scoreboard players operation @a[team=servants] Failures = @e[tag=Servants] Failures
scoreboard players operation @a[team=fallen] Failures = @e[tag=Fallen] Failures
scoreboard players operation @a[team=devout] Failures = @e[tag=Devout] Failures
scoreboard players operation @a[team=clergy] Failures = @e[tag=Clergy] Failures
scoreboard players operation @a[team=collectors] Failures = @e[tag=Collectors] Failures
scoreboard players operation @a[team=forsaken] Failures = @e[tag=Forsaken] Failures
scoreboard players operation @a[team=believers] Failures = @e[tag=Believers] Failures

item replace entity @a[scores={Failures=0}] armor.head with minecraft:chainmail_helmet{Enchantments:[{lvl:1s,id:"minecraft:binding_curse"}],display:{Name:"{\"translate\":\"Circlet of the Gods\"}",Lore:['"You who wear this have"', '"been chosen by the Gods."']},Unbreakable:1b,HideFlags:63}
item replace entity @a[scores={Failures=1}] armor.head with minecraft:chainmail_helmet{Enchantments:[{lvl:1s,id:"minecraft:binding_curse"}],display:{Name:"{\"translate\":\"Circlet of the Gods\"}",Lore:['"You are not as trustworthy"', '"as we would have hoped."']},Unbreakable:1b,HideFlags:63}
item replace entity @a[scores={Failures=2}] armor.head with minecraft:chainmail_helmet{Enchantments:[{lvl:1s,id:"minecraft:binding_curse"}],display:{Name:"{\"translate\":\"Circlet of the Gods\"}",Lore:['"You failed us again."', '"Reckless. Unruly."', '"Insubordinate. Heathen."']},Unbreakable:1b,HideFlags:63}
item replace entity @a[scores={Failures=3}] armor.head with minecraft:chainmail_helmet{Enchantments:[{lvl:1s,id:"minecraft:binding_curse"}],display:{Name:"{\"translate\":\"Circlet of the Gods\"}",Lore:['"Playing games with us will"', '"cost your heart and soul."']},Unbreakable:1b,HideFlags:63}
item replace entity @a[scores={Failures=4}] armor.head with minecraft:chainmail_helmet{Enchantments:[{lvl:1s,id:"minecraft:binding_curse"}],display:{Name:"{\"translate\":\"Circlet of the Gods\"}",Lore:['"Wrath of the Gods"', '"be upon you."']},Unbreakable:1b,HideFlags:0}

execute as @a[scores={Failures=1}] run attribute @s generic.max_health base set 16
execute as @a[scores={Failures=2}] run attribute @s generic.max_health base set 12
execute as @a[scores={Failures=3}] run attribute @s generic.max_health base set 8
execute as @a[scores={Failures=4}] run attribute @s generic.max_health base set 4

# Workaround for hearts not updating
execute as @a[gamemode=survival,scores={Failures=1..}] run effect give @s instant_health 1 29

kill @a[scores={Failures=5},gamemode=survival]

