# bitmath:rng
# Get a random number based on a seed in $rng
# By slicedlime

scoreboard players operation $1 Registry = $rng Registry
scoreboard players set $2 Registry 16
scoreboard players set $r Registry 0
function bitmath:detail/rng
scoreboard players operation $rng Registry = $1 Registry
scoreboard players reset $1 Registry
scoreboard players reset $2 Registry

scoreboard players reset $rng_r Registry
scoreboard players reset $rng_c Registry
scoreboard players reset $rng_bit Registry
