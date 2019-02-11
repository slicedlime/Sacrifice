# bitmath:sign
# Calculates the sign (1 for negative) of a value in $1 into $r
# By slicedlime

scoreboard players set $r Registry 0
execute if score $1 Registry matches ..-1 run scoreboard players set $r Registry 1
