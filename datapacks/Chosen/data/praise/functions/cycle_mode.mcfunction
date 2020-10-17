# Cycle the mode setting one step

scoreboard players add $Mode Settings 1
execute if score $Mode Settings matches 4 run scoreboard players set $Mode Settings 1

function praise:set_mode
function praise:menu
