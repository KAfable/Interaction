import loottweaker.vanilla.loot.LootTables;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Functions;
import crafttweaker.item.IItemStack;

	#From https://github.com/Leviathan143/LootTweaker/wiki/Loot-Pools
//removeEntry(String entryName)
//removeItemEntry(IItemStack stack)
//addItemEntryHelper(IItemStack iStack, int weight, int quality, LootFunction[] functions, LootCondition[] conditions)

	#Cosmetic Loot Rewards - the stuff people should care about (at least one per chest)
var cosmeticItem = [
	<botania:cacophonium>,
	<botania:cosmetic:1>,
	<botania:cosmetic:2>,
	<botania:cosmetic:3>,
	<botania:cosmetic:4>,
	<botania:cosmetic:5>,
	<botania:cosmetic:6>,
	<botania:cosmetic:7>,
	<botania:cosmetic:8>,
	<botania:cosmetic:9>,
	<botania:cosmetic:10>,
	<botania:cosmetic:11>,
	<botania:cosmetic:12>,
	<botania:cosmetic:13>,
	<botania:cosmetic:14>,
	<botania:cosmetic:15>,
	<botania:cosmetic:16>,
	<botania:cosmetic:17>,
	<botania:cosmetic:18>,
	<botania:cosmetic:19>,
	<botania:cosmetic:20>,
	<botania:cosmetic:21>,
	<botania:cosmetic:22>,
	<botania:cosmetic:23>,
	<botania:cosmetic:24>,
	<botania:cosmetic:25>,
	<botania:cosmetic:26>,
	<botania:cosmetic:27>,
	<botania:cosmetic:28>,
	<botania:cosmetic:29>,
	<botania:cosmetic:30>,
	<botania:cosmetic:31>
	] as IItemStack[];
	#Minor Loot Rewards - the stuff people are meh about (at least one roll, stack of 1-10)
var minorLoot = [
	<minecraft:torch>,
	<harvestcraft:toastsandwichitem>
	] as IItemStack[];

	#Convenience Loot Rewards - (one item per chest)
var convenienceLoot = [
	<botania:slimebottle>, 
	<botania:incensestick>.withTag({brewKey: "nightVision"}),
	<botania:incensestick>.withTag({brewKey: "soulCross"}),
	<botania:incensestick>.withTag({brewKey: "featherFeet"}),
	<botania:incensestick>.withTag({brewKey: "emptiness"}),
	<botania:incensestick>.withTag({brewKey: "bloodthirst"}),
	<botania:incensestick>.withTag({brewKey: "allure"}),
	<botania:incensestick>.withTag({brewKey: "resistance"}),
	<botania:incensestick>.withTag({brewKey: "haste"}),
	<botania:incensestick>.withTag({brewKey: "strength"}),
	<botania:incensestick>.withTag({brewKey: "regen"}),
	<botania:incensestick>.withTag({brewKey: "jumpBoost"}),
	<botania:incensestick>.withTag({brewKey: "speed"}),
	<botania:incensestick>.withTag({brewKey: "fireResistance"}),
	<botania:incensestick>.withTag({brewKey: "waterBreathing"}),
	<botania:goddesscharm>,
	<botania:thirdeye>,
	<xreliquary:interdiction_torch>,
	<actuallyadditions:item_potion_ring:8>,
	<actuallyadditions:item_potion_ring:9>,
	<actuallyadditions:item_potion_ring:7>,
	<actuallyadditions:item_potion_ring:4>,
	<actuallyadditions:item_potion_ring:1>,
	<actuallyadditions:item_potion_ring>,
	<actuallyadditions:item_water_removal_ring>
	] as IItemStack[];

	#Functional Loot Rewards - the stuff people really care about
var functionalLoot = [
	<botania:dodgering>,
	<botania:blackholetalisman>,
	<silentgems:enchantmenttoken:256>,
	<botania:travelbelt>,
	<botania:supertravelbelt>,
	<darkutils:focus_sash>,
	<actuallyadditions:item_suction_ring>,
	<calculator:storagemodule>,
	<botania:holycloak>,
	<botania:unholycloak>,
	<botania:balancecloak>,
	<torchmaster:mega_torch:1>,
	<cyclicmagic:soulstone>
	] as IItemStack[];
	#Tool Loot Rewards
var toolLoot = [
	<botania:starsword>,
	<exchangers:exdiamond>,
	<exchangers:exemerald>,
	<mysticalagriculture:intermedium_bow>,
	<cyclicmagic:tool_torch_launcher>,
	<cyclicmagic:tool_auto_torch>
	] as IItemStack[];

	#Abandoned Mineshaft - Main
var mineshaft = LootTables.getTable("minecraft:chests/abandoned_mineshaft");
var mineshaftMain = mineshaft.getPool("main");
mineshaftMain.removeItemEntry(<minecraft:iron_pickaxe>);
mineshaftMain.removeEntry("empty");
mineshaftMain.removeEntry("abyssalcraft:abyssalnite_ingot");
mineshaftMain.removeEntry("abyssalcraft:copper_ingot");
mineshaftMain.removeEntry("abyssalcraft:tin_ingot");
mineshaftMain.removeEntry("abyssalcraft:crystallized_zinc");
mineshaftMain.removeEntry("abyssalcraft:shadow_fragment");
mineshaftMain.removeEntry("abyssalcraft:shadow_gem_shard");
mineshaftMain.removeEntry("rftoolsdim:parcel");
mineshaftMain.removeEntry("astralsorcery:constellation_paper");
mineshaftMain.removeItemEntry(<evilcraft:origins_of_darkness>);
	#Abandoned Mineshaft - Pool1
var mineshaftPool1 = mineshaft.getPool("pool1");
mineshaftPool1.setRolls(1, 1);
mineshaftPool1.removeItemEntry(<minecraft:iron_ingot>);
mineshaftPool1.removeItemEntry(<minecraft:gold_ingot>);
mineshaftPool1.removeItemEntry(<minecraft:redstone>);
mineshaftPool1.removeItemEntry(<minecraft:dye:5>);
mineshaftPool1.removeItemEntry(<minecraft:diamond>);
mineshaftPool1.removeItemEntry(<minecraft:coal>);
mineshaftPool1.removeItemEntry(<minecraft:bread>);
mineshaftPool1.removeItemEntry(<minecraft:melon_seeds>);
mineshaftPool1.removeItemEntry(<minecraft:pumpkin_seeds>);
mineshaftPool1.removeItemEntry(<minecraft:beetroot_seeds>);
mineshaftPool1.removeItemEntry(<evilcraft:origins_of_darkness>);
mineshaftPool1.removeItemEntry(<evilcraft:box_of_eternal_closure>);
mineshaftPool1.removeEntry("evilcraft:condensed_blood");
mineshaftPool1.addItemEntryHelper(<silentgems:enchantmenttoken:256>, 20, 0, [], []);
	#Abandoned Mineshaft - Pool2
var mineshaftPool2 = mineshaft.getPool("pool2");
mineshaftPool2.removeItemEntry(<minecraft:rail>);
mineshaftPool2.removeItemEntry(<minecraft:golden_rail>);
mineshaftPool2.removeItemEntry(<minecraft:detector_rail>);
mineshaftPool2.removeItemEntry(<minecraft:activator_rail>);
mineshaftPool2.removeItemEntry(<evilcraft:origins_of_darkness>);
mineshaftPool2.removeItemEntry(<evilcraft:condensed_blood>);
mineshaftPool2.removeItemEntry(<evilcraft:box_of_eternal_closure>);
	#Abandoned Mineshaft - Reliquary
var mineshaftReliquary = mineshaft.getPool("xreliquary_inject_pool");
mineshaftReliquary.removeItemEntry(<evilcraft:origins_of_darkness>);
mineshaftReliquary.removeItemEntry(<evilcraft:condensed_blood>);
mineshaftReliquary.removeItemEntry(<evilcraft:box_of_eternal_closure>);
	#Abandoned Mineshaft - IC2
mineshaft.removePool("ic2");
	#Abandoned Mineshaft - Forestry Tools
mineshaft.removePool("forestry_factory_items");
	#Abandoned Mineshaft - Random Things
mineshaft.removePool("randomthings:biomeCrystal");
	#Abandoned Mineshaft - Botania - see #Botania
var mineshaftBotania = mineshaft.getPool("botania_inject_pool");
	#Astral Sorcery Shrine
val astralshrine = LootTables.getTable("astralsorcery:chest_shrine");
val astralChest = astralshrine.getPool("astralsorcery:chest_shrine");
astralChest.removeItemEntry(<minecraft:emerald>);
astralChest.removeItemEntry(<minecraft:diamond>);
astralChest.removeItemEntry(<minecraft:bone>);
astralChest.removeItemEntry(<minecraft:glowstone_dust>);
astralChest.addItemEntryHelper(<abyssalcraft:essence>, 20, 0, [], []);
astralChest.addItemEntryHelper(<randomthings:itemcollector>, 10, 0, [], []);
astralChest.addItemEntryHelper(<astralsorcery:itemhandtelescope>, 5, 0, [], []);
astralChest.addItemEntryHelper(<astralsorcery:blockmachine:1>, 5, 0, [], []);
astralChest.addItemEntryHelper(<astralsorcery:itemjournal>, 5, 0, [], []);
astralChest.addItemEntryHelper(<astralsorcery:blockattunementrelay>, 10, 0, 
	[Functions.setCount(2, 5)], []);
	#Botania - Mineshaft
var botaniaMineshaft = LootTables.getTable("botania:inject/abandoned_mineshaft");
var botaniaMineshaftMain = botaniaMineshaft.getPool("main");
botaniaMineshaftMain.removeEntry("empty");
	#Botania - Desert Pyramid
	#Botania - Jungle Temple
	#Botania - Simple Dungeon
	#Botania - Stronghold Corridor
	#Botania - Village Blacksmith
var botaniaBS = LootTables.getTable("botania:inject/village_blacksmith");
var botaniaBSMain = botaniaBS.getPool("main");
	#Botania - Gaia Guardian 1
var gGuardian1 = LootTables.getTable("botania:gaia_guardian");
	#Botania - Gaia Guardian 2
var gGuardian2 = LootTables.getTable("gaia_guardian_2");
	#Desert Pyramid
var pyramid = LootTables.getTable("minecraft:chests/desert_pyramid");
	#Desert Pyramid - Main
var pyramidMain = pyramid.getPool("main");
pyramidMain.removeEntry("minecraft:diamond");
pyramidMain.removeEntry("minecraft:bone");
pyramidMain.removeEntry("minecraft:rotten_flesh");
pyramidMain.removeEntry("minecraft:saddle");
pyramidMain.removeEntry("empty");
pyramidMain.removeEntry("minecraft:iron_horse_armor");
pyramidMain.removeEntry("minecraft:golden_horse_armor");
pyramidMain.removeEntry("minecraft:diamond_horse_armor");
pyramidMain.removeEntry("abyssalcraft:copper_ingot");
pyramidMain.removeEntry("abyssalcraft:tin_ingot");
pyramidMain.removeEntry("abyssalcraft:crystallized_zinc");
pyramidMain.removeEntry("abyssalcraft:shadow_fragment");
pyramidMain.removeEntry("abyssalcraft:shadow_gem_shard");
pyramidMain.removeEntry("rftoolsdim:parcel");
pyramidMain.removeEntry("silentgemsGems1");
pyramidMain.removeEntry("silentgemsGems2");
pyramidMain.removeEntry("evilcraft:origins_of_darkness");
pyramidMain.removeEntry("evilcraft:condensed_blood");
pyramidMain.removeEntry("evilcraft:box_of_eternal_closure");
	#Desert Pyramid - Pool1
var pyramidPool1 = pyramid.getPool("pool1");
pyramidPool1.removeEntry("minecraft:bone");
pyramidPool1.removeEntry("minecraft:rotten_flesh");
pyramidPool1.removeEntry("minecraft:string");
pyramidPool1.removeEntry("minecraft:sand");
pyramidPool1.removeEntry("evilcraft:origins_of_darkness");
pyramidPool1.removeEntry("evilcraft:condensed_blood");
pyramidPool1.removeEntry("evilcraft:box_of_eternal_closure");
	#Desert Pyramid - Reliquary
var pyramidReliquary = 	pyramid.getPool("xreliquary_inject_pool");
pyramidReliquary.removeEntry("evilcraft:origins_of_darkness");
pyramidReliquary.removeEntry("evilcraft:condensed_blood");
pyramidReliquary.removeEntry("evilcraft:box_of_eternal_closure");
	#Desert Pyramid - IC2
pyramid.removePool("ic2");
	#Desert Pyramid - Forestry Factory Items
pyramid.removePool("forestry_factory_items");
	#Desert Pyramid - Forestry Bees
//Consider increasing the amount of bee rolls, and putting a Monastic Bee
	#Desert Pyramid - Random Things
pyramid.removePool("randomthings:biomeCrystal");
	#Desert Pyramid - Mom's Spaghetti
//Increase it to 25%, to have on average one spaghetti per temple
	#Jungle Temple
var temple = LootTables.getTable("minecraft:chests/jungle_temple");
	#Jungle Temple - Main
var templeMain = temple.getPool("main");
	#Jungle Temple - Reliquary
var templeReliquary = temple.getPool("xreliquary_inject_pool");
templeReliquary.removeEntry("evilcraft:origins_of_darkness");
templeReliquary.removeEntry("evilcraft:condensed_blood");
templeReliquary.removeEntry("evilcraft:box_of_eternal_closure");
	#Jungle Temple - IC2
temple.removePool("ic2");
	#Jungle Temple - Random Things
temple.removePool("randomthings:slimeCube");
temple.removePool("randomthings:biomeCrystal");
	#Jungle Temple - Moms Spaghetti
//Set the chance to 100%
	#Simple Dungeon
var simpleDungeon = LootTables.getTable("minecraft:chests/simple_dungeon");
	#Simple Dungeon - main
var simpleDungeonMain = simpleDungeon.getPool("main");
simpleDungeonMain.removeEntry("minecraft:saddle");
simpleDungeonMain.removeEntry("minecraft:golden_apple");
simpleDungeonMain.removeEntry("minecraft:golden_apple#0");
simpleDungeonMain.removeEntry("minecraft:name_tag");
simpleDungeonMain.removeEntry("minecraft:golden_horse_armor");
simpleDungeonMain.removeEntry("minecraft:iron_horse_armor");
simpleDungeonMain.removeEntry("minecraft:diamond_horse_armor");
simpleDungeonMain.removeEntry("abyssalcraft:abyssalnite_ingot");
simpleDungeonMain.removeEntry("abyssalcraft:copper_ingot");
simpleDungeonMain.removeEntry("abyssalcraft:tin_ingot");
simpleDungeonMain.removeEntry("abyssalcraft:crystallized_zinc");
simpleDungeonMain.removeEntry("abyssalcraft:coralium_gem");
simpleDungeonMain.removeEntry("abyssalcraft:shadow_fragment");
simpleDungeonMain.removeEntry("abyssalcraft:shadow_gem_shard");
simpleDungeonMain.removeEntry("rftoolsdim:parcel");
simpleDungeonMain.removeEntry("evilcraft:origins_of_darkness");
simpleDungeonMain.removeEntry("evilcraft:condensed_blood");
simpleDungeonMain.removeEntry("evilcraft:box_of_eternal_closure");
	#Simple Dungeon - pool1
var simpleDungeonPool1 = simpleDungeon.getPool("pool1");
simpleDungeonPool1.removeEntry("minecraft:iron_ingot");
simpleDungeonPool1.removeEntry("minecraft:gold_ingot");
simpleDungeonPool1.removeEntry("minecraft:bread");
simpleDungeonPool1.removeEntry("minecraft:wheat");
simpleDungeonPool1.removeEntry("minecraft:redstone");
simpleDungeonPool1.removeEntry("minecraft:coal");
simpleDungeonPool1.removeEntry("minecraft:melon_seeds");
simpleDungeonPool1.removeEntry("minecraft:pumpkin_seeds");
simpleDungeonPool1.removeEntry("minecraft:beetroot_seeds");
simpleDungeonPool1.removeEntry("evilcraft:origins_of_darkness");
simpleDungeonPool1.removeEntry("evilcraft:condensed_blood");
simpleDungeonPool1.removeEntry("evilcraft:box_of_eternal_closure");
	#Simple Dungeon - pool2
var simpleDungeonPool2 = simpleDungeon.getPool("pool2");
simpleDungeonPool2.removeEntry("minecraft:bone");
simpleDungeonPool2.removeEntry("minecraft:gunpowder");
simpleDungeonPool2.removeEntry("minecraft:rotten_flesh");
simpleDungeonPool2.removeEntry("minecraft:string");
simpleDungeonPool2.removeEntry("evilcraft:origins_of_darkness");
simpleDungeonPool2.removeEntry("evilcraft:condensed_blood");
simpleDungeonPool2.removeEntry("evilcraft:box_of_eternal_closure");
	#Simple Dungeon - ic2
simpleDungeon.removePool("ic2");
	#Simple Dungeon - reliquary
var simpleDungeonReliquary = simpleDungeon.getPool("xreliquary_inject_pool");
simpleDungeonReliquary.removeEntry("evilcraft:origins_of_darkness");
simpleDungeonReliquary.removeEntry("evilcraft:condensed_blood");
simpleDungeonReliquary.removeEntry("evilcraft:box_of_eternal_closure");
	#Simple Dungeon - Randomt Things Lava Charm
simpleDungeon.removePool("randomthings:lavaCharm");
	#Simple Dungeon - Randomt Things Summoning Pendulum
simpleDungeon.removePool("randomthings:summoningPendulum");
	#Simple Dungeon - Magic Hood
simpleDungeon.removePool("randomthings:magicHood");
	#Simple Dungeon - Slime Cube
simpleDungeon.removePool("randomthings:slimeCube");
	#Simple Dungeon - Biome Crystal
simpleDungeon.removePool("randomthings:biomeCrystal");
	#Spider
var spider = LootTables.getTable("minecraft:entities/spider");
var spiderPool1 = spider.getPool("pool1");
spiderPool1.removeItemEntry(<minecraft:spider_eye>);
spiderPool1.addItemEntryJSON(<minecraft:spider_eye>, 20, 0, [
	"count: {min: 1.0, max: 1.0}, function: 'minecraft:set_count'"], []);
	#Stranger - Deadly Monsters
var stranger = LootTables.getTable("dmonsters:stranger");
var strangerPool = stranger.getPool("dmonsters:stranger");
strangerPool.removeItemEntry(<minecraft:redstone>);
	#Village - Blacksmith
var blacksmith = LootTables.getTable("minecraft:chests/village_blacksmith");
	#Village - Blacksmith Main
var blacksmithMain = blacksmith.getPool("main");
	var blacksmithMainRemoved = [
	"minecraft:diamond",
	"minecraft:bread",
	"minecraft:apple",
	"minecraft:obsidian",
	"minecraft:sapling",
	"minecraft:iron_horse_armor",
	"minecraft:golden_horse_armor", 			
	"minecraft:diamond_horse_armor",
	"abyssalcraft:oblivion_catalyst",			
	"abyssalcraft:copper_ingot",
	"abyssalcraft:tin_ingot", 					
	"abyssalcraft:crystallized_zinc",
	"abyssalcraft:cobblestone_upgrade_kit", 	
	"abyssalcraft:iron_upgrade_kit",
	"abyssalcraft:gold_upgrade_kit", 			
	"abyssalcraft:diamond_upgrade_kit",
	"rftoolsdim:parcel", 						
	"evilcraft:origins_of_darkness",
	"evilcraft:condensed_blood", 				
	"evilcraft:box_of_eternal_closure"] as string[];
	for i in blacksmithMainRemoved {blacksmithMain.removeEntry(i);}
	#Village - Blacksmith Reliquary
var blacksmithReliquary = blacksmith.getPool("randomthings:magicHood");
	var bsReliquaryRemoved = [
	"evilcraft:origins_of_darkness",
	"evilcraft:condensed_blood",
	"evilcraft:box_of_eternal_closure"] as string[];
	for i in bsReliquaryRemoved {blacksmithReliquary.removeEntry(i);}
	#Village - Blacksmith IC2
blacksmith.removePool("ic2");
	#Village - Blacksmith Random Things Magic Hood
blacksmith.removePool("randomthings:magicHood");
	#Village - Blacksmith Random Things biome Crystal
blacksmith.removePool("randomthings:biomeCrystal");
	#Village - Blacksmith Botania - see Botania - Village Blacksmith
	#Village - Immersive Engineers House

var ieHouse = LootTables.getTable("immersiveengineering:chests/engineers_house");
var iePool = ieHouse.getPool("immersiveengineering:engineers_village_house");
/*
var ieEntries = [
	"steel_rod",
	"aluminium_rod",
	"steel_component",
	"copper_ingot",
	"aluminium_ingot",
	"lead_nugget",
	"silver_nugget",
	"nugget_nickel"] as String[];
*/
iePool.removeEntry("steel_rod");
iePool.removeEntry("aluminium_rod");
iePool.removeEntry("steel_component");
iePool.removeEntry("copper_ingot");
iePool.removeEntry("aluminium_ingot");
iePool.removeEntry("lead_nugget");
iePool.removeEntry("silver_nugget");
iePool.removeEntry("nugget_nickel");
//for i in ieEntries {iePool.removeEntry(i);}
	#Wither Skeleton - Vanilla
var witherSkeleton = LootTables.getTable("minecraft:entities/wither_skeleton");
witherSkeleton.removePool("xuLootDropOfEvil");

val zombie = LootTables.getTable("minecraft:entities/zombie");
val zomPool1 = zombie.getPool("pool1");
zomPool1.removeEntry("minecraft:iron_ingot");
