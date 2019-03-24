# Show team switching menu to @s

tellraw @s [{"text":"- "},{"text":"[","color":"gold","bold": true},{"text":"Join ", "color":"white","clickEvent":{"action":"run_command", "value":"/trigger SacrificeMenu set 101"},"extra":[{"text":"The Chosen Ones", "color":"gold"}]},{"text":"]","color":"gold", "bold": true}]
tellraw @s [{"text":"- "},{"text":"[","color":"gold","bold": true},{"text":"Join ", "color":"white","clickEvent":{"action":"run_command", "value":"/trigger SacrificeMenu set 102"},"extra":[{"text":"The Servants of the Gods", "color":"aqua"}]},{"text":"]","color":"gold", "bold": true}]
tellraw @s [{"text":"- "},{"text":"[","color":"gold","bold": true},{"text":"Join ", "color":"white","clickEvent":{"action":"run_command", "value":"/trigger SacrificeMenu set 103"},"extra":[{"text":"The Fallen", "color":"gray"}]},{"text":"]","color":"gold", "bold": true}]
tellraw @s [{"text":"- "},{"text":"[","color":"gold","bold": true},{"text":"Join ", "color":"white","clickEvent":{"action":"run_command", "value":"/trigger SacrificeMenu set 104"},"extra":[{"text":"The Devout", "color":"red"}]},{"text":"]","color":"gold", "bold": true}]
tellraw @s [{"text":"- "},{"text":"[","color":"gold","bold": true},{"text":"Join ", "color":"white","clickEvent":{"action":"run_command", "value":"/trigger SacrificeMenu set 105"},"extra":[{"text":"The Clergy", "color":"yellow"}]},{"text":"]","color":"gold", "bold": true}]
tellraw @s [{"text":"- "},{"text":"[","color":"gold","bold": true},{"text":"Join ", "color":"white","clickEvent":{"action":"run_command", "value":"/trigger SacrificeMenu set 106"},"extra":[{"text":"The Collectors", "color":"light_purple"}]},{"text":"]","color":"gold", "bold": true}]
tellraw @s [{"text":"- "},{"text":"[","color":"gold","bold": true},{"text":"Join ", "color":"white","clickEvent":{"action":"run_command", "value":"/trigger SacrificeMenu set 107"},"extra":[{"text":"The Forsaken", "color":"dark_red"}]},{"text":"]","color":"gold", "bold": true}]
tellraw @s [{"text":"- "},{"text":"[","color":"gold","bold": true},{"text":"Join ", "color":"white","clickEvent":{"action":"run_command", "value":"/trigger SacrificeMenu set 108"},"extra":[{"text":"The Believers", "color":"green"}]},{"text":"]","color":"gold", "bold": true}]
tellraw @s [{"text":"- "},{"text":"[","color":"gold","bold": true},{"text":"Join ", "color":"white","clickEvent":{"action":"run_command", "value":"/trigger SacrificeMenu set 109"},"extra":[{"text":"The Watchers (Spectate)", "color":"white", "italic":true}]},{"text":"]","color":"gold", "bold": true}]

scoreboard players add @a SacrificeStatus 101
