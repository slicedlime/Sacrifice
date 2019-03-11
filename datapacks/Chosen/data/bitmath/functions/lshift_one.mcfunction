# bitmath:lshift_one
# Shifts $1 by 1 step left and stores the result in $r
# By slicedlime

scoreboard players operation $r Registry = $1 Registry
scoreboard players set $lshift_one_max Registry 1073741824
execute if score $r Registry >= $lshift_one_max Registry run scoreboard players operation $r Registry -= $lshift_one_max Registry
scoreboard players set $lshift_one_2 Registry 2
scoreboard players operation $r Registry *= $lshift_one_2 Registry
scoreboard players reset $lshift_one_2 Registry
scoreboard players reset $lshift_one_max Registry
