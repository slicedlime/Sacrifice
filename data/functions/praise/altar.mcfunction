# Build an altar

summon area_effect_cloud ~ ~ ~ {Tags:[Altar,KAltar,A1],Duration:1}


# Randomly pick one
scoreboard players tag @r[type=area_effect_cloud,tag=Altar] remove KAltar
kill @e[type=area_effect_cloud,tag=KAltar]

function praise:altar1 if @e[tag=A1]
