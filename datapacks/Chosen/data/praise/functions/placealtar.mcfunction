kill @e[tag=Altar]

execute at @s run summon armor_stand ~ ~ ~ {Tags:["Altar"],Invisible:1,CustomName:"\"Altar Position\"",CustomNameVisible:1}

scoreboard players set @s SacrificeMenu 0

function praise:menu
