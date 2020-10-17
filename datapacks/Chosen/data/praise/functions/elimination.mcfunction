# "Fail" a team who was not the first in elimination mode
scoreboard players add @s Failures 1
function praise:failteam_elimination

# Remove the sacrifice of the day
scoreboard players set @s Sacrifice 0

# Update helmets
function praise:failure
