# Send help blurb to @s

scoreboard players add @s SacrificeHelp 1

tellraw @s[scores={SacrificeHelp=1}] [{"text":"\nThere are 3 settings for "}, {"text":"Chosen", "color":"gold"}, {"text": ": "}, {"text": "Difficulty", "color": "green"}, {"text": ", "}, {"text": "Mode", "color": "green"}, {"text": " and "}, {"text": "Seed", "color": "green"}, {"text":"."}]

tellraw @s[scores={SacrificeHelp=100}] [{"text":"\n- "}, {"text":"Difficulty", "color": "green"}, {"text": " controls how hard items the Gods ask for. There are 3 options - "}, {"text":"Easy","color":"aqua"}, {"text":", "}, {"text": "Medium", "color": "aqua"}, {"text": " and "}, {"text": "Hard", "color": "aqua"}, {"text": "."}]

tellraw @s[scores={SacrificeHelp=200}] [{"text":"\n- "}, {"text": "Seed", "color": "green"}, {"text": " controls the randomness of the game. Just like the Minecraft world seed controls the shape of the world, the "}, {"text":"Chosen","color":"gold"}, {"text": " seed controls which items are requested."}]

tellraw @s[scores={SacrificeHelp=300}] [{"text":"\n- "}, {"text": "Mode", "color": "green"}, {"text": " determines the penalties and behaviors of item requests."}]

tellraw @s[scores={SacrificeHelp=400}] [{"text":"\n  "},{"text": "Challenge", "color": "aqua"}, {"text": " mode is the default. Here the full day is available to all teams for handing in an item. If any team fails, the difficulty remains the same the next day."}]
tellraw @s[scores={SacrificeHelp=700}] [{"text":"\n  "},{"text": "Competitive", "color": "aqua"}, {"text": " mode is like "}, {"text": "Challenge", "color": "aqua"}, {"text": " mode except the difficulty increases every day regardless of success or failure. This guarantees that the seed produces a unique string of item requests that is always the same."}]
tellraw @s[scores={SacrificeHelp=1000}] [{"text":"\n  In "},{"text": "Elimination", "color": "aqua"}, {"text": " mode, the game is a race - only the first team to get an item sacrifice is spared - everyone else takes a "}, {"text":"\u2665\u2665","color":"red"},{"text":" maximum health penalty."}]

scoreboard players reset @s[scores={SacrificeHelp=1150}] SacrificeHelp
scoreboard players set @s SacrificeStatus 1100
