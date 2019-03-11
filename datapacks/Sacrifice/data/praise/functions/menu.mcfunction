# Display a startup menu

scoreboard players enable @a SacrificeMenu
scoreboard players enable @a Seed

tellraw @s ["\n\n\n\n\n\n\n\n\n\n\n\n\n"]
tellraw @s [{"text":"Welcome to Chosen by ","color":"gold"},{"text":"slicedlime","color":"green","clickEvent":{"action":"open_url","value":"https://www.youtube.com/slicedlime"}}]
tellraw @s [""]
tellraw @s ["Game options:"]
tellraw @s [{"text":"- "},{"text":"[","color":"gold","bold": true},{"text":"Game Rules", "color":"green","clickEvent":{"action":"run_command", "value":"/trigger SacrificeMenu set 1"}},{"text":"]","color":"gold", "bold": true}]
tellraw @s [{"text":"- "},{"text":"[","color":"gold","bold": true},{"text":"Change Seed: ", "color":"green", "extra": [{"score":{"objective":"Registry","name":"$rng"}}],"clickEvent":{"action":"suggest_command","value":"/trigger Seed set "}},{"text":"]","color":"gold", "bold": true}]
tellraw @s [{"text":"- "},{"text":"[","color":"gold","bold": true},{"text":"Set Altar Position", "color":"green", "clickEvent":{"action":"run_command","value":"/trigger SacrificeMenu set 2"}},{"text":"]","color":"gold", "bold": true}]
execute if entity @e[type=armor_stand,tag=Altar] run tellraw @s [{"text":"- "},{"text":"[","color":"gold","bold": true},{"text":"Start Game at Altar", "color":"green", "clickEvent":{"action":"run_command","value":"/trigger SacrificeMenu set 3"}},{"text":"]","color":"gold", "bold": true}]
execute unless entity @e[type=armor_stand,tag=Altar] run tellraw @s [{"text":"- "},{"text":"[","color":"gold","bold": true},{"text":"Start Game Here", "color":"green", "clickEvent":{"action":"run_command","value":"/trigger SacrificeMenu set 3"}},{"text":"]","color":"gold", "bold": true}]
