# bitmath:xor_inv_cleanup
# Internal loop ender used by bitmath:xor_inv_loop
# By slicedlime

scoreboard players operation $r Registry = $xor_inv_loop_r Registry
scoreboard players reset $xor_inv_loop_2 Registry
scoreboard players reset $xor_inv_loop_in1 Registry
scoreboard players reset $xor_inv_loop_in2 Registry
scoreboard players reset $xor_inv_loop_c Registry
scoreboard players reset $xor_inv_loop_bit1 Registry
scoreboard players reset $xor_inv_loop_bit2 Registry
scoreboard players reset $xor_inv_loop_r Registry
