# Setup team entities

summon area_effect_cloud ~ 2 ~ {Tags:[Team,Chosen],CustomName:'"The Chosen Ones"',Duration: 2147483647}
team join chosen @e[tag=Chosen]
summon area_effect_cloud ~ 2 ~ {Tags:[Team,Servants],CustomName:'"The Servants of the Gods"',Duration: 2147483647}
team join servants @e[tag=Servants]
summon area_effect_cloud ~ 2 ~ {Tags:[Team,Fallen],CustomName:'"The Fallen"',Duration: 2147483647}
team join fallen @e[tag=Fallen]
summon area_effect_cloud ~ 2 ~ {Tags:[Team,Devout],CustomName:'"The Devout"',Duration: 2147483647}
team join devout @e[tag=Devout]
summon area_effect_cloud ~ 2 ~ {Tags:[Team,Clergy],CustomName:'"The Clergy"',Duration: 2147483647}
team join clergy @e[tag=Clergy]
summon area_effect_cloud ~ 2 ~ {Tags:[Team,Collectors],CustomName:'"The Collectors"',Duration: 2147483647}
team join collectors @e[tag=Collectors]
summon area_effect_cloud ~ 2 ~ {Tags:[Team,Forsaken],CustomName:'"The Forsaken"',Duration: 2147483647}
team join forsaken @e[tag=Forsaken]
summon area_effect_cloud ~ 2 ~ {Tags:[Team,Believers],CustomName:'"The Believers"',Duration: 2147483647}
team join believers @e[tag=Believers]

scoreboard objectives setdisplay sidebar.team.white Stats
