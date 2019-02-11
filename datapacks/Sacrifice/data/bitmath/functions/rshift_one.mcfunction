# bitmath:rshift_one
# Shifts $1 by 1 step right and stores the result in $r
# By slicedlime

scoreboard players operation $r Registry = $1 Registry
scoreboard players set $rshift_one_2 Registry 2
scoreboard players operation $r Registry /= $rshift_one_2 Registry
scoreboard players reset $rshift_one_2 Registry
