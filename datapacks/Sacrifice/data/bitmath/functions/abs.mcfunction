# bitmath:abs
# Calculates the absolute value of $1 into $r
# By slicedlime

scoreboard players operation $r Registry = $1 Registry
scoreboard players set $1 Registry -1
execute if score $r Registry matches ..-1 run scoreboard players operation $r Registry *= $1 Registry
