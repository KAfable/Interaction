#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.MaterialPart;
import mods.contenttweaker.MaterialSystem;
import mods.contenttweaker.Material;
import mods.contenttweaker.Item;
import mods.contenttweaker.Block;

var partTypeFoil = MaterialSystem.getPartBuilder().setName("Foil").setPartType(MaterialSystem.getPartType("item"));
var part_names = ["Ingot", "Beam", "Gear", "Bolt", "Dust", "Nugget", "Rod", "Plate", "Dense_Plate", "Crystal", "Crushed_Ore", "Casing"] as string[];

/* This is sample code atm for testing part types
#loadercontenttweaker
import mods.contenttweaker.VanillaFactory;
var craftingTool = VanillaFactory.createItem("craftingtool");
craftingTool.maxStackSize = 1;
craftingTool.setMaxDamage(10);
craftingTool.register();

val useCraftingTool = <contenttweaker:craftingtool>.anyDamage().transformDamage();
*/

//////////////////
//Tier 1 Materials
//////////////////

var wood = MaterialSystem.getMaterialBuilder().setName("Wood").setColor(10053171).build();
var rstone = MaterialSystem.getMaterialBuilder().setName("Reinforced Stone").setColor(11908533).build();
var slimeg = MaterialSystem.getMaterialBuilder().setName("Glass-Slime Composite").setColor(3342210).build();
var tier1_list = [wood, rstone] as Material[];

rstone.registerPart("molten");
slimeg.registerPart("molten");

//Tier 1 Registration
for i, mat in tier1_list {
    mat.registerParts(part_names);

    var blockData = mat.registerPart("block").getData();
    blockData.addDataValue("hardness", "5");
    blockData.addDataValue("resistance", "30");
    blockData.addDataValue("harvestTool", "pickaxe");
    blockData.addDataValue("harvestLevel", "1");}

// materialPart.getData().addValue("viscosity", "<number>"); To edit flow rates of materials
// Lava has a density of 3000, and a viscosity of 6000

//////////////////
//Tier 2 Materials
//////////////////u
var fiery = MaterialSystem.getMaterialBuilder().setName("Fiery Infused").setColor(6032139).setHasEffect(true).build();
var abyssalnite = MaterialSystem.getMaterialBuilder().setName("Abyssalnite").setColor(3866733).build();
//var aluminum = MaterialSystem.getMaterialBuilder().setName("Aluminum").setColor(11975109).build();
//var copper = MaterialSystem.getMaterialBuilder().setName("Copper").setColor(12017419).build();
//var gold = MaterialSystem.getMaterialBuilder().setName("Gold").setColor(16777099).build();
//var zinc = MaterialSystem.getMaterialBuilder().setName("Gold").setColor(16777099).build();
//var tin = MaterialSystem.getMaterialBuilder().setName("Gold").setColor(16777099).build();
var tier2_list = [fiery, abyssalnite] as Material[];

//Tier 2 Registration
for i, mat in tier2_list {
  mat.registerParts(part_names);

  var blockData = mat.registerPart("block").getData();
  blockData.addDataValue("hardness", "5");
  blockData.addDataValue("resistance", "30");
  blockData.addDataValue("harvestTool", "pickaxe");
  blockData.addDataValue("harvestLevel", "1");}

////////////////
//Microcrafting
////////////////

/*#l contenttweaker
import mods.contenttweaker.VanillaFactory;
var craftingTool = VanillaFactory.createItem("craftingtool");
craftingTool.maxStackSize = 1;
craftingTool.setMaxDamage(10);
craftingTool.register();*/

var vulcanizedresin = VanillaFactory.createItem("vulcanizedresin");
vulcanizedresin.register();

// Celestial Motor
var astralMotor = VanillaFactory.createItem("astralmotor");
astralMotor.glowing = true;
astralMotor.register();

//Dusts
var impureDusts = [
  "impureDustBauxite",
  "impureDustIron",
  "impureDustCopper",
  "impureDustGold",
  "impureDustZinc",
  "impureDustTin",
  "impureDustAbyssalnite",
  "impureDustLead",
  "impureDustSilver"
  ] as string[];

for i in impureDusts {VanillaFactory.createItem(i).register();}

///////////
// Blocks
//////////

// Wells
var energized_well = VanillaFactory.createBlock("energized_well", <blockmaterial:rock>);
energized_well.setLightValue(15);
energized_well.register();

var destabilized_well = VanillaFactory.createBlock("destabilized_well", <blockmaterial:rock>);
destabilized_well.setLightValue(7);
destabilized_well.register();

//Sulfur Ore
val oreSul = MaterialSystem.getMaterialBuilder().setName("Sulfur").setColor(13421568).build().registerPart("ore").getData();
oreSul.addDataValue("drops", "thermalfoundation:material:771, thermalfoundation:material:771");
oreSul.addDataValue("variants", "minecraft:stone,minecraft:netherrack");
oreSul.addDataValue("hardness", "3,3");
oreSul.addDataValue("resistance", "15,15");
oreSul.addDataValue("harvestLevel", "1,1");
oreSul.addDataValue("harvestTool", "pickaxe,pickaxe");