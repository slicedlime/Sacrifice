# Increase difficulty

scoreboard players operation $Main Sacrifice *= $Multiplier Settings
scoreboard players operation $Main Sacrifice /= 100 Const
scoreboard players operation $Main Sacrifice += $Addition Settings
execute if score $Main Sacrifice matches 20000.. run scoreboard players set $Main Sacrifice 20000
