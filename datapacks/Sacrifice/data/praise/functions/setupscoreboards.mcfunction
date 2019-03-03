# Set up scoreboard objectives

scoreboard objectives remove Const
scoreboard objectives remove Plural
scoreboard objectives remove Time
scoreboard objectives remove Calc
scoreboard objectives remove Info
scoreboard objectives remove Failures
scoreboard objectives remove ItemId
scoreboard objectives remove Target
scoreboard objectives remove Stats
scoreboard objectives remove Deaths
scoreboard objectives remove Sacrifice
scoreboard objectives remove Current
scoreboard objectives remove Day
scoreboard objectives remove Cooldown
scoreboard objectives remove Registry
scoreboard objectives remove SacrificeID

scoreboard objectives add Const dummy "Constant table"
scoreboard objectives add Plural dummy "Temporary plural calculations"
scoreboard objectives add Time dummy "Time of day"
scoreboard objectives add Calc dummy "Calculation scoreboard"
scoreboard objectives add Info dummy "Info"
scoreboard objectives add Failures dummy "Number of failures"
scoreboard objectives add ItemId dummy "Item Id Matchup Table"
scoreboard objectives add Target dummy "Target Values"
scoreboard objectives add Stats dummy "Stats"
scoreboard objectives add Deaths deathCount "Death count"
scoreboard objectives add Sacrifice dummy "Current Sacrifice count"
scoreboard objectives add Current dummy "Current Sacrifice item"
scoreboard objectives add Day dummy "Day counter"
scoreboard objectives add Cooldown dummy "Selection cooldown"
scoreboard objectives add Registry dummy "Math Registry"
scoreboard objectives add SacrificeID dummy "Unique IDs for sacrifice items"

# Set up constants

scoreboard players set 10 Const 10
scoreboard players set 13 Const 13
scoreboard players set -1 Const -1
scoreboard players set 1 Const 1
scoreboard players set 20 Const 20

# Ensure there is a seed

scoreboard players add $rng Registry 0
execute if score $rng Registry matches 0 run function praise:randomseed

# Set up teams

team add DeadPlayers
team modify DeadPlayers color black
scoreboard objectives setdisplay sidebar.team.black Stats
