# Fail a team
function praise:failteam_common

tellraw @a[tag=OnTeam] [{"text":"You were not the Chosen this day!","color":"red"}]

tag @a remove OnTeam
