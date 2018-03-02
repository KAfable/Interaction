import mods.crossroads.FluidCoolingChamber as fcc;
import mods.crossroads.Grindstone as gs;

print("---------------Crossroads Start------------------");
print("----------------Crossroads End-------------------");


  #Fluid Cooling Chamber
recipes.removeShaped(<crossroads:fluid_cooling_chamber>);
mods.tconstruct.Casting.addBasinRecipe(<crossroads:fluid_cooling_chamber>,<ironchest:iron_chest:3>, <liquid:tin>, 1296, true);

//addRecipe(IItemStack output, ILiquidStack input, double maxTemp, double heatAdded)
//mods.tconstruct.Casting.removeBasinRecipe(IItemStack output);
//mods.tconstruct.Casting.removeTableRecipe(IItemStack output);
fcc.addRecipe(<minecraft:glass>, <liquid:glass>*144, 1000, 50);
fcc.addRecipe(<tconstruct:materials>,<liquid:stone>*72, 1000, 50);
mods.tconstruct.Casting.removeTableRecipe(<tconstruct:materials>);

fcc.addRecipe(<minecraft:iron_ingot>, <liquid:iron>*144, 1000, 100);
mods.tconstruct.Casting.removeTableRecipe(<minecraft:iron_ingot>);

fcc.addRecipe(<minecraft:gold_ingot>, <liquid:gold>*144, 1000, 100);
mods.tconstruct.Casting.removeTableRecipe(<minecraft:gold_ingot>);

fcc.addRecipe(<tconstruct:ingots>, <liquid:cobalt>*144, 1000, 100);
mods.tconstruct.Casting.removeTableRecipe(<tconstruct:ingots>);

fcc.addRecipe(<tconstruct:ingots:1>, <liquid:ardite>*144, 1000, 100);
mods.tconstruct.Casting.removeTableRecipe(<tconstruct:ingots:1>);

fcc.addRecipe(<tconstruct:ingots:2>, <liquid:manyullyn>*144, 1000, 100);
mods.tconstruct.Casting.removeTableRecipe(<tconstruct:ingots:2>);

fcc.addRecipe(<tconstruct:ingots:4>, <liquid:pigiron>*144, 1000, 100);
mods.tconstruct.Casting.removeBasinRecipe(<tconstruct:metal:4>);
mods.tconstruct.Casting.removeTableRecipe(<tconstruct:ingots:4>);

fcc.addRecipe(<tconstruct:ingots:5>, <liquid:alubrass>*144, 1000, 100);
mods.tconstruct.Casting.removeBasinRecipe(<tconstruct:metal:5>);
mods.tconstruct.Casting.removeTableRecipe(<tconstruct:ingots:5>);

fcc.addRecipe(<thermalfoundation:material:128>, <liquid:copper>*144, 1000, 100);
mods.tconstruct.Casting.removeBasinRecipe(<ic2:resource:6>);
mods.tconstruct.Casting.removeTableRecipe(<ic2:ingot:2>);
mods.tconstruct.Casting.removeTableRecipe(<ic2:plate:1>);

fcc.addRecipe(<thermalfoundation:material:129>, <liquid:tin>*144, 1000, 100);
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:129>);

fcc.addRecipe(<thermalfoundation:material:131>, <liquid:lead>*144, 1000, 100);
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:131>);

fcc.addRecipe(<thermalfoundation:material:132>, <liquid:aluminum>*144, 1000, 100);
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:132>);

fcc.addRecipe(<thermalfoundation:material:162>, <liquid:invar>*144, 1000, 100);
mods.tconstruct.Casting.removeBasinRecipe(<thermalfoundation:material:162>);

fcc.addRecipe(<thermalfoundation:material:163>, <liquid:bronze>*144, 1000, 100);
mods.tconstruct.Casting.removeBasinRecipe(<thermalfoundation:material:163>);

fcc.addRecipe(<techreborn:ingot:1>, <liquid:brass>*144, 1000, 100);
mods.tconstruct.Casting.removeTableRecipe(<techreborn:ingot:1>);

fcc.addRecipe(<techreborn:ingot:18>, <liquid:zinc>*144, 1000, 100);
mods.tconstruct.Casting.removeTableRecipe(<techreborn:ingot:18>);

fcc.addRecipe(<abyssalcraft:abyingot>, <liquid:moltenabyssalnite>*144, 1000, 100);
mods.tconstruct.Casting.removeTableRecipe(<abyssalcraft:abyingot>);

fcc.addRecipe(<abyssalcraft:dreadiumingot>, <liquid:moltendreadium>*144, 1000, 100);
mods.tconstruct.Casting.removeTableRecipe(<abyssalcraft:dreadiumingot>);

fcc.addRecipe(<mekanism:ingot:4>, <liquid:steel>*144, 1000, 100);
mods.tconstruct.Casting.removeTableRecipe(<mekanism:ingot:4>);

fcc.addRecipe(<abyssalcraft:cingot>, <liquid:moltenrefinedcoralium>*144, 1000, 100);
mods.tconstruct.Casting.removeTableRecipe(<abyssalcraft:cingot>);

fcc.addRecipe(<thermalfoundation:material:130>, <liquid:silver>*144, 1000, 400);
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:130>);

fcc.addRecipe(<thermalfoundation:material:133>, <liquid:nickel>*144, 1000, 400);
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:133>);

fcc.addRecipe(<thermalfoundation:material:134>, <liquid:platinum>*144, 1000, 400);
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:134>);

fcc.addRecipe(<thermalfoundation:material:161>, <liquid:electrum>*144, 1000, 400);
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:161>);

fcc.addRecipe(<thermalfoundation:material:164>, <liquid:constantan>*144, 1000, 400);
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:164>);

fcc.addRecipe(<thermalfoundation:material:165>, <liquid:signalum>*144, 1000, 400);
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:165>);



  #Axle
recipes.remove(<crossroads:axle>);
recipes.addShaped(<crossroads:axle>, [
  [null, <ore:ingotIron>, null],
  [null, <ore:ingotIron>, null],
  [null, <ore:ingotIron>, null]]);

  #Cables
recipes.removeShaped(<crossroads:heat_cable_copper_wool>);
recipes.addShaped(<crossroads:heat_cable_copper_wool>, [
  [<ore:wool>, <ore:wool>, <ore:wool>],
  [<ore:plateCopper>, <ore:plateCopper>, <ore:plateCopper>],
  [<ore:wool>, <ore:wool>, <ore:wool>]]);

recipes.removeShaped(<crossroads:heat_cable_copper_slime>);
recipes.addShaped(<crossroads:heat_cable_copper_slime>, [
  [<ore:slimeball>, <ore:slimeball>, <ore:slimeball>],
  [<ore:plateCopper>, <ore:plateCopper>, <ore:plateCopper>],
  [<ore:slimeball>, <ore:slimeball>, <ore:slimeball>]]);

recipes.removeShaped(<crossroads:heat_cable_copper_ice>);
recipes.addShaped(<crossroads:heat_cable_copper_ice>, [
  [<minecraft:packed_ice>, <minecraft:packed_ice>, <minecraft:packed_ice>],
  [<ore:plateCopper>, <ore:plateCopper>, <ore:plateCopper>],
  [<minecraft:packed_ice>, <minecraft:packed_ice>, <minecraft:packed_ice>]]);

recipes.removeShaped(<crossroads:heat_cable_copper_obsidian>);
recipes.addShaped(<crossroads:heat_cable_copper_obsidian>, [
  [<ore:obsidian>, <ore:obsidian>, <ore:obsidian>],
  [<ore:plateCopper>, <ore:plateCopper>, <ore:plateCopper>],
  [<ore:obsidian>, <ore:obsidian>, <ore:obsidian>]]);

recipes.removeShaped(<crossroads:heat_cable_copper_dirt>);
recipes.addShaped(<crossroads:heat_cable_copper_dirt>, [
  [<ore:dirt>, <ore:dirt>, <ore:dirt>],
  [<ore:plateCopper>, <ore:plateCopper>, <ore:plateCopper>],
  [<ore:dirt>, <ore:dirt>, <ore:dirt>]]);

  #Fluid Tube
recipes.remove(<crossroads:fluid_tube>);
recipes.addShaped(<crossroads:fluid_tube>*4, [
  [<ore:plateBronze>, <ore:plateBronze>, <ore:plateBronze>],
  [null, null, null],
  [<ore:plateBronze>, <ore:plateBronze>, <ore:plateBronze>]]);

  #Heat Exchanger
recipes.remove(<crossroads:heat_exchanger>);
recipes.addShaped(<crossroads:heat_exchanger>, [
  [<ore:plateIron>, <ore:plateCopper>, <ore:plateIron>],
  [<ore:plateCopper>, <ore:rotorCopper>, <ore:plateCopper>],
  [<ore:plateIron>, <ore:plateCopper>, <ore:plateIron>]]);

  #Gears
recipes.remove(<crossroads:gear_iron>);
recipes.addShapeless(<crossroads:gear_iron>, [<ore:gearIron>, <crossroads:axle>]);

recipes.remove(<crossroads:gear_gold>);
recipes.addShapeless(<crossroads:gear_gold>, [<ore:gearGold>, <crossroads:axle>]);

recipes.remove(<crossroads:gear_copper>);
recipes.addShapeless(<crossroads:gear_copper>, [<ore:gearCopper>, <crossroads:axle>]);

recipes.remove(<crossroads:gear_tin>);
recipes.addShapeless(<crossroads:gear_tin>, [<ore:gearTin>, <crossroads:axle>]);

recipes.remove(<crossroads:gear_bronze>);
recipes.addShapeless(<crossroads:gear_bronze>, [<ore:gearBronze>, <crossroads:axle>]);

  #Rotary Pump
recipes.removeByRecipeName("crossroads:rotary_pump");
recipes.addShaped(<crossroads:rotary_pump>, [
  [plateBronze, stickIron, plateBronze],
  [plateBronze, stickIron, plateBronze],
  [<ore:blockGlass>, stickIron, <ore:blockGlass>]]);

  #Steam Boiler
recipes.remove(<crossroads:steam_boiler>);
recipes.addShaped(<crossroads:steam_boiler>, [
  [<ore:plateBronze>, <ore:plateBronze>, <ore:plateBronze>],
  [<ore:plateBronze>, <thermalexpansion:tank>, <ore:plateBronze>],
  [<ore:plateCopper>, <ore:blockCopper>, <ore:plateCopper>]]);

  #Grindstone
//addRecipe(IItemStack input, IIngredient output1, @Optional IIngredient output2, @Optional IIngredient output3)
//addRecipe(IOreDictEntry input, IIngredient output1, @Optional IIngredient output2, @Optional IIngredient output3)
//removeRecipe(IItemStack input)
//removeRecipe(IOreDictEntry input)

    # Cobblegen
gs.removeRecipe(<ore:cobblestone>);
gs.addRecipe(<ore:cobblestone>, <minecraft:gravel>);
gs.removeRecipe(<ore:gravel>);
gs.addRecipe(<ore:gravel>, <minecraft:sand>, <minecraft:flint>);
gs.removeRecipe(<ore:stone>);
gs.addRecipe(<ore:stone>, <skyresources:techitemcomponent>);

print("Copper Ore Removal Check");
  #Removing Initial Recipes
gs.removeRecipe(<ore:oreCopper>);
print("Copper Ore Removal Check");

  #Dust Recipes
gs.addRecipe(<ore:oreIron>,                 <thermalfoundation:material>, <minecraft:sand>);
gs.addRecipe(<ore:oreApatite>,              <forestry:apatite>*5, <minecraft:sand>);
gs.addRecipe(<ore:oreCoal>,                 <minecraft:coal>*2, <minecraft:sand>);
gs.addRecipe(<ore:oreGold>,                 <thermalfoundation:material:1>, <minecraft:sand>);
gs.addRecipe(<ore:oreBauxite>,              dustBauxite, <minecraft:sand>);
gs.addRecipe(<ore:oreTin>,                  <thermalfoundation:material:65>, <minecraft:sand>);
gs.addRecipe(<ore:oreCopper>,               <thermalfoundation:material:64>, <minecraft:sand>);
gs.addRecipe(<ore:oreLapis>,                <minecraft:dye:4>*7, <minecraft:sand>);
gs.addRecipe(<ore:oreRedstone>,             <minecraft:redstone>*7, <minecraft:sand>);
gs.addRecipe(<ore:oreZinc>,                 <techreborn:dust:59>, <minecraft:sand>);
gs.addRecipe(<ore:oreCoralium>,             <abyssalcraft:coralium>*3, <minecraft:sand>);
gs.addRecipe(<ore:oreAbyssalnite>,          <acintegration:dust>, <minecraft:sand>);
gs.addRecipe(<ore:oreAquamarine>,           <astralsorcery:itemcraftingcomponent>*4, <minecraft:sand>);
gs.addRecipe(<ore:obsidian>,                <thermalfoundation:material:770>, <minecraft:sand>);
gs.addRecipe(<ore:coal>,                    <thermalfoundation:material:768>, <minecraft:sand>);
gs.addRecipe(<ore:charcoal>,                <thermalfoundation:material:769>, <minecraft:sand>);
gs.addRecipe(<immersiveengineering:material:6>,   <immersiveengineering:material:17>); //Coal Coke
gs.addRecipe(<techreborn:rubber_log>,             <ic2:misc_resource:4>);
gs.addRecipe(<ic2:rubber_wood>,                   <ic2:misc_resource:4>);

    #Tier 2A
gs.addRecipe(<ore:oreSaltpeter>,            <abyssalcraft:nitre>*3, <minecraft:sand>);
gs.addRecipe(<ore:oreLiquifiedCoralium>,    <acintegration:dust:1>, <minecraft:sand>);
gs.addRecipe(<ore:oreDark>,                 <evilcraft:dark_gem>*2, <minecraft:sand>);
gs.addRecipe(<ore:oreAstralStarmetal>,      <astralsorcery:itemcraftingcomponent:2>*2);
    #Tier 2B
gs.addRecipe(<ore:oreSulfur>,               <thermalfoundation:material:771>*2, <minecraft:sand>);
gs.addRecipe(<ore:oreQuartz>,               <minecraft:quartz>*2, <minecraft:sand>);
gs.addRecipe(<ore:oreQuartzBlack>,          <actuallyadditions:item_misc:5>*2, <minecraft:sand>);
gs.addRecipe(<ore:oreCertusQuartz>,         <appliedenergistics2:material>*2, <minecraft:sand>);
gs.addRecipe(<ore:oreChargedCertusQuartz>,  <appliedenergistics2:material:1>*2, <minecraft:sand>);

  #Tier 3A/3B
//gs.addRecipe(<ore:oreCobalt>, );
//gs.addRecipe(<ore:oreArdite>, );
gs.addRecipe(<ore:oreDiamond>, <minecraft:diamond>*2);
gs.addRecipe(<ore:oreEmerald>, <minecraft:emerald>*2);
gs.addRecipe(<ore:oreOsmium>, <mekanism:dust:2>);
gs.addRecipe(<ore:oreLavaCrystal>, <armorplus:lava_crystal>*2);
gs.addRecipe(<ore:oreSilver>, <thermalfoundation:material:66>);
gs.addRecipe(<ore:oreLead>, <thermalfoundation:material:67>);
gs.addRecipe(<ore:orePlatinum>, <thermalfoundation:material:70>);
gs.addRecipe(<ore:oreNickel>, <thermalfoundation:material:69>);
  #Tier 4
gs.addRecipe(<ore:oreDreadedAbyssalnite>, <acintegration:dust:2>);
