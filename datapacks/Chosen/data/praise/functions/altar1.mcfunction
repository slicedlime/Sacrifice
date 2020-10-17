# Altar 1: Slightly less ugly

fill ~-4 ~ ~-1 ~4 ~ ~1 quartz_slab
fill ~-1 ~ ~-4 ~1 ~ ~4 quartz_slab
fill ~-3 ~ ~-2 ~3 ~ ~2 red_nether_bricks
fill ~-2 ~ ~-3 ~2 ~ ~3 red_nether_bricks
fill ~-2 ~ ~-2 ~2 ~ ~2 bedrock
fill ~-2 ~1 ~-2 ~2 ~1 ~2 nether_brick_slab
fill ~-1 ~ ~-1 ~1 ~1 ~1 bedrock
fill ~-2 ~6 ~-2 ~2 ~6 ~2 red_nether_bricks

fill ~-1 ~6 ~-1 ~1 ~6 ~1 air

setblock ~ ~6 ~ lodestone
setblock ~1 ~6 ~ end_rod[facing=east]
setblock ~-1 ~6 ~ end_rod[facing=west]
setblock ~ ~6 ~1 end_rod[facing=south]
setblock ~ ~6 ~-1 end_rod[facing=north]

fill ~-2 ~1 ~-2 ~-2 ~5 ~-2 bone_block[axis=y]
fill ~2 ~1 ~-2 ~2 ~5 ~-2 bone_block[axis=y]
fill ~-2 ~1 ~2 ~-2 ~5 ~2 bone_block[axis=y]
fill ~2 ~1 ~2 ~2 ~5 ~2 bone_block[axis=y]

teleport @e[tag=Main] ~ ~2 ~
teleport @a[distance=..4] ~ ~2 ~
