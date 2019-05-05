# Set up target values

summon area_effect_cloud ~ 1 ~ {Tags:[New,Target,T1,CoalBlock,A],CustomName:"\"Coal Block\"",Duration: 2147483647}
function praise:assignid
summon area_effect_cloud ~ 1 ~ {Tags:[New,Target,T1,IronIngot,An],CustomName:"\"Iron Ingot\"",Duration: 2147483647}
function praise:assignid
summon area_effect_cloud ~ 1 ~ {Tags:[New,Target,T1,Leather,SamePlural,A],CustomName:"\"Leather\"",Duration: 2147483647}
function praise:assignid
summon area_effect_cloud ~ 1 ~ {Tags:[New,Target,T1,Feather,A],CustomName:"\"Feather\"",Duration: 2147483647}
function praise:assignid
summon area_effect_cloud ~ 1 ~ {Tags:[New,Target,T1,BrickBlock,A],CustomName:"\"Brick Block\"",Duration: 2147483647}
function praise:assignid
summon area_effect_cloud ~ 1 ~ {Tags:[New,Target,T1,Leaf,UniquePlural,A],CustomName:"\"Leaf\"",Duration: 2147483647}
function praise:assignid
scoreboard players set @e[tag=Leaf] ItemId 1
summon area_effect_cloud ~ 1 ~ {Tags:[LeafPlural,SamePlural],CustomName:"\"Leaves\"",Duration: 2147483647}
scoreboard players set @e[tag=LeafPlural] ItemId 1
summon area_effect_cloud ~ 1 ~ {Tags:[New,Target,T1,CookedBeef,A],CustomName:"\"Steak\"",Duration: 2147483647}
function praise:assignid
summon area_effect_cloud ~ 1 ~ {Tags:[New,Target,T1,CookedPorkchop,A],CustomName:"\"Cooked Porkchop\"",Duration: 2147483647}
function praise:assignid
summon area_effect_cloud ~ 1 ~ {Tags:[New,Target,T1,CookedMutton,A],CustomName:"\"Cooked Mutton\"",Duration: 2147483647}
function praise:assignid
summon area_effect_cloud ~ 1 ~ {Tags:[New,Target,T1,CookedChicken,A],CustomName:"\"Cooked Chicken\"",Duration: 2147483647}
function praise:assignid
summon area_effect_cloud ~ 1 ~ {Tags:[New,Target,T1,FlowerPot,A],CustomName:"\"Flower Pot\"",Duration: 2147483647}
function praise:assignid
summon area_effect_cloud ~ 1 ~ {Tags:[New,Target,T1,GlassBottle,A],CustomName:"\"Glass Bottle\"",Duration: 2147483647}
function praise:assignid
summon area_effect_cloud ~ 1 ~ {Tags:[New,Target,T1,SeaGrass,A,SamePlural],CustomName:"\"Sea Grass\"",Duration: 2147483647}
function praise:assignid

scoreboard players set @e[tag=T1] Target 1

summon area_effect_cloud ~ 1 ~ {Tags:[New,Target,T2,Bone,A],CustomName:"\"Bone\"",Duration: 2147483647}
function praise:assignid
summon area_effect_cloud ~ 1 ~ {Tags:[New,Target,T2,RottenFlesh,SamePlural,A],CustomName:"\"Rotten Flesh\"",Duration: 2147483647}
function praise:assignid
summon area_effect_cloud ~ 1 ~ {Tags:[New,Target,T2,Gunpowder,A],CustomName:"\"Gunpowder\"",Duration: 2147483647}
function praise:assignid
summon area_effect_cloud ~ 1 ~ {Tags:[New,Target,T2,String,A],CustomName:"\"String\"",Duration: 2147483647}
function praise:assignid
summon area_effect_cloud ~ 1 ~ {Tags:[New,Target,T2,Apple,An],CustomName:"\"Apple\"",Duration: 2147483647}
function praise:assignid
summon area_effect_cloud ~ 1 ~ {Tags:[New,Target,T2,BlackWool,A],CustomName:"\"Black Wool Block\"",Duration: 2147483647}
function praise:assignid
summon area_effect_cloud ~ 1 ~ {Tags:[New,Target,T2,Bed,A],CustomName:"\"Bed\"",Duration: 2147483647}
function praise:assignid
summon area_effect_cloud ~ 1 ~ {Tags:[New,Target,T2,Fern,A],CustomName:"\"Fern\"",Duration: 2147483647}
function praise:assignid
summon area_effect_cloud ~ 1 ~ {Tags:[New,Target,T2,MushroomStew,A],CustomName:"\"Mushroom Stew\"",Duration: 2147483647}
function praise:assignid
summon area_effect_cloud ~ 1 ~ {Tags:[New,Target,T2,Bread,A,SamePlural],CustomName:"\"Bread\"",Duration: 2147483647}
function praise:assignid

scoreboard players set @e[tag=T2] Target 2

summon area_effect_cloud ~ 1 ~ {Tags:[New,Target,T5,LavaBucket,A],CustomName:"\"Lava Bucket\"",Duration: 2147483647}
function praise:assignid
summon area_effect_cloud ~ 1 ~ {Tags:[New,Target,T5,FishBucket,A,UniquePlural],CustomName:"\"Bucket of Fish\"",Duration: 2147483647}
function praise:assignid
scoreboard players set @e[tag=FishBucket] ItemId 3
summon area_effect_cloud ~ 1 ~ {Tags:[FishBucketPlural,SamePlural],CustomName:"\"Buckets of Fish\"",Duration: 2147483647}
scoreboard players set @e[tag=FishBucketPlural] ItemId 3
summon area_effect_cloud ~ 1 ~ {Tags:[New,Target,T5,PumpkinPie,A],CustomName:"\"Pumpkin Pie\"",Duration: 2147483647}
function praise:assignid
summon area_effect_cloud ~ 1 ~ {Tags:[New,Target,T5,GoldIngot,A],CustomName:"\"Gold Ingot\"",Duration: 2147483647}
function praise:assignid
summon area_effect_cloud ~ 1 ~ {Tags:[New,Target,T5,SnowBlock,A],CustomName:"\"Snow Block\"",Duration: 2147483647}
function praise:assignid
summon area_effect_cloud ~ 1 ~ {Tags:[New,Target,T5,DriedKelpBlock,A],CustomName:"\"Dried Kelp Block\"",Duration: 2147483647}
function praise:assignid
summon area_effect_cloud ~ 1 ~ {Tags:[New,Target,T5,BookAndQuill,A],CustomName:"\"Writable Book\"",Duration: 2147483647}
function praise:assignid
summon area_effect_cloud ~ 1 ~ {Tags:[New,Target,T5,FireworkRocket,A],CustomName:"\"Firework Rocket\"",Duration: 2147483647}
function praise:assignid
summon area_effect_cloud ~ 1 ~ {Tags:[New,Target,T5,PoisonousPotato,A,UniquePlural],CustomName:"\"Poisonous Potato\"",Duration: 2147483647}
function praise:assignid
scoreboard players set @e[tag=PoisonousPotato] ItemId 6
summon area_effect_cloud ~ 1 ~ {Tags:[PPotatoPlural,SamePlural],CustomName:"\"Poisonous Potatoes\"",Duration: 2147483647}
scoreboard players set @e[tag=PPotatoPlural] ItemId 6
scoreboard players set @e[tag=T5] Target 5

summon area_effect_cloud ~ 1 ~ {Tags:[New,Target,T10,Bookshelf,UniquePlural,A],CustomName:"\"Bookshelf\"",Duration: 2147483647}
function praise:assignid
scoreboard players set @e[tag=Bookshelf] ItemId 2
summon area_effect_cloud ~ 1 ~ {Tags:[New,BookshelfPlural,SamePlural],CustomName:"\"Bookshelves\"",Duration: 2147483647}
function praise:assignid
scoreboard players set @e[tag=BookshelfPlural] ItemId 2
summon area_effect_cloud ~ 1 ~ {Tags:[New,Target,T10,RedstoneBlock,A],CustomName:"\"Redstone Block\"",Duration: 2147483647}
function praise:assignid
summon area_effect_cloud ~ 1 ~ {Tags:[New,Target,T10,RabbitStew,A],CustomName:"\"Rabbit Stew\"",Duration: 2147483647}
function praise:assignid
summon area_effect_cloud ~ 1 ~ {Tags:[New,Target,T10,FermentedEye,A],CustomName:"\"Fermented Spider Eye\"",Duration: 2147483647}
function praise:assignid
summon area_effect_cloud ~ 1 ~ {Tags:[New,Target,T10,MagmaBlock,A],CustomName:"\"Magma Block\"",Duration: 2147483647}
function praise:assignid

scoreboard players set @e[tag=T10] Target 10

summon area_effect_cloud ~ 1 ~ {Tags:[New,Target,T15,QuartzBlock,A],CustomName:"\"Quartz Block\"",Duration: 2147483647}
function praise:assignid
summon area_effect_cloud ~ 1 ~ {Tags:[New,Target,T15,GlowstoneBlock,A],CustomName:"\"Glowstone Block\"",Duration: 2147483647}
function praise:assignid
summon area_effect_cloud ~ 1 ~ {Tags:[New,Target,T15,LapisBlock,A],CustomName:"\"Lapis Lazuli Block\"",Duration: 2147483647}
function praise:assignid
summon area_effect_cloud ~ 1 ~ {Tags:[New,Target,T15,Cake,A],CustomName:"\"Cake\"",Duration: 2147483647}
function praise:assignid
summon area_effect_cloud ~ 1 ~ {Tags:[New,Target,T15,TNT,A],CustomName:"\"TNT Block\"",Duration: 2147483647}
function praise:assignid

scoreboard players set @e[tag=T15] Target 15

summon area_effect_cloud ~ 1 ~ {Tags:[New,Target,T20,SpectralArrow,A],CustomName:"\"Spectral Arrow\"",Duration: 2147483647}
function praise:assignid
summon area_effect_cloud ~ 1 ~ {Tags:[New,Target,T20,GoldenApple,A],CustomName:"\"Golden Apple\"",Duration: 2147483647}
function praise:assignid
summon area_effect_cloud ~ 1 ~ {Tags:[New,Target,T20,GoldenCarrot,A],CustomName:"\"Golden Carrot\"",Duration: 2147483647}
function praise:assignid
summon area_effect_cloud ~ 1 ~ {Tags:[New,Target,T20,Emerald,An],CustomName:"\"Emerald\"",Duration: 2147483647}
function praise:assignid

scoreboard players set @e[tag=T20] Target 20

summon area_effect_cloud ~ 1 ~ {Tags:[New,Target,T30,Cobweb,A],CustomName:"\"Cobweb\"",Duration: 2147483647}
function praise:assignid
summon area_effect_cloud ~ 1 ~ {Tags:[New,Target,T30,GrassBlock,A],CustomName:"\"Grass Block\"",Duration: 2147483647}
function praise:assignid
summon area_effect_cloud ~ 1 ~ {Tags:[New,Target,T30,GlisteringMelon,A],CustomName:"\"Glistering Melon Slice\"",Duration: 2147483647}
function praise:assignid
summon area_effect_cloud ~ 1 ~ {Tags:[New,Target,T30,Slimeball,A],CustomName:"\"Slimeball\"",Duration: 2147483647}
function praise:assignid

scoreboard players set @e[tag=T30] Target 30

summon area_effect_cloud ~ 1 ~ {Tags:[New,Target,T40,Anvil,An],CustomName:"\"Anvil\"",Duration: 2147483647}
function praise:assignid
summon area_effect_cloud ~ 1 ~ {Tags:[New,Target,T40,BlazeRod,A],CustomName:"\"Blaze Rod\"",Duration: 2147483647}
function praise:assignid
summon area_effect_cloud ~ 1 ~ {Tags:[New,Target,T40,FireCharge,A,UniquePlural],CustomName:"\"Fire Charge\"",Duration: 2147483647}
function praise:assignid
scoreboard players set @e[tag=FireCharge] ItemId 8
summon area_effect_cloud ~ 1 ~ {Tags:[FireChargePlural,SamePlural],CustomName:"\"Fire Charges\"",Duration: 2147483647}
scoreboard players set @e[tag=FireChargePlural] ItemId 8
summon area_effect_cloud ~ 1 ~ {Tags:[New,Target,T40,Diamond,A],CustomName:"\"Diamond\"",Duration: 2147483647}
function praise:assignid
summon area_effect_cloud ~ 1 ~ {Tags:[New,Target,T40,Jukebox,A,UniquePlural],CustomName:"\"Jukebox\"",Duration: 2147483647}
function praise:assignid
scoreboard players set @e[tag=Jukebox] ItemId 7
summon area_effect_cloud ~ 1 ~ {Tags:[JukeboxPlural,SamePlural],CustomName:"\"Jukeboxes\"",Duration: 2147483647}
scoreboard players set @e[tag=JukeboxPlural] ItemId 7


summon area_effect_cloud ~ 1 ~ {Tags:[New,Target,T40,NautilusShell,A],CustomName:"\"Nautilus Shell\"",Duration: 2147483647}
function praise:assignid
summon area_effect_cloud ~ 1 ~ {Tags:[New,Target,T40,NetherWartBlock,A],CustomName:"\"Nether Wart Block\"",Duration: 2147483647}
function praise:assignid
summon area_effect_cloud ~ 1 ~ {Tags:[New,Target,T40,MusicDisc,A],CustomName:"\"Music Disc\"",Duration: 2147483647}
function praise:assignid
summon area_effect_cloud ~ 1 ~ {Tags:[New,Target,T40,Prismarine,A],CustomName:"\"Prismarine Crystal\"",Duration: 2147483647}
function praise:assignid

scoreboard players set @e[tag=T40] Target 40

summon area_effect_cloud ~ 1 ~ {Tags:[New,Target,T60,Saddle,A],CustomName:"\"Saddle\"",Duration: 2147483647}
function praise:assignid
summon area_effect_cloud ~ 1 ~ {Tags:[New,Target,T60,Cookie,A],CustomName:"\"Cookie\"",Duration: 2147483647}
function praise:assignid
summon area_effect_cloud ~ 1 ~ {Tags:[New,Target,T60,Bamboo,A,SamePlural],CustomName:"\"Bamboo\"",Duration: 2147483647}
function praise:assignid
summon area_effect_cloud ~ 1 ~ {Tags:[New,Target,T60,HeartOfTheSea,A],CustomName:"\"Heart of the Sea\"",Duration: 2147483647}
function praise:assignid
scoreboard players set @e[tag=HeartOfTheSea] ItemId 4
summon area_effect_cloud ~ 1 ~ {Tags:[HeartOfTheSeaPlural,SamePlural],CustomName:"\"Hearts of the Sea\"",Duration: 2147483647}
scoreboard players set @e[tag=HeartOfTheSeaPlural] ItemId 4

scoreboard players set @e[tag=T60] Target 60

scoreboard players set @e[tag=T75] Target 75

summon area_effect_cloud ~ 1 ~ {Tags:[New,Target,T100,Nametag,A],CustomName:"\"Nametag\"",Duration: 2147483647}
function praise:assignid
summon area_effect_cloud ~ 1 ~ {Tags:[New,Target,T100,AwkwardPotion,An],CustomName:"\"Awkward Potion\"",Duration: 2147483647}
function praise:assignid
summon area_effect_cloud ~ 1 ~ {Tags:[New,Target,T100,Obsidian,SamePlural,An],CustomName:"\"Obsidian\"",Duration: 2147483647}
function praise:assignid
summon area_effect_cloud ~ 1 ~ {Tags:[New,Target,T100,Bell,A],CustomName:"\"Bell\"",Duration: 2147483647}
function praise:assignid

scoreboard players set @e[tag=T100] Target 100

summon area_effect_cloud ~ 1 ~ {Tags:[New,Target,T150,EnchantedBook,An],CustomName:"\"Enchanted Book\"",Duration: 2147483647}
function praise:assignid

scoreboard players set @e[tag=T150] Target 150

summon area_effect_cloud ~ 1 ~ {Tags:[New,Target,T200,EnchantingTable,An],CustomName:"\"Enchanting Table\"",Duration: 2147483647}
function praise:assignid
summon area_effect_cloud ~ 1 ~ {Tags:[New,Target,T200,GhastTear,A],CustomName:"\"Ghast Tear\"",Duration: 2147483647}
function praise:assignid
summon area_effect_cloud ~ 1 ~ {Tags:[New,Target,T200,MagmaCream,A],CustomName:"\"Magma Cream\"",Duration: 2147483647}
function praise:assignid

scoreboard players set @e[tag=T200] Target 200

summon area_effect_cloud ~ 1 ~ {Tags:[New,Target,T400,EndCrystal,An],CustomName:"\"End Crystal\"",Duration: 2147483647}
function praise:assignid
summon area_effect_cloud ~ 1 ~ {Tags:[New,Target,T400,PillagerBanner,A],CustomName:"\"Pillager Banner\"",Duration: 2147483647}
function praise:assignid
summon area_effect_cloud ~ 1 ~ {Tags:[New,Target,T400,BannerPattern,A],CustomName:"\"Banner Pattern\"",Duration: 2147483647}
function praise:assignid
summon area_effect_cloud ~ 1 ~ {Tags:[New,Target,T400,DragonsBreath,SamePlural,A],CustomName:"\"Dragon’s Breath\"",Duration: 2147483647}
function praise:assignid
summon area_effect_cloud ~ 1 ~ {Tags:[New,Target,T400,XPBottle,UniquePlural,A],CustomName:"\"Bottle of Enchanting\"",Duration: 2147483647}
function praise:assignid
scoreboard players set @e[tag=XPBottle] ItemId 9
summon area_effect_cloud ~ 1 ~ {Tags:[XPBottlePlural,SamePlural],CustomName:"\"Bottles of Enchanting\"",Duration: 2147483647}
scoreboard players set @e[tag=XPBottlePlural] ItemId 9

scoreboard players set @e[tag=T400] Target 400

summon area_effect_cloud ~ 1 ~ {Tags:[New,Target,T600,ChorusFruit,A],CustomName:"\"Chorus Fruit\"",Duration: 2147483647}
function praise:assignid
summon area_effect_cloud ~ 1 ~ {Tags:[New,Target,T600,EndRod,An],CustomName:"\"End Rod\"",Duration: 2147483647}
function praise:assignid

scoreboard players set @e[tag=T600] Target 600

summon area_effect_cloud ~ 1 ~ {Tags:[New,Target,T1000,ShulkerShell,A],CustomName:"\"Shulker Shell\"",Duration: 2147483647}
function praise:assignid

scoreboard players set @e[tag=T1000] Target 1000

summon area_effect_cloud ~ 1 ~ {Tags:[New,Target,T2000,DragonHead,A],CustomName:"\"Dragon Head\"",Duration: 2147483647}
function praise:assignid
summon area_effect_cloud ~ 1 ~ {Tags:[New,Target,T2000,Elytra,SamePlural,An],CustomName:"\"Elytra\"",Duration: 2147483647}
function praise:assignid
summon area_effect_cloud ~ 1 ~ {Tags:[New,Target,T2000,WitherSkull,A],CustomName:"\"Wither Skull\"",Duration: 2147483647}
function praise:assignid
summon area_effect_cloud ~ 1 ~ {Tags:[New,Target,T2000,Sponge,A],CustomName:"\"Sponge\"",Duration: 2147483647}
function praise:assignid

scoreboard players set @e[tag=T2000] Target 2000

summon area_effect_cloud ~ 1 ~ {Tags:[New,Target,T8000,TotemOfUndying,UniquePlural,A],CustomName:"\"Totem of Undying\"",Duration: 2147483647}
function praise:assignid
scoreboard players set @e[tag=TotemOfUndying] ItemId 5
summon area_effect_cloud ~ 1 ~ {Tags:[TotemPlural,SamePlural],CustomName:"\"Totems of Undying\"",Duration: 2147483647}
scoreboard players set @e[tag=TotemPlural] ItemId 5
summon area_effect_cloud ~ 1 ~ {Tags:[New,Target,T8000,NetherStar,A],CustomName:"\"Nether Star\"",Duration: 2147483647}
function praise:assignid
summon area_effect_cloud ~ 1 ~ {Tags:[New,Target,T8000,WitherRose,A],CustomName:"\"Wither Rose\"",Duration: 2147483647}
function praise:assignid

scoreboard players set @e[tag=T8000] Target 8000

scoreboard players set @e[tag=Target] Cooldown 0
