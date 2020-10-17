# Fail a team
function praise:tag_team
function praise:failteam_common

execute as @e[tag=Current] run tellraw @a[tag=OnTeam] [{"text":"Your failure to deliver has angered the Gods!","color":"red"}]

tag @a remove OnTeam
