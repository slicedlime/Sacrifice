# Send rules blurb to @s

tellraw @s [{"text":"Welcome to Project Sacrifice by ","color":"gold"},{"text":"slicedlime","color":"green","clickEvent":{"action":"open_url","value":"https://www.youtube.com/slicedlime"}}]
tellraw @s [""]
tellraw @s ["In Project Sacrifice, you have been chosen by the Gods."]
tellraw @s ["Every day, they will require a sacrifice to be made."]
tellraw @s ["Sacrifice items by throwing them on the altar."]
tellraw @s ["Failure to sacrifice items before the next dawn will lower your maximum health by 2 hearts."]
tellraw @s ["The items requested will increase in difficulty as time goes on."]
tellraw @s ["This is a hardcore challenge - the game ends when you die, and your score is calculated from the time you stayed alive."]

scoreboard players set @s SacrificeMenu 0
scoreboard players set @s SacrificeStatus 101
