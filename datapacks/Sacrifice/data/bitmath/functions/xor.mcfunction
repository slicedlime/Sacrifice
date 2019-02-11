# bitmath:xor
# Calculates the xor of two values in $1 and $2 into $r
# By slicedlime

# Store inputs
scoreboard players operation $xor_in1 Registry = $1 Registry
scoreboard players operation $xor_in2 Registry = $2 Registry

# Strip sign bits
scoreboard players operation $1 Registry = $xor_in1 Registry
function bitmath:abs
scoreboard players operation $xor_in1 Registry = $r Registry

scoreboard players operation $1 Registry = $xor_in2 Registry
function bitmath:abs
scoreboard players operation $xor_in2 Registry = $r Registry

# Xor bits

scoreboard players operation $1 Registry = $xor_in1 Registry
scoreboard players operation $2 Registry = $xor_in2 Registry
function bitmath:detail/xor_inv
scoreboard players operation $1 Registry = $r Registry
scoreboard players set $2 Registry 31
function bitmath:reversebits

# Reset registry

scoreboard players reset $xor_in1 Registry
scoreboard players reset $xor_in2 Registry
