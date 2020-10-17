# Fail a team
function praise:tag_team
function praise:failteam_common

execute as @e[tag=Current] run tellraw @a[tag=OnTeam] [{"text":"You were not the Chosen this day!","color":"red"}]

tag @a remove OnTeam
