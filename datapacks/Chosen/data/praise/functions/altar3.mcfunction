# Altar 3: Red sandstoney look

fill ~-4 ~ ~ ~4 ~ ~ smooth_red_sandstone_slab
fill ~ ~ ~-4 ~ ~ ~4 smooth_red_sandstone_slab

fill ~-2 ~ ~-2 ~2 ~ ~2 chiseled_red_sandstone

fill ~-3 ~ ~-1 ~3 ~ ~1 black_terracotta
fill ~-1 ~ ~-3 ~1 ~ ~3 black_terracotta

fill ~-2 ~ ~-1 ~2 ~ ~1 bedrock
fill ~-1 ~ ~-2 ~1 ~ ~2 bedrock

fill ~-2 ~1 ~-1 ~2 ~1 ~1 smooth_red_sandstone_slab
fill ~-1 ~1 ~-2 ~1 ~1 ~2 smooth_red_sandstone_slab

fill ~-1 ~1 ~-1 ~1 ~1 ~1 bedrock
setblock ~ ~1 ~ lodestone

execute positioned ~-2 ~1 ~-2 run function praise:altar3_pillar
execute positioned ~2 ~1 ~-2 run function praise:altar3_pillar
execute positioned ~-2 ~1 ~2 run function praise:altar3_pillar
execute positioned ~2 ~1 ~2 run function praise:altar3_pillar

fill ~-1 ~6 ~-1 ~1 ~6 ~1 air

teleport @e[tag=Main] ~ ~2 ~
teleport @a[distance=..4] ~ ~2 ~