# Send message about player joining team

execute if entity @a[tag=JoinedTeam,team=chosen] run tellraw @a ["",{"selector":"@a[tag=JoinedTeam,team=chosen]"},{"text":" has joined "},{"text":"The Chosen Ones","color":"gold"}]
execute if entity @a[tag=JoinedTeam,team=servants] run tellraw @a ["",{"selector":"@a[tag=JoinedTeam,team=servants]"},{"text":" has joined "},{"text":"The Servants of the Gods","color":"aqua"}]
execute if entity @a[tag=JoinedTeam,team=fallen] run tellraw @a ["",{"selector":"@a[tag=JoinedTeam,team=fallen]"},{"text":" has joined "},{"text":"The Fallen","color":"gray"}]
execute if entity @a[tag=JoinedTeam,team=devout] run tellraw @a ["",{"selector":"@a[tag=JoinedTeam,team=devout]"},{"text":" has joined "},{"text":"The Devout","color":"red"}]
execute if entity @a[tag=JoinedTeam,team=clergy] run tellraw @a ["",{"selector":"@a[tag=JoinedTeam,team=clergy]"},{"text":" has joined "},{"text":"The Clergy","color":"yellow"}]
execute if entity @a[tag=JoinedTeam,team=collectors] run tellraw @a ["",{"selector":"@a[tag=JoinedTeam,team=collectors]"},{"text":" has joined "},{"text":"The Collectors","color":"light_purple"}]
execute if entity @a[tag=JoinedTeam,team=forsaken] run tellraw @a ["",{"selector":"@a[tag=JoinedTeam,team=forsaken]"},{"text":" has joined "},{"text":"The Forsaken","color":"dark_red"}]
execute if entity @a[tag=JoinedTeam,team=believers] run tellraw @a ["",{"selector":"@a[tag=JoinedTeam,team=believers]"},{"text":" has joined "},{"text":"The Believers","color":"green"}]
execute if entity @a[tag=JoinedTeam,team=watchers] run tellraw @a ["",{"selector":"@a[tag=JoinedTeam,team=watchers]"},{"text":" has joined "},{"text":"The Watchers","color":"white","italic":true}]

tag @a remove JoinedTeam