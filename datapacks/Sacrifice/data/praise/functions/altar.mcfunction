# Build an altar

# Randomly pick one
function bitmath:rng

scoreboard players operation $Altar Calc = $r Registry
scoreboard players set $Count Calc 1
scoreboard players operation $Altar Calc %= $Count Calc

execute if score $Altar Calc matches 0 run function praise:altar1

scoreboard players reset $Count Calc
scoreboard players reset $Altar Calc
