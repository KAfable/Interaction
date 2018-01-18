import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemDefinition;

print("Extra Utilities 2 Start");


	#Pipes
recipes.remove(<extrautils2:pipe>);
recipes.addShaped(<extrautils2:pipe>*8, [
  [<ore:plateIron>,<ore:plateIron>,<ore:plateIron>],
  [<ore:glass>,<forestry:chipsets>,<ore:glass>],
  [<ore:plateIron>,<ore:plateIron>,<ore:plateIron>]]);

	#Ring of Flying Squid
recipes.remove(<extrautils2:chickenring:1>);

	#Angel Ring
for i in 0 to 5 {
	recipes.remove(<extrautils2:angelring>.definition.makeStack(i));}

	#Machine Block
recipes.remove(<extrautils2:machine>, true);
	
	#Generator - Culinary - Tier 2
recipes.remove(<extrautils2:machine>.withTag({Type: "extrautils2:generator_culinary"}), true);
	#Generator - Death - Tier 2
recipes.remove(<extrautils2:machine>.withTag({Type: "extrautils2:generator_death"}), true);
	#Generator - Potion - Tier 2
recipes.remove(<extrautils2:machine>.withTag({Type: "extrautils2:generator_potion"}), true);
	#Generator - Frosty - Tier 2
recipes.remove(<extrautils2:machine>.withTag({Type: "extrautils2:generator_ice"}), true);
	#Generator - Slimey (check how strong with slime farm)
recipes.remove(<extrautils2:machine>.withTag({Type: "extrautils2:generator_slime"}), true);
	#Generator - Pink - Tier 2
recipes.remove(<extrautils2:machine>.withTag({Type: "extrautils2:generator_pink"}), true);
	#Generator - Explosives - Tier 2
recipes.remove(<extrautils2:machine>.withTag({Type: "extrautils2:generator_tnt"}), true);

	#Generator - Survival - Tier 3 (too easy)
recipes.remove(<extrautils2:machine>.withTag({Type: "extrautils2:generator_survival"}), true);
	#Generator - Furnace - Tier 3 (too easy)
recipes.remove(<extrautils2:machine>.withTag({Type: "extrautils2:generator"}), true);
	#Generator - Overclock - Tier 3
recipes.remove(<extrautils2:machine>.withTag({Type: "extrautils2:generator_overclock"}), true);

	#Generator - Magmatic - Tier 4 (too easy)
recipes.remove(<extrautils2:machine>.withTag({Type: "extrautils2:generator_lava"}), true);
	#Generator - Ender - Tier 4 (pair with spawners)
recipes.remove(<extrautils2:machine>.withTag({Type: "extrautils2:generator_ender"}), true);
	#Generator - Enchantment - Tier 4 (pair with IF Enchanter)
recipes.remove(<extrautils2:machine>.withTag({Type: "extrautils2:generator_enchant"}), true);

	#Generator - Nether Star - Tier 5
recipes.remove(<extrautils2:machine>.withTag({Type: "extrautils2:generator_netherstar"}), true);
	#Generator - Halitosis - Tier 5
recipes.remove(<extrautils2:machine>.withTag({Type: "extrautils2:generator_dragonsbreath"}), true);

	#Mechanical User // Maybe make them use Integrated Dynamics
recipes.remove(<extrautils2:user>);

	#Redstone Gear
recipes.remove(<extrautils2:ingredients:1>);

	#Redstone Lantern
recipes.remove(<extrautils2:redstonelantern>);
recipes.addShaped(<extrautils2:redstonelantern>, [
	[<minecraft:redstone>, <extrautils2:screen>, <minecraft:redstone>], 
	[<extrautils2:screen>, <extrautils2:redstoneclock>,<extrautils2:screen>],
	[<minecraft:redstone>, gearRedstone, <minecraft:redstone>]]);

	#Scanner
recipes.remove(<extrautils2:scanner>);
recipes.addShaped(<extrautils2:scanner>, [
	[<ore:stone>, <minecraft:spider_eye>, <ore:stone>],
	[<ore:stone>, <extrautils2:redstoneclock>, <ore:stone>],
	[<ore:stone>, gearRedstone, <ore:stone>]]);

print("-----------------------------Extra Utilities 2 End--------------------------");
