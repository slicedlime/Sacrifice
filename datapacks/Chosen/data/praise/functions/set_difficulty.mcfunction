# Set the storage Difficulty string based on current difficulty

execute if score $Difficulty Settings matches 1 run data merge storage praise:data {Difficulty:"Easy"}
execute if score $Difficulty Settings matches 2 run data merge storage praise:data {Difficulty:"Medium"}
execute if score $Difficulty Settings matches 3 run data merge storage praise:data {Difficulty:"Hard"}
