import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

print("----------Baubley Heart Canisters Start----------");
var heartZombie = <xreliquary:mob_ingredient:6>;
	#Canister
mods.jei.JEI.removeAndHide(<bhc:canister>);

	#Red Heart
recipes.addShaped(<bhc:red_heart>, [
	[null, <ore:rodBlaze>, null],
	[<ore:rodBlizz>, heartZombie, <ore:enderpearl>],
	[null, <ore:gemShadow>, null]]);
	#Red Heart Canister
recipes.remove(<bhc:red_heart_canister>);
recipes.addShaped(<bhc:red_heart_canister>, [
	[<ore:plateDenseRefinedIron>, <ore:densePlateTin>, <ore:plateDenseRefinedIron>],
	[<ore:densePlateTin>, null, <ore:densePlateTin>],
	[<ore:plateDenseRefinedIron>, <ore:densePlateTin>, <ore:plateDenseRefinedIron>]]);
<bhc:red_heart_canister>.addTooltip(format.yellow("Place into baubles slot manually, don't shift click."));
	#Orange Heart

	#Orange Heart Canister
recipes.remove(<bhc:orange_heart_canister>);
<bhc:orange_heart_canister>.addTooltip(format.yellow("Place into baubles slot manually, don't shift click."));
	#Green Heart Canister
recipes.remove(<bhc:green_heart_canister>);
<bhc:green_heart_canister>.addTooltip(format.yellow("Place into baubles slot manually, don't shift click."));
	#Blue Heart Canister
recipes.remove(<bhc:blue_heart_canister>);
<bhc:blue_heart_canister>.addTooltip(format.yellow("Place into baubles slot manually, don't shift click."));

print("-----------Baubley Heart Canisters End-----------");