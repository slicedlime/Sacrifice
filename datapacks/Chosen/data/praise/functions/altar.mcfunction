# Build an altar

# Randomly pick one
function bitmath:rng

scoreboard players operation $Altar Calc = $r Registry
scoreboard players set $Count Calc 2
scoreboard players operation $Altar Calc %= $Count Calc

execute if score $Altar Calc matches 0 run function praise:altar1
execute if score $Altar Calc matches 1 run function praise:altar2

scoreboard players reset $Count Calc
scoreboard players reset $Altar Calc
