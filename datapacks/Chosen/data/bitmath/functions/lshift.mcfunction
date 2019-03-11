# bitmath:lshift
# Shifts $1 by $2 steps and stores the result in $r
# By slicedlime

scoreboard players operation $lshift_c Registry = $2 Registry
function bitmath:lshift_one
scoreboard players operation $1 Registry = $r Registry
scoreboard players remove $lshift_c Registry 1
scoreboard players operation $2 Registry = $lshift_c Registry
execute if score $2 Registry matches ..0 run scoreboard players reset $lshift_c Registry
execute if score $2 Registry matches 1.. run function bitmath:lshift
