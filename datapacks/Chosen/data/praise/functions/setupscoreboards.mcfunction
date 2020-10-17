# Set up scoreboard objectives

scoreboard objectives add Const dummy "Constant table"
scoreboard objectives add Plural dummy "Temporary plural calculations"
scoreboard objectives add Time dummy "Time of day"
scoreboard objectives add Calc dummy "Calculation scoreboard"
scoreboard objectives add Info dummy "Info"
scoreboard objectives add Failures dummy "Number of failures"
scoreboard objectives add ItemId dummy "Item Id Matchup Table"
scoreboard objectives add Stats dummy "Stats"
scoreboard objectives add Deaths deathCount "Death count"
scoreboard objectives add Sacrifice dummy "Current Sacrifice count"
scoreboard objectives add Current dummy "Current Sacrifice item"
scoreboard objectives add Day dummy "Day counter"
scoreboard objectives add Cooldown dummy "Selection cooldown"
scoreboard objectives add SacrificeID dummy "Unique IDs for sacrifice items"
scoreboard objectives add BaseCost dummy "Target Base Cost"
scoreboard objectives add RepeatCost dummy "Target Repeat Cost"
scoreboard objectives add DropItem minecraft.custom:minecraft.drop "Items Dropped"
scoreboard objectives add Health health "Health"
scoreboard objectives add Pause trigger "Pause command"
scoreboard objectives add Unpause trigger "Unpause command"
scoreboard objectives setdisplay list Health

# Set up constants

scoreboard players set 10 Const 10
scoreboard players set 100 Const 100
scoreboard players set -1 Const -1
scoreboard players set 1 Const 1
scoreboard players set 20 Const 20
