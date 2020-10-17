# Send rules blurb to @s

scoreboard players add @s SacrificeRules 1

tellraw @s[scores={SacrificeRules=1}] [{"text":"\nThe old Gods were silent, their altar vacant. As they faded from traditions and memories, lives went on... until now.","color":"light_purple","italic":true}]

tellraw @s[scores={SacrificeRules=150}] [{"text":"\nToday, they chose you - long may you regret stepping onto the altar this day.","color":"light_purple","italic":true}]

tellraw @s[scores={SacrificeRules=300}] [{"text":"\nIn the "},{"text":"Chosen","color":"gold"},{"text":" Minecraft challenge pack, you take the role of the Gods' Chosen."}]

tellraw @s[scores={SacrificeRules=450}] [{"text":"\nAt dawn every day, the Gods will demand a "},{"text":"sacrifice","color":"red"},{"text":" at the altar, and their whims and desires are mighty specific."}]

tellraw @s[scores={SacrificeRules=600}] [{"text":"\nAs days go on, the difficulty of these requests will increase."}]

tellraw @s[scores={SacrificeRules=750}] [{"text":"\nFailing to deliver is costly - the wrath of the Gods takes away "},{"text":"\u2665\u2665","color":"red"},{"text":" of maximum health."}]

tellraw @s[scores={SacrificeRules=900}] [{"text":"\n"},{"text":"Chosen","color":"gold"},{"text":" is a hardcore challenge of survival - dying ends the challenge and displays your final statistics."}]

tellraw @s[scores={SacrificeRules=1050}] [{"text":"\nYour score at the end of the game represents the number of seconds you stayed alive."}]

scoreboard players reset @s[scores={SacrificeRules=1050}] SacrificeRules
scoreboard players set @s SacrificeStatus 1100
