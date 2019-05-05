# Replace helmet slot

scoreboard players operation @a[team=chosen] Failures = @e[tag=Chosen] Failures
scoreboard players operation @a[team=servants] Failures = @e[tag=Servants] Failures
scoreboard players operation @a[team=fallen] Failures = @e[tag=Fallen] Failures
scoreboard players operation @a[team=devout] Failures = @e[tag=Devout] Failures
scoreboard players operation @a[team=clergy] Failures = @e[tag=Clergy] Failures
scoreboard players operation @a[team=collectors] Failures = @e[tag=Collectors] Failures
scoreboard players operation @a[team=forsaken] Failures = @e[tag=Forsaken] Failures
scoreboard players operation @a[team=believers] Failures = @e[tag=Believers] Failures

replaceitem entity @a[scores={Failures=0}] armor.head minecraft:chainmail_helmet{Enchantments:[{lvl:1s,id:"minecraft:binding_curse"}],display:{Name:"{\"translate\":\"Circlet of the Gods\"}",Lore:['"You who wear this have"', '"been chosen by the Gods."']},AttributeModifiers:[{AttributeName:"generic.maxHealth",Name:"generic.maxHealth",Amount:0,Operation:0,UUIDMost:12763,UUIDLeast:129863786}],Unbreakable:1b,HideFlags:63}
replaceitem entity @a[scores={Failures=1}] armor.head minecraft:chainmail_helmet{Enchantments:[{lvl:1s,id:"minecraft:binding_curse"}],display:{Name:"{\"translate\":\"Circlet of the Gods\"}",Lore:['"You are not as trustworthy"', '"as we would have hoped."']},AttributeModifiers:[{AttributeName:"generic.maxHealth",Name:"generic.maxHealth",Amount:-4,Operation:0,UUIDMost:12763,UUIDLeast:129863786}],Unbreakable:1b,HideFlags:63}
replaceitem entity @a[scores={Failures=2}] armor.head minecraft:chainmail_helmet{Enchantments:[{lvl:1s,id:"minecraft:binding_curse"}],display:{Name:"{\"translate\":\"Circlet of the Gods\"}",Lore:["You failed us again.", '"Reckless. Unruly."', '"Insubordinate. Heathen."']},AttributeModifiers:[{AttributeName:"generic.maxHealth",Name:"generic.maxHealth",Amount:-8,Operation:0,UUIDMost:12763,UUIDLeast:129863786}],Unbreakable:1b,HideFlags:63}
replaceitem entity @a[scores={Failures=3}] armor.head minecraft:chainmail_helmet{Enchantments:[{lvl:1s,id:"minecraft:binding_curse"}],display:{Name:"{\"translate\":\"Circlet of the Gods\"}",Lore:['"Playing games with us will"', '"cost your heart and soul."']},AttributeModifiers:[{AttributeName:"generic.maxHealth",Name:"generic.maxHealth",Amount:-12,Operation:0,UUIDMost:12763,UUIDLeast:129863786}],Unbreakable:1b,HideFlags:63}
replaceitem entity @a[scores={Failures=4}] armor.head minecraft:chainmail_helmet{Enchantments:[{lvl:1s,id:"minecraft:binding_curse"}],display:{Name:"{\"translate\":\"Circlet of the Gods\"}",Lore:['"Wrath of the Gods"', '"be upon you."']},AttributeModifiers:[{AttributeName:"generic.maxHealth",Name:"generic.maxHealth",Amount:-16,Operation:0,UUIDMost:12763,UUIDLeast:129863786}],Unbreakable:1b,HideFlags:63}
kill @a[scores={Failures=5},gamemode=survival]
