# Set up scoreboard objectives

scoreboard objectives add Const dummy Constant table
scoreboard objectives add Plural dummy Temporary plural calculations
scoreboard objectives add Time dummy Time of day
scoreboard objectives add Calc dummy Calculation scoreboard
scoreboard objectives add Info dummy Info
scoreboard objectives add Failures dummy Number of failures
scoreboard objectives add ItemId dummy Item Id Matchup Table
scoreboard objectives add Target dummy Target Values
scoreboard objectives add Stats dummy Stats
scoreboard objectives add Deaths deathCount Death count
scoreboard objectives add Sacrifice dummy Current Sacrifice count
scoreboard objectives add Current dummy Current Sacrifice item
scoreboard objectives add Day dummy Day counter
scoreboard objectives add Cooldown dummy Selection cooldown

# Set up constants

scoreboard players set 10 Const 10
scoreboard players set 13 Const 13

# Clear old values

scoreboard players reset * Failures
scoreboard players reset Ticks Info
scoreboard players reset * ItemId
