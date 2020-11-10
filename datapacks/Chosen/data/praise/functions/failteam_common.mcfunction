# Fail a team
function praise:tag_team

execute as @e[tag=Current] run effect give @a[tag=OnTeam] minecraft:slowness 2 2
execute as @e[tag=Current] run effect give @a[tag=OnTeam] minecraft:blindness 2 16
execute as @e[tag=Current] as @a[tag=OnTeam] at @s run playsound minecraft:block.beacon.deactivate master @s ~ ~ ~ 1 0.5
