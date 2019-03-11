# bitmath:lfsr
# Runs one step of a LFSR in $1
# By slicedlime

# v = lfsr = $1
scoreboard players operation $lfsr_v Registry = $1 Registry

# v2 = rshift(lfsr, 2)
scoreboard players set $2 Registry 2
function bitmath:rshift
scoreboard players operation $lfsr_v2 Registry = $r Registry

# v3 = rshift(lfsr, 3)
scoreboard players operation $1 Registry = $r Registry
function bitmath:rshift_one
scoreboard players operation $lfsr_v3 Registry = $r Registry

# v5 = rshift(lfsr, 5)
scoreboard players operation $1 Registry = $r Registry
scoreboard players set $2 Registry 2
function bitmath:rshift
scoreboard players operation $lfsr_v5 Registry = $r Registry

# bit = xor(xor(v1, v2), xor(v3, v4)) % 2
scoreboard players operation $1 Registry = $lfsr_v Registry
scoreboard players operation $2 Registry = $lfsr_v2 Registry
function bitmath:xor
scoreboard players operation $lfsr_bit Registry = $r Registry

scoreboard players operation $1 Registry = $lfsr_v3 Registry
scoreboard players operation $2 Registry = $lfsr_v5 Registry
function bitmath:xor
scoreboard players operation $1 Registry = $r Registry
scoreboard players operation $2 Registry = $lfsr_bit Registry
function bitmath:xor
scoreboard players operation $lfsr_bit Registry = $r Registry
scoreboard players set $2 Registry 2
scoreboard players operation $lfsr_bit Registry %= $2 Registry

# lfsr = rshift(lfsr, 1) + lshift(bit, 15)
scoreboard players operation $1 Registry = $lfsr_v Registry
function bitmath:rshift_one
scoreboard players operation $lfsr_v Registry = $r Registry

scoreboard players operation $1 Registry = $lfsr_bit Registry
scoreboard players set $2 Registry 15
function bitmath:lshift
scoreboard players operation $r Registry += $lfsr_v Registry

# Clean up
scoreboard players reset $lfsr_v Registry
scoreboard players reset $lfsr_v2 Registry
scoreboard players reset $lfsr_v3 Registry
scoreboard players reset $lfsr_v5 Registry
scoreboard players reset $lfsr_bit Registry
scoreboard players reset $2 Registry
