# bitmath:xorbit
# Calculates the xor of two one-bit values in $1 and $2 into $r
# By slicedlime

scoreboard players operation $r Registry = $2 Registry
scoreboard players operation $r Registry -= $1 Registry
scoreboard players operation $r Registry *= $r Registry
