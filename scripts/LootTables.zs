import loottweaker.vanilla.loot.LootTables;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Functions;
import crafttweaker.item.IItemStack;

//removeEntry(String entryName)
//removeItemEntry(IItemStack stack)
//addItemEntryHelper(IItemStack iStack, int weight, int quality, LootFunction[] functions, LootCondition[] conditions)
val antipig = LootTables.getTable("abyssalcraft:entities/anti_pig");

val astralshrine = LootTables.getTable("astralsorcery:chest_shrine");
val astralmain = astralshrine.getPool("astralsorcery:chest_shrine");
astralmain.removeItemEntry(<minecraft:emerald>);
astralmain.removeItemEntry(<minecraft:diamond>);
astralmain.removeItemEntry(<minecraft:bone>);
astralmain.removeItemEntry(<minecraft:glowstone_dust>);
astralmain.addItemEntryHelper(<abyssalcraft:essence>, 20, 0, [], []);
astralmain.addItemEntryHelper(<randomthings:itemcollector>, 10, 0, [], []);
astralmain.addItemEntryHelper(<astralsorcery:itemhandtelescope>, 5, 0, [], []);
astralmain.addItemEntryHelper(<astralsorcery:blockmachine:1>, 5, 0, [], []);
astralmain.addItemEntryHelper(<astralsorcery:itemjournal>, 5, 0, [], []);
astralmain.addItemEntryHelper(<astralsorcery:blockattunementrelay>, 10, 0, 
	[Functions.setCount(2, 5)], []);

val lushTable = LootTables.getTable("actuallyadditions:lush_caves");
val lushcave = lushTable.getPool("main");
lushcave.removeItemEntry(<minecraft:bone>);
lushcave.removeItemEntry(<minecraft:leather_leggings>);
lushcave.removeItemEntry(<minecraft:leather_boots>);
lushcave.removeItemEntry(<minecraft:leather_helmet>);
lushcave.removeItemEntry(<minecraft:leather_chestplate>);
lushcave.removeItemEntry(<actuallyadditions:item_crystal:2>);
lushcave.removeItemEntry(<actuallyadditions:item_crystal:4>);

val ieHouse = LootTables.getTable("immersiveengineering:chests/engineers_house");
val iePool = ieHouse.getPool("immersiveengineering:engineers_village_house");
val ieRemoved = [
	<immersiveengineering:material:2>,	// Steel Rod
	<immersiveengineering:material:3>,	// Aluminium Rod
	<immersiveengineering:material:9>,	// Steel Mechanical Component
	<immersiveengineering:metal:22>,	// Lead Nugget
	<immersiveengineering:metal:23>,	// Silver Nugget
	<immersiveengineering:metal:24>		// Nickel Nugget
	] as IItemstack[];

for i in ieRemoved {
	iePool.removeItemEntry(i);
}


