# Set the storage Mode string based on current mode

execute if score $Mode Settings matches 1 run data merge storage praise:data {Mode:"Challenge"}
execute if score $Mode Settings matches 2 run data merge storage praise:data {Mode:"Competitive"}
execute if score $Mode Settings matches 3 run data merge storage praise:data {Mode:"Elimination"}
