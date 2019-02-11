# bitmath:detail/reversebits
# Reverse bit order of $2 bits of $1
# By slicedlime

scoreboard players operation $reversebits_c Registry = $2 Registry
scoreboard players operation $reversebits_bit Registry = $1 Registry
scoreboard players set $2 Registry 2
scoreboard players operation $reversebits_bit Registry %= $2 Registry
scoreboard players operation $r Registry *= $2 Registry
scoreboard players operation $r Registry += $reversebits_bit Registry
scoreboard players operation $1 Registry /= $2 Registry

scoreboard players remove $reversebits_c Registry 1
scoreboard players operation $2 Registry = $reversebits_c Registry
execute if score $2 Registry matches 1.. run function bitmath:detail/reversebits
