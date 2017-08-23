# Altar 1: Ugly

fill ~-2 ~ ~-2 ~2 ~ ~2 red_nether_brick
fill ~-1 ~ ~-1 ~1 ~1 ~1 bedrock
fill ~-2 ~6 ~-2 ~2 ~6 ~2 red_nether_brick
fill ~-1 ~6 ~-1 ~1 ~6 ~1 air
setblock ~ ~8 ~ sea_lantern
fill ~-2 ~1 ~-2 ~-2 ~5 ~-2 bone_block axis=y
fill ~2 ~1 ~-2 ~2 ~5 ~-2 bone_block axis=y
fill ~-2 ~1 ~2 ~-2 ~5 ~2 bone_block axis=y
fill ~2 ~1 ~2 ~2 ~5 ~2 bone_block axis=y

tp @e[tag=Main] ~ ~2 ~
tp @a[r=4] ~ ~2 ~