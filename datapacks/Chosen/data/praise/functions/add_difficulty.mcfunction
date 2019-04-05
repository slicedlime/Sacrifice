# Increase difficulty

scoreboard players operation $Main Sacrifice *= 13 Const
scoreboard players operation $Main Sacrifice /= 10 Const
scoreboard players add $Main Sacrifice 4
execute if score $Main Sacrifice matches 20000.. run scoreboard players set $Main Sacrifice 20000
