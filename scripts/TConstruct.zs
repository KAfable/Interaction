import mods.tconstruct.Alloy as tca;
import mods.tconstruct.Casting as tcc;
import mods.tconstruct.Drying as tcd;
import mods.tconstruct.Fuel as tcf;
import mods.tconstruct.Melting as tcm;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

// Items
var itemDisabled = [
  <tconstruct:cast_custom:3>,
  <tconstruct:cast_custom:4>
] as IItemStack[];

for item in itemDisabled {
  mods.jei.JEI.removeAndHide(item);}

//Molten Recipes
var liquidDisabled = [
	<liquid:iron>,
	<liquid:gold>,
	<liquid:moltenabyssalnite>,
	<liquid:zinc>,
	<liquid:copper>,
	<liquid:tin>,
	<liquid:aluminum>
] as ILiquidStack[];
var dusts = [
	<thermalfoundation:material:0>,
	<thermalfoundation:material:1>,
	<acintegration:dust:0>,
	<techreborn:dust:59>,
	<thermalfoundation:material:64>,
	<thermalfoundation:material:65>,
	<techreborn:dust:5>
] as IItemStack[];
var ores = [
	<minecraft:iron_ore>,
	<minecraft:gold_ore>,
	<abyssalcraft:abyore>,
	<fp:erze:1>,
	<thermalfoundation:ore:0>,
	<thermalfoundation:ore:1>
] as IItemStack[];
for i in 0 to 6 {
	tcm.removeRecipe(liquidDisabled[i]*144, ores[i]);
//tcm.removeRecipe(liquidDisabled[i]*144, dusts[i]);
}
//for i in 0 to 7 {
//	tcm.addRecipe(liquidDisabled[i]*144, dusts[i]);
//}
tcm.addRecipe(<liquid:aluminum>*144, <techreborn:dust:5>);

// Basin Recipes
var basinDisabled = [
  <minecraft:iron_block>,
  <minecraft:gold_block>,
  <chisel:blockcobalt>,
  <tconstruct:metal:1>,
  <tconstruct:metal:2>,
  <tconstruct:metal:4>,
  <tconstruct:metal:5>,
  <thermalfoundation:storage_alloy:4>,
  <abyssalcraft:ingotblock>,
  <abyssalcraft:ingotblock:1>,
  <ic2:resource:10>,
  <techreborn:storage:2>,
  <techreborn:storage:3>,
  <techreborn:storage:5>,
  <techreborn:storage:8>,
  <techreborn:storage:10>
] as IItemStack[];

for item in basinDisabled {
  tcc.removeBasinRecipe(item);}

// Table Recipes
var tableDisabled = [
  <tconstruct:cast_custom:3>,
  <tconstruct:cast_custom:4>,
  <ic2:ingot:6>,
  <ic2:plate:8>,
  <thermalfoundation:material:257>,
  <thermalfoundation:material:357>,
  <thermalfoundation:material:293>,
  <thermalfoundation:material:356>,
  <thermalfoundation:material:353>,
  <thermalfoundation:material:289>,
  <thermalfoundation:material:257>,
] as IItemStack[];

for item in tableDisabled {
  tcc.removeBasinRecipe(item);}
