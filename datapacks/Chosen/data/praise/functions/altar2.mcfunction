# Altar 2: Some blackstone mixed in

fill ~-4 ~ ~-1 ~4 ~ ~1 polished_blackstone_slab
fill ~-1 ~ ~-4 ~1 ~ ~4 polished_blackstone_slab
fill ~-3 ~ ~-2 ~3 ~ ~2 polished_blackstone_slab
fill ~-2 ~ ~-3 ~2 ~ ~3 polished_blackstone_slab

fill ~-2 ~ ~-2 ~2 ~ ~2 bone_block[axis=y]

fill ~-2 ~ ~-1 ~2 ~ ~1 bedrock
fill ~-1 ~ ~-2 ~1 ~ ~2 bedrock

fill ~-3 ~ ~-1 ~-3 ~ ~1 bone_block[axis=z]
fill ~3 ~ ~-1 ~3 ~ ~1 bone_block[axis=z]
fill ~-1 ~ ~-3 ~1 ~ ~-3 bone_block[axis=x]
fill ~-1 ~ ~3 ~1 ~ ~3 bone_block[axis=x]

setblock ~-3 ~ ~ bone_block[axis=y]
setblock ~3 ~ ~ bone_block[axis=y]
setblock ~ ~ ~-3 bone_block[axis=y]
setblock ~ ~ ~3 bone_block[axis=y]

fill ~-2 ~1 ~-1 ~2 ~1 ~1 polished_blackstone_slab
fill ~-1 ~1 ~-2 ~1 ~1 ~2 polished_blackstone_slab

fill ~-1 ~1 ~-1 ~1 ~1 ~1 bedrock

fill ~-1 ~6 ~-1 ~1 ~6 ~1 air

setblock ~ ~6 ~ lodestone
setblock ~1 ~6 ~ gray_stained_glass_pane[west=true]
setblock ~-1 ~6 ~ gray_stained_glass_pane[east=true]
setblock ~ ~6 ~1 gray_stained_glass_pane[north=true]
setblock ~ ~6 ~-1 gray_stained_glass_pane[south=true]

fill ~-2 ~1 ~-2 ~-2 ~5 ~-2 red_nether_brick_wall[up=true]
fill ~2 ~1 ~-2 ~2 ~5 ~-2 red_nether_brick_wall[up=true]
fill ~-2 ~1 ~2 ~-2 ~5 ~2 red_nether_brick_wall[up=true]
fill ~2 ~1 ~2 ~2 ~5 ~2 red_nether_brick_wall[up=true]
setblock ~-2 ~6 ~-2 end_rod[facing=up]
setblock ~-2 ~6 ~2 end_rod[facing=up]
setblock ~2 ~6 ~-2 end_rod[facing=up]
setblock ~2 ~6 ~2 end_rod[facing=up]

teleport @e[tag=Main] ~ ~2 ~
teleport @a[distance=..4] ~ ~2 ~