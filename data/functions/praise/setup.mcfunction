# Summon all the aecs and set scores

scoreboard players reset * Failures
scoreboard players reset Ticks Info

kill @e[tag=Main]

summon area_effect_cloud -200 1 200 {Tags:[Main],CustomName:"Main",Duration: 2147483647}

kill @e[tag=Target]

summon area_effect_cloud -200 1 200 {Tags:[Target,T1,Apple],CustomName:"Apple",Duration: 2147483647}
summon area_effect_cloud -200 1 200 {Tags:[Target,T1,CoalBlock],CustomName:"Coal Block",Duration: 2147483647}
summon area_effect_cloud -200 1 200 {Tags:[Target,T1,IronIngot],CustomName:"Iron Ingot“,Duration: 2147483647}
summon area_effect_cloud -200 1 200 {Tags:[Target,T1,Leather],CustomName:"Leather",Duration: 2147483647}
summon area_effect_cloud -200 1 200 {Tags:[Target,T1,Feather],CustomName:"Feather",Duration: 2147483647}
summon area_effect_cloud -200 1 200 {Tags:[Target,T1,Bone],CustomName:"Bone",Duration: 2147483647}
summon area_effect_cloud -200 1 200 {Tags:[Target,T1,RottenFlesh],CustomName:"Rotten Flesh“,Duration: 2147483647}
summon area_effect_cloud -200 1 200 {Tags:[Target,T1,Gunpowder],CustomName:"Gunpowder",Duration: 2147483647}

scoreboard players set @e[tag=T1] Target 1

summon area_effect_cloud -200 1 200 {Tags:[Target,T5,Leaf],CustomName:"Leaf",Duration: 2147483647}
summon area_effect_cloud -200 1 200 {Tags:[Target,T5,String],CustomName:"String",Duration: 2147483647}
summon area_effect_cloud -200 1 200 {Tags:[Target,T5,PumpkinPie],CustomName:"Pumpkin Pie",Duration: 2147483647}
summon area_effect_cloud -200 1 200 {Tags:[Target,T5,GoldIngot],CustomName:"Gold Ingot",Duration: 2147483647}

scoreboard players set @e[tag=T5] Target 5

summon area_effect_cloud -200 1 200 {Tags:[Target,T10,Bookshelf],CustomName:"Bookshelf",Duration: 2147483647}
summon area_effect_cloud -200 1 200 {Tags:[Target,T10,LavaBucket],CustomName:"Lava Bucket",Duration: 2147483647}
summon area_effect_cloud -200 1 200 {Tags:[Target,T10,QuartzBlock],CustomName:"Quartz Block",Duration: 2147483647}
summon area_effect_cloud -200 1 200 {Tags:[Target,T10,RedstoneBlock],CustomName:"Redstone Block",Duration: 2147483647}

scoreboard players set @e[tag=T10] Target 10

summon area_effect_cloud -200 1 200 {Tags:[Target,T15,Clownfish],CustomName:"Clownfish",Duration: 2147483647}
summon area_effect_cloud -200 1 200 {Tags:[Target,T15,Pufferfish],CustomName:"Pufferfish",Duration: 2147483647}
summon area_effect_cloud -200 1 200 {Tags:[Target,T15,GlowstoneBlock],CustomName:"Glowstone Block",Duration: 2147483647}
summon area_effect_cloud -200 1 200 {Tags:[Target,T15,LapisBlock],CustomName:"Lapis Lazuli Block",Duration: 2147483647}

scoreboard players set @e[tag=T15] Target 15

summon area_effect_cloud -200 1 200 {Tags:[Target,T20,Cobweb],CustomName:"Cobweb",Duration: 2147483647}
summon area_effect_cloud -200 1 200 {Tags:[Target,T20,Slimeball],CustomName:"Slimeball",Duration: 2147483647}
summon area_effect_cloud -200 1 200 {Tags:[Target,T20,EnderPearl],CustomName:"Ender Pearl",Duration: 2147483647}
summon area_effect_cloud -200 1 200 {Tags:[Target,T20,GoldenApple],CustomName:"Golden Apple",Duration: 2147483647}
summon area_effect_cloud -200 1 200 {Tags:[Target,T20,Emerald],CustomName:"Emerald",Duration: 2147483647}

scoreboard players set @e[tag=T20] Target 20

summon area_effect_cloud -200 1 200 {Tags:[Target,T40,Cake],CustomName:"Cake",Duration: 2147483647}
summon area_effect_cloud -200 1 200 {Tags:[Target,T40,Anvil],CustomName:"Anvil",Duration: 2147483647}
summon area_effect_cloud -200 1 200 {Tags:[Target,T40,BlazeRod],CustomName:"Blaze Rod",Duration: 2147483647}
summon area_effect_cloud -200 1 200 {Tags:[Target,T40,Diamond],CustomName:"Diamond",Duration: 2147483647}

scoreboard players set @e[tag=T40] Target 40

summon area_effect_cloud -200 1 200 {Tags:[Target,T60,Nametag],CustomName:"Nametag",Duration: 2147483647}
summon area_effect_cloud -200 1 200 {Tags:[Target,T60,Saddle],CustomName:"Saddle",Duration: 2147483647}
summon area_effect_cloud -200 1 200 {Tags:[Target,T60,Cookie],CustomName:"Cookie",Duration: 2147483647}

scoreboard players set @e[tag=T60] Target 60

summon area_effect_cloud -200 1 200 {Tags:[Target,T75,AwkwardPotion],CustomName:"Awkward Potion",Duration: 2147483647}

scoreboard players set @e[tag=T75] Target 75

summon area_effect_cloud -200 1 200 {Tags:[Target,T100,Obsidan],CustomName:"Obsidian",Duration: 2147483647}

scoreboard players set @e[tag=T100] Target 100

summon area_effect_cloud -200 1 200 {Tags:[Target,T150,EnchantingTable],CustomName:"Enchanting Table",Duration: 2147483647}

scoreboard players set @e[tag=T150] Target 150

summon area_effect_cloud -200 1 200 {Tags:[Target,T200,GhastTear],CustomName:"Ghast Tear",Duration: 2147483647}
summon area_effect_cloud -200 1 200 {Tags:[Target,T200,MagmaCream],CustomName:"Magma Cream",Duration: 2147483647}

scoreboard players set @e[tag=T200] Target 200

summon area_effect_cloud -200 1 200 {Tags:[Target,T400,EndCrystal],CustomName:"End Crystal",Duration: 2147483647}
summon area_effect_cloud -200 1 200 {Tags:[Target,T400,DragonsBreath],CustomName:"Dragon’s Breath",Duration: 2147483647}

scoreboard players set @e[tag=T400] Target 400

summon area_effect_cloud -200 1 200 {Tags:[Target,T600,ChorusFruit],CustomName:"Chorus Fruit",Duration: 2147483647}

scoreboard players set @e[tag=T600] Target 600

summon area_effect_cloud -200 1 200 {Tags:[Target,T1000,ShulkerShell],CustomName:"Shulker Shell",Duration: 2147483647}

scoreboard players set @e[tag=T1000] Target 1000

summon area_effect_cloud -200 1 200 {Tags:[Target,T2000,DragonHead],CustomName:"Dragon Head",Duration: 2147483647}
summon area_effect_cloud -200 1 200 {Tags:[Target,T2000,Elytra],CustomName:"Elytra",Duration: 2147483647}
summon area_effect_cloud -200 1 200 {Tags:[Target,T2000,WitherSkull],CustomName:"Wither Skull",Duration: 2147483647}
summon area_effect_cloud -200 1 200 {Tags:[Target,T2000,Sponge],CustomName:"Sponge",Duration: 2147483647}

scoreboard players set @e[tag=T2000] Target 2000

summon area_effect_cloud -200 1 200 {Tags:[Target,T8000,NetherStar],CustomName:"Nether Star",Duration: 2147483647}
summon area_effect_cloud -200 1 200 {Tags:[Target,T8000,TotemOfUndying],CustomName:"Totem of Undying",Duration: 2147483647}

scoreboard players set @e[tag=T8000] Target 8000

scoreboard players set @e[tag=Main] Sacrifice 1

time set 23800
