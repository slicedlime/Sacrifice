execute store result score $Main Time run time query daytime
execute if score $Main Time matches 0 run function praise:newgoal

execute if score $Running Info matches 1 unless entity @a[team=!DeadPlayers] run function praise:pause
execute unless score $Running Info matches 1 if entity @a[team=!DeadPlayers] run function praise:unpause

execute as @e[tag=Current] run title @a actionbar [{"score":{"objective":"Sacrifice","name":"@e[tag=Current]"}}, {"text":" x "}, {"selector":"@e[tag=Current]"}]

execute at @e[tag=Main] as @e[type=item,distance=..2] run function praise:sacrifice

scoreboard players operation @a Failures -= $Main Failures
execute if entity @a[scores={Failures=..-1}] run function praise:failure
scoreboard players operation @a Failures = $Main Failures

execute if entity @a[nbt=!{Inventory:[{id:"minecraft:chainmail_helmet"}]}] run function praise:failure 

team join DeadPlayers @a[scores={Deaths=1..}]
gamemode spectator @a[scores={Deaths=1..}]
scoreboard players set @a Deaths 0

execute if entity @p[gamemode=survival] run scoreboard players add Ticks Info 1
execute if entity @p[gamemode=survival] run scoreboard players operation Seconds Info = Ticks Info
execute if entity @p[gamemode=survival] run scoreboard players operation Seconds Info /= 20 Const
execute if entity @p[gamemode=survival] run scoreboard players operation Score Stats = Seconds Info

# Prevent player from sleeping

tellraw @a[nbt={Sleeping:1b}] [{"text":"The Gods' Chosen do not sleep","color":"red"}]
execute as @a[nbt={Sleeping:1b}] at @s run setblock ~ ~ ~ air destroy
