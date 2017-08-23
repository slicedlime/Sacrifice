# Summon all the aecs and set scores

scoreboard players reset * Failures
scoreboard players reset Ticks Info
scoreboard players reset * ItemId

kill @e[tag=Main]

setworldspawn
summon leash_knot ~ ~ ~ {Tags:[Setup]}
execute @e[tag=Setup] ~ ~ ~ summon area_effect_cloud ~ ~ ~ {Tags:[Main],CustomName:"Main",Duration: 2147483647}
kill @e[tag=Setup]

execute @e[tag=Main] ~ ~ ~ function praise:altar

effect @a instant_health 1 10
effect @a saturation 1 10

kill @e[tag=Target]
kill @e[tag=SamePlural]

summon area_effect_cloud ~ 1 ~ {Tags:[Target,T1,Apple,An],CustomName:"Apple",Duration: 2147483647}
summon area_effect_cloud ~ 1 ~ {Tags:[Target,T1,CoalBlock,A],CustomName:"Coal Block",Duration: 2147483647}
summon area_effect_cloud ~ 1 ~ {Tags:[Target,T1,IronIngot,An],CustomName:"Iron Ingot“,Duration: 2147483647}
summon area_effect_cloud ~ 1 ~ {Tags:[Target,T1,Leather,SamePlural,A],CustomName:"Leather",Duration: 2147483647}
summon area_effect_cloud ~ 1 ~ {Tags:[Target,T1,Feather,A],CustomName:"Feather",Duration: 2147483647}

scoreboard players set @e[tag=T1] Target 1

summon area_effect_cloud ~ 1 ~ {Tags:[Target,T2,Bone,A],CustomName:"Bone",Duration: 2147483647}
summon area_effect_cloud ~ 1 ~ {Tags:[Target,T2,RottenFlesh,SamePlural,A],CustomName:"Rotten Flesh“,Duration: 2147483647}
summon area_effect_cloud ~ 1 ~ {Tags:[Target,T2,Gunpowder,A],CustomName:"Gunpowder",Duration: 2147483647}
summon area_effect_cloud ~ 1 ~ {Tags:[Target,T2,String,A],CustomName:"String",Duration: 2147483647}

scoreboard players set @e[tag=T2] Target 2

summon area_effect_cloud ~ 1 ~ {Tags:[Target,T5,Leaf,UniquePlural,A],CustomName:"Leaf",Duration: 2147483647}
scoreboard players set @e[tag=Leaf] ItemId 1
summon area_effect_cloud ~ 1 ~ {Tags:[LeafPlural,SamePlural],CustomName:"Leaves",Duration: 2147483647}
scoreboard players set @e[tag=LeafPlural] ItemId 1
summon area_effect_cloud ~ 1 ~ {Tags:[Target,T5,PumpkinPie,A],CustomName:"Pumpkin Pie",Duration: 2147483647}
summon area_effect_cloud ~ 1 ~ {Tags:[Target,T5,GoldIngot,A],CustomName:"Gold Ingot",Duration: 2147483647}

scoreboard players set @e[tag=T5] Target 5

summon area_effect_cloud ~ 1 ~ {Tags:[Target,T10,Bookshelf,UniquePlural,A],CustomName:"Bookshelf",Duration: 2147483647}
scoreboard players set @e[tag=Bookshelf] ItemId 2
summon area_effect_cloud ~ 1 ~ {Tags:[BookshelfPlural,SamePlural],CustomName:"Bookshelves",Duration: 2147483647}
scoreboard players set @e[tag=BookshelfPlural] ItemId 2
summon area_effect_cloud ~ 1 ~ {Tags:[Target,T10,LavaBucket,A],CustomName:"Lava Bucket",Duration: 2147483647}
summon area_effect_cloud ~ 1 ~ {Tags:[Target,T10,QuartzBlock,A],CustomName:"Quartz Block",Duration: 2147483647}
summon area_effect_cloud ~ 1 ~ {Tags:[Target,T10,RedstoneBlock,A],CustomName:"Redstone Block",Duration: 2147483647}

scoreboard players set @e[tag=T10] Target 10

summon area_effect_cloud ~ 1 ~ {Tags:[Target,T15,Clownfish,UniquePlural,A],CustomName:"Clownfish",Duration: 2147483647}
scoreboard players set @e[tag=Clownfish] ItemId 3
summon area_effect_cloud ~ 1 ~ {Tags:[ClownfishPlural],CustomName:"Clownfishes",Duration: 2147483647}
scoreboard players set @e[tag=ClownfishPlural,SamePlural] ItemId 3
summon area_effect_cloud ~ 1 ~ {Tags:[Target,T15,Pufferfish,UniquePlural,A],CustomName:"Pufferfish",Duration: 2147483647}
scoreboard players set @e[tag=Pufferfish] ItemId 4
summon area_effect_cloud ~ 1 ~ {Tags:[PufferfishPlural,SamePlural],CustomName:"Puffserfishes",Duration: 2147483647}
scoreboard players set @e[tag=PufferfishPlural] ItemId 4
summon area_effect_cloud ~ 1 ~ {Tags:[Target,T15,GlowstoneBlock,A],CustomName:"Glowstone Block",Duration: 2147483647}
summon area_effect_cloud ~ 1 ~ {Tags:[Target,T15,LapisBlock,A],CustomName:"Lapis Lazuli Block",Duration: 2147483647}

scoreboard players set @e[tag=T15] Target 15

summon area_effect_cloud ~ 1 ~ {Tags:[Target,T20,Cobweb,A],CustomName:"Cobweb",Duration: 2147483647}
summon area_effect_cloud ~ 1 ~ {Tags:[Target,T20,Slimeball,A],CustomName:"Slimeball",Duration: 2147483647}
summon area_effect_cloud ~ 1 ~ {Tags:[Target,T20,EnderPearl,An],CustomName:"Ender Pearl",Duration: 2147483647}
summon area_effect_cloud ~ 1 ~ {Tags:[Target,T20,GoldenApple,A],CustomName:"Golden Apple",Duration: 2147483647}
summon area_effect_cloud ~ 1 ~ {Tags:[Target,T20,Emerald,An],CustomName:"Emerald",Duration: 2147483647}

scoreboard players set @e[tag=T20] Target 20

summon area_effect_cloud ~ 1 ~ {Tags:[Target,T40,Cake,A],CustomName:"Cake",Duration: 2147483647}
summon area_effect_cloud ~ 1 ~ {Tags:[Target,T40,Anvil,An],CustomName:"Anvil",Duration: 2147483647}
summon area_effect_cloud ~ 1 ~ {Tags:[Target,T40,BlazeRod,A],CustomName:"Blaze Rod",Duration: 2147483647}
summon area_effect_cloud ~ 1 ~ {Tags:[Target,T40,Diamond,A],CustomName:"Diamond",Duration: 2147483647}

scoreboard players set @e[tag=T40] Target 40

summon area_effect_cloud ~ 1 ~ {Tags:[Target,T60,Nametag,A],CustomName:"Nametag",Duration: 2147483647}
summon area_effect_cloud ~ 1 ~ {Tags:[Target,T60,Saddle,A],CustomName:"Saddle",Duration: 2147483647}
summon area_effect_cloud ~ 1 ~ {Tags:[Target,T60,Cookie,A],CustomName:"Cookie",Duration: 2147483647}

scoreboard players set @e[tag=T60] Target 60

summon area_effect_cloud ~ 1 ~ {Tags:[Target,T75,AwkwardPotion,An],CustomName:"Awkward Potion",Duration: 2147483647}

scoreboard players set @e[tag=T75] Target 75

summon area_effect_cloud ~ 1 ~ {Tags:[Target,T100,Obsidan,SamePlural,An],CustomName:"Obsidian",Duration: 2147483647}

scoreboard players set @e[tag=T100] Target 100

summon area_effect_cloud ~ 1 ~ {Tags:[Target,T150,EnchantingTable,An],CustomName:"Enchanting Table",Duration: 2147483647}

scoreboard players set @e[tag=T150] Target 150

summon area_effect_cloud ~ 1 ~ {Tags:[Target,T200,GhastTear,A],CustomName:"Ghast Tear",Duration: 2147483647}
summon area_effect_cloud ~ 1 ~ {Tags:[Target,T200,MagmaCream,A],CustomName:"Magma Cream",Duration: 2147483647}

scoreboard players set @e[tag=T200] Target 200

summon area_effect_cloud ~ 1 ~ {Tags:[Target,T400,EndCrystal,An],CustomName:"End Crystal",Duration: 2147483647}
summon area_effect_cloud ~ 1 ~ {Tags:[Target,T400,DragonsBreath,SamePlural,A],CustomName:"Dragon’s Breath",Duration: 2147483647}

scoreboard players set @e[tag=T400] Target 400

summon area_effect_cloud ~ 1 ~ {Tags:[Target,T600,ChorusFruit,A],CustomName:"Chorus Fruit",Duration: 2147483647}

scoreboard players set @e[tag=T600] Target 600

summon area_effect_cloud ~ 1 ~ {Tags:[Target,T1000,ShulkerShell,A],CustomName:"Shulker Shell",Duration: 2147483647}

scoreboard players set @e[tag=T1000] Target 1000

summon area_effect_cloud ~ 1 ~ {Tags:[Target,T2000,DragonHead,A],CustomName:"Dragon Head",Duration: 2147483647}
summon area_effect_cloud ~ 1 ~ {Tags:[Target,T2000,Elytra,SamePlural,An],CustomName:"Elytra",Duration: 2147483647}
summon area_effect_cloud ~ 1 ~ {Tags:[Target,T2000,WitherSkull,A],CustomName:"Wither Skull",Duration: 2147483647}
summon area_effect_cloud ~ 1 ~ {Tags:[Target,T2000,Sponge,A],CustomName:"Sponge",Duration: 2147483647}

scoreboard players set @e[tag=T2000] Target 2000

summon area_effect_cloud ~ 1 ~ {Tags:[Target,T8000,NetherStar,A],CustomName:"Nether Star",Duration: 2147483647}
summon area_effect_cloud ~ 1 ~ {Tags:[Target,T8000,TotemOfUndying,UniquePlural,A],CustomName:"Totem of Undying",Duration: 2147483647}
scoreboard players set @e[tag=TotemOfUndying] ItemId 5
summon area_effect_cloud ~ 1 ~ {Tags:[TotemPlural,SamePlural],CustomName:"Totems of Undying",Duration: 2147483647}
scoreboard players set @e[tag=TotemPlural] ItemId 5

scoreboard players set @e[tag=T8000] Target 8000

scoreboard players set @e[tag=Main] Sacrifice 0

time set 23800
scoreboard teams leave @a
