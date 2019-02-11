# bitmath:xor_inv_loop
# Internal calculation loop used by bitmath:detail/xor_inv
# $1 and $2 are input values
# $3 is remaining loop count
# By slicedlime

# Save input
scoreboard players operation $xor_inv_loop_in1 Registry = $1 Registry
scoreboard players operation $xor_inv_loop_in2 Registry = $2 Registry
scoreboard players operation $xor_inv_loop_c Registry = $3 Registry

# Store constant 2
scoreboard players set $xor_inv_loop_2 Registry 2

# bit(n) = in(n) % 2
scoreboard players operation $1 Registry %= $xor_inv_loop_2 Registry
scoreboard players operation $xor_inv_loop_bit1 Registry = $1 Registry
scoreboard players operation $1 Registry = $xor_inv_loop_in2 Registry
scoreboard players operation $1 Registry %= $xor_inv_loop_2 Registry
scoreboard players operation $xor_inv_loop_bit2 Registry = $1 Registry

# bit = xor(bit1, bit2)
scoreboard players operation $1 Registry = $xor_inv_loop_bit1 Registry
scoreboard players operation $2 Registry = $xor_inv_loop_bit2 Registry
function bitmath:xorbit

# r *= 2
scoreboard players operation $xor_inv_loop_r Registry *= $xor_inv_loop_2 Registry

# r += bit
scoreboard players operation $xor_inv_loop_r Registry += $r Registry

# c--
scoreboard players operation $3 Registry = $xor_inv_loop_c Registry
scoreboard players remove $3 Registry 1

# in(n) /= 2
scoreboard players operation $1 Registry = $xor_inv_loop_in1 Registry
scoreboard players operation $1 Registry /= $xor_inv_loop_2 Registry
scoreboard players operation $2 Registry = $xor_inv_loop_in2 Registry
scoreboard players operation $2 Registry /= $xor_inv_loop_2 Registry

# if c < 0, return
execute if score $3 Registry matches ..-1 run function bitmath:detail/xor_inv_cleanup
# else, call self
execute if score $3 Registry matches 0.. run function bitmath:detail/xor_inv_loop
