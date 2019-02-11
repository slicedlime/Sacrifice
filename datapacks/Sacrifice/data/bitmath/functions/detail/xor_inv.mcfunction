# bitmath:xor_inv
# Calculates the xor of positive values $1 and $2 and stores the result in reverse bit order in $r
# By slicedlime

scoreboard players set $3 Registry 30
function bitmath:detail/xor_inv_loop
scoreboard players reset $3 Registry
