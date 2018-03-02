import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemDefinition;

print("Extra Utilities 2 Start");
	
	#Crusher
recipes.remove(<extrautils2:machine>.withTag({Type: "extrautils2:crusher"}), true);

	#Pipes
recipes.remove(<extrautils2:pipe>);
recipes.addShaped(<extrautils2:pipe>*8, [
  [<ore:plateIron>,<ore:plateIron>,<ore:plateIron>],
  [<ore:blockGlass>,<forestry:chipsets>,<ore:blockGlass>],
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
recipes.addShaped(<extrautils2:machine>.withTag({Type: "extrautils2:generator_culinary"}), [
	[null, <botania:specialflower>.withTag({type: "gourmaryllis"}), null],
	[null, casingBasic, null],
	[electricPistonBasic, gearRedstone, electricPistonBasic]]);
	#Generator - Death - Tier 2
recipes.remove(<extrautils2:machine>.withTag({Type: "extrautils2:generator_death"}), true);
recipes.addShaped(<extrautils2:machine>.withTag({Type: "extrautils2:generator_death"}), [
	[null, <tconstruct:soil:3>, null],
	[<tconstruct:soil:3>, casingBasic, <tconstruct:soil:3>],
	[electricPistonBasic, gearRedstone, electricPistonBasic]]);
	#Generator - Furnace - Tier 2 (too easy)
recipes.remove(<extrautils2:machine>.withTag({Type: "extrautils2:generator"}), true);
recipes.addShaped(<extrautils2:machine>.withTag({Type: "extrautils2:generator"}), [
	[null, electricPistonBasic, null],
	[<minecraft:furnace>, casingBasic, <minecraft:furnace>],
	[electricPistonBasic, gearRedstone, electricPistonBasic]]);
	#Generator - Potion - Tier 2
recipes.remove(<extrautils2:machine>.withTag({Type: "extrautils2:generator_potion"}), true);
recipes.addShaped(<extrautils2:machine>.withTag({Type: "extrautils2:generator_potion"}), [
	[null, <plants2:brewing_cauldron>, null],
	[null, casingBasic, null],
	[electricPistonBasic, gearRedstone, electricPistonBasic]]);
	#Generator - Frosty - Tier 2
recipes.remove(<extrautils2:machine>.withTag({Type: "extrautils2:generator_ice"}), true);
recipes.addShaped(<extrautils2:machine>.withTag({Type: "extrautils2:generator_ice"}), [
	[null, <ore:rodBlizz>, null],
	[null, casingBasic, null],
	[electricPistonBasic, gearRedstone, electricPistonBasic]]);
	#Generator - Pink - Tier 2
recipes.remove(<extrautils2:machine>.withTag({Type: "extrautils2:generator_pink"}), true);
recipes.addShaped(<extrautils2:machine>.withTag({Type: "extrautils2:generator_pink"}), [
	[<ore:dyePink>, <ore:dyePink>, <ore:dyePink>],
	[null, casingBasic, null],
	[electricPistonBasic, gearRedstone, electricPistonBasic]]);
	#Generator - Explosives - Tier 2
recipes.remove(<extrautils2:machine>.withTag({Type: "extrautils2:generator_tnt"}), true);
recipes.addShaped(<extrautils2:machine>.withTag({Type: "extrautils2:generator_tnt"}), [
	[null, <forge:bucketfilled>.withTag({FluidName: "tolulene", Amount: 1000}), null],
	[null, casingBasic, null],
	[electricPistonBasic, gearRedstone, electricPistonBasic]]);
	#Generator - Survival - Tier 2 (too easy)
recipes.remove(<extrautils2:machine>.withTag({Type: "extrautils2:generator_survival"}), true);
recipes.addShaped(<extrautils2:machine>.withTag({Type: "extrautils2:generator_survival"}), [
	[<minecraft:furnace>, electricPistonBasic, <minecraft:clock>],
	[null, casingBasic, null],
	[electricPistonBasic, gearRedstone, electricPistonBasic]]);

	#Generator - Slimey - Tier 3
recipes.remove(<extrautils2:machine>.withTag({Type: "extrautils2:generator_slime"}), true);
recipes.addShaped(<extrautils2:machine>.withTag({Type: "extrautils2:generator_slime"}), [
	[null, <xreliquary:mob_ingredient:4>, null],
	[<xreliquary:mob_ingredient:4>, casingIntermediate, <xreliquary:mob_ingredient:4>],
	[electricPistonIntermediate, gearRedstone, electricPistonIntermediate]]);
	#Generator - Overclock - Tier 3
recipes.remove(<extrautils2:machine>.withTag({Type: "extrautils2:generator_overclock"}), true);
	#Generator - Magmatic - Tier 3 (too easy)
recipes.remove(<extrautils2:machine>.withTag({Type: "extrautils2:generator_lava"}), true);
	#Generator - Ender - Tier 3 (pair with spawners)
recipes.remove(<extrautils2:machine>.withTag({Type: "extrautils2:generator_ender"}), true);
	#Generator - Enchantment - Tier 3 (pair with IF Enchanter)
recipes.remove(<extrautils2:machine>.withTag({Type: "extrautils2:generator_enchant"}), true);

	#Generator - Nether Star - Tier 4
recipes.remove(<extrautils2:machine>.withTag({Type: "extrautils2:generator_netherstar"}), true);
	#Generator - Halitosis - Tier 4
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

	#Upgrade - Base
recipes.remove(<extrautils2:ingredients:9>);
recipes.addShaped(<extrautils2:ingredients:9>, [
	[null, <ore:plateRedstone>, null],
	[<ore:plateRedstone>, circuitBasic, <ore:plateRedstone>],
	[null, <ore:plateRedstone>, null]]);
	
	#Upgrade - Mining
	
	#Upgrade - Speed 
recipes.remove(<extrautils2:ingredients:6>);
recipes.addShaped(<extrautils2:ingredients:6>, [
	[null, plateGlowstone, null],
	[null, <extrautils2:ingredients:9>, null],
	[null, <ore:manaPearl>, null]]);
	#Upgrade - Speed (Magical)
recipes.remove(<extrautils2:ingredients:15>);
	#Upgrade - Speed (Ultimate)
recipes.remove(<extrautils2:ingredients:16>);
	#Upgrade - Stack

print("-----------------------------Extra Utilities 2 End--------------------------");
