execute store result score $Main Time run time query daytime
execute if score $Main Time matches 0 run function praise:newgoal

# There might be remaining paused entities from a previous pause, so unpause them
execute as @e[type=!player,nbt={NoAI:1b}] run data merge entity @s {NoAI:0b}

team join watchers @a[team=]
gamemode spectator @a[team=watchers,gamemode=!spectator,gamemode=!creative]

execute as @e[tag=Chosen,scores={Sacrifice=1..}] run title @a[team=chosen] actionbar [{"score":{"objective":"Sacrifice","name":"@s"}}, {"text":" x "}, {"selector":"@e[tag=Current]"}]
execute as @e[tag=Servants,scores={Sacrifice=1..}] run title @a[team=servants] actionbar [{"score":{"objective":"Sacrifice","name":"@s"}}, {"text":" x "}, {"selector":"@e[tag=Current]"}]
execute as @e[tag=Fallen,scores={Sacrifice=1..}] run title @a[team=fallen] actionbar [{"score":{"objective":"Sacrifice","name":"@s"}}, {"text":" x "}, {"selector":"@e[tag=Current]"}]
execute as @e[tag=Devout,scores={Sacrifice=1..}] run title @a[team=devout] actionbar [{"score":{"objective":"Sacrifice","name":"@s"}}, {"text":" x "}, {"selector":"@e[tag=Current]"}]
execute as @e[tag=Clergy,scores={Sacrifice=1..}] run title @a[team=clergy] actionbar [{"score":{"objective":"Sacrifice","name":"@s"}}, {"text":" x "}, {"selector":"@e[tag=Current]"}]
execute as @e[tag=Collectors,scores={Sacrifice=1..}] run title @a[team=collectors] actionbar [{"score":{"objective":"Sacrifice","name":"@s"}}, {"text":" x "}, {"selector":"@e[tag=Current]"}]
execute as @e[tag=Forsaken,scores={Sacrifice=1..}] run title @a[team=forsaken] actionbar [{"score":{"objective":"Sacrifice","name":"@s"}}, {"text":" x "}, {"selector":"@e[tag=Current]"}]
execute as @e[tag=Believers,scores={Sacrifice=1..}] run title @a[team=believers] actionbar [{"score":{"objective":"Sacrifice","name":"@s"}}, {"text":" x "}, {"selector":"@e[tag=Current]"}]
title @a[team=watchers] actionbar [{"score":{"objective":"Sacrifice","name":"@e[tag=Current,limit=1]"}}, {"text":" x "}, {"selector":"@e[tag=Current]"}, {"text": " per player"}]

# Put items on same team as thrower
execute as @a[scores={DropItem=1..},team=chosen] at @s run tag @e[type=item,limit=1,distance=..2,sort=nearest] add chosen
execute as @a[scores={DropItem=1..},team=servants] at @s run tag @e[type=item,limit=1,distance=..2,sort=nearest] add servants
execute as @a[scores={DropItem=1..},team=fallen] at @s run tag @e[type=item,limit=1,distance=..2,sort=nearest] add fallen
execute as @a[scores={DropItem=1..},team=devout] at @s run tag @e[type=item,limit=1,distance=..2,sort=nearest] add devout
execute as @a[scores={DropItem=1..},team=clergy] at @s run tag @e[type=item,limit=1,distance=..2,sort=nearest] add clergy
execute as @a[scores={DropItem=1..},team=collectors] at @s run tag @e[type=item,limit=1,distance=..2,sort=nearest] add collectors
execute as @a[scores={DropItem=1..},team=forsaken] at @s run tag @e[type=item,limit=1,distance=..2,sort=nearest] add forsaken
execute as @a[scores={DropItem=1..},team=believers] at @s run tag @e[type=item,limit=1,distance=..2,sort=nearest] add believers
scoreboard players reset @a DropItem

execute at @e[tag=Main] as @e[type=item,distance=..2] run function praise:sacrifice

scoreboard players operation @a Failures -= $Main Failures
execute if entity @a[scores={Failures=..-1}] run function praise:failure
scoreboard players operation @a Failures = $Main Failures

execute if entity @a[nbt=!{Inventory:[{id:"minecraft:chainmail_helmet"}]}] run function praise:failure 

team join watchers @a[scores={Deaths=1..}]
gamemode spectator @a[scores={Deaths=1..}]
scoreboard players set @a Deaths 0

execute if entity @p[gamemode=survival] run scoreboard players add Ticks Info 1
execute if entity @p[gamemode=survival] run scoreboard players operation Seconds Info = Ticks Info
execute if entity @p[gamemode=survival] run scoreboard players operation Seconds Info /= 20 Const
execute if entity @p[gamemode=survival] run scoreboard players operation Score Stats = Seconds Info

# Prevent player from sleeping

tellraw @a[nbt={SleepTimer:1s}] [{"text":"The Gods' Chosen do not sleep!","color":"red", "italic": true}]
execute as @a[nbt={SleepTimer:50s}] at @s run setblock ~ ~ ~ air destroy

# Pause trigger
scoreboard players enable @a Pause
execute as @a[scores={Pause=1..},limit=1] run function praise:pause
