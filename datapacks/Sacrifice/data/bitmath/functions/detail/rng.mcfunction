# bitmath:detail/rng
# Get a $2-bit random number based on a LFSR in $1
# By slicedlime

scoreboard players operation $rng_c Registry = $2 Registry
scoreboard players operation $rng_r Registry = $r Registry
function bitmath:lfsr
scoreboard players operation $rng_bit Registry = $r Registry
scoreboard players set $2 Registry 2
scoreboard players operation $rng_bit Registry %= $2 Registry
scoreboard players operation $rng_r Registry *= $2 Registry
scoreboard players operation $rng_r Registry += $rng_bit Registry
scoreboard players remove $rng_c Registry 1
scoreboard players operation $1 Registry = $r Registry
scoreboard players operation $r Registry = $rng_r Registry
scoreboard players operation $2 Registry = $rng_c Registry

execute if score $2 Registry matches 1.. run function bitmath:detail/rng
