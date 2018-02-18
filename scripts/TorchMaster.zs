import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
	
print("-------------------Torchmaster Start-------------------");
	#Feral Flare Lantern
recipes.remove(<torchmaster:feral_flare_lantern>);
// Probably some astral sorcery recipe
	#Dread Lamp
recipes.remove(<torchmaster:dread_lamp>);
// Could have this naturally spawn in some dungeons
// Make the recipe more insiduous, probably Abyssalcraft altar recipe
	#Terrain Lighter
recipes.remove(<torchmaster:terrain_lighter>);
recipes.addShaped(<torchmaster:terrain_lighter>, [
	[<ore:stickWood>, null, <ore:stickWood>],
	[<ore:logWood>, <cyclicmagic:tool_torch_launcher>, <ore:logWood>],
	[<minecraft:stone>, <minecraft:furnace>, <minecraft:stone>]]);
	#Mega Torch - Unlit
recipes.remove(<torchmaster:mega_torch>);
<torchmaster:mega_torch>.addTooltip(format.aqua("Burns out every 3 days, radius of 24 blocks. For permanent anti-hostile mob spawning, see Astral Sorcery Lucerna rituals."));
// Once again a magical recipe that's probably done either Extended Crafting Infusion

print("---------------------Torchmaster End---------------------");