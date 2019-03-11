# bitmath:rshift
# Shifts $1 by $2 steps and stores the result in $r
# By slicedlime

scoreboard players operation $rshift_c Registry = $2 Registry
function bitmath:rshift_one
scoreboard players operation $1 Registry = $r Registry
scoreboard players remove $rshift_c Registry 1
scoreboard players operation $2 Registry = $rshift_c Registry
execute if score $2 Registry matches ..0 run scoreboard players reset $rshift_c Registry
execute if score $2 Registry matches 1.. run function bitmath:rshift
