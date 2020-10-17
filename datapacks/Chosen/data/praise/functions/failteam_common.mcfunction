# Fail a team
function praise:tag_team

execute as @e[tag=Current] run effect give @a[tag=OnTeam] minecraft:slowness 2 2
execute as @e[tag=Current] run effect give @a[tag=OnTeam] minecraft:blindness 2 16
execute as @e[tag=Current] run playsound minecraft:block.beacon.deactivate master @a[tag=OnTeam] ~ ~ ~ 1 0.5
