stats entity @e[tag=Main] set QueryResult @s Time
scoreboard players add @e[tag=Main] Time 0
execute @e[tag=Main] ~ ~ ~ time query daytime

function praise:newgoal if @e[tag=Main,score_Time=0]

execute @e[tag=Current] ~ ~ ~ title @a actionbar [{"score":{"objective":"Sacrifice","name":"@e[tag=Current]"}}, {"text":" x "}, {"selector":"@e[tag=Current]"}]

execute @e[tag=Main] ~ ~ ~ execute @e[type=item,r=2] ~ ~ ~ function praise:sacrifice

scoreboard players operation @a Failures -= @e[tag=Main] Failures
function praise:failure if @a[score_Failures=-1]
scoreboard players operation @a Failures = @e[tag=Main] Failures

scoreboard players tag @a add HasHelmet {Inventory:[{id:"minecraft:chainmain_helmet"}]}
function praise:failure if @a[tag=!HasHelmet]

scoreboard teams join DeadPlayers @a[score_Deaths_min=1]
gamemode spectator @a[score_Deaths_min=1]
scoreboard players set @a Deaths 0

execute @p[m=survival] ~ ~ ~ scoreboard players add Ticks Info 1
execute @p[m=survival] ~ ~ ~ scoreboard players operation Seconds Info = Ticks Info
execute @p[m=survival] ~ ~ ~ scoreboard players operation Seconds Info /= 20 Const
execute @p[m=survival] ~ ~ ~ scoreboard players operation Score Stats = Seconds Info
