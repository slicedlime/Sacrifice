# Cycle the difficulty setting one step

scoreboard players add $Difficulty Settings 1
execute if score $Difficulty Settings matches 4 run scoreboard players set $Difficulty Settings 1

function praise:set_difficulty
function praise:menu
