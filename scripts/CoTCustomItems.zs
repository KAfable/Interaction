#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.MaterialPart;
import mods.contenttweaker.MaterialSystem;
import mods.contenttweaker.Material;
import mods.contenttweaker.Item;
import mods.contenttweaker.Block;

var partTypeFoil = MaterialSystem.getPartBuilder().setName("Foil").setPartType(MaterialSystem.getPartType("item"));
var part_names = ["Ingot", "Beam", "Gear", "Bolt", "Dust", "Nugget", "Rod", "Plate", "Dense_Plate", "Crystal", "Crushed_Ore", "Casing"] as string[];

/* 
  This is sample code atm for testing part types
  var craftingTool = VanillaFactory.createItem("craftingtool");
  craftingTool.maxStackSize = 1;
  craftingTool.setMaxDamage(10);
  craftingTool.register();
  val useCraftingTool = <contenttweaker:craftingtool>.anyDamage().transformDamage();
*/

/*
  # How to Create a Block and adjust Data
  var blockData = mat.registerPart("block").getData();
  blockData.addDataValue("hardness", "5");
  blockData.addDataValue("resistance", "30");
  blockData.addDataValue("harvestTool", "pickaxe");
  blockData.addDataValue("harvestLevel", "1");
*/

  #Abyssalnite
var abyssalnite = MaterialSystem.getMaterialBuilder().setName("Abyssalnite").setColor(6815935).build();
abyssalnite.registerPart("Gear");
abyssalnite.registerPart("Plate");
abyssalnite.registerPart("Beam");
abyssalnite.registerPart("Bolt");
abyssalnite.registerPart("Rod");
abyssalnite.registerPart("Dense_Plate");

  #Aluminum
var aluminum = MaterialSystem.getMaterialBuilder().setName("Aluminum").setColor(11975109).build();
aluminum.registerPart("Dense_Plate");
aluminum.registerPart("Beam");
aluminum.registerPart("Bolt");
aluminum.registerPart("Rod");
aluminum.registerPart("Crystal");

  #Copper
var copper = MaterialSystem.getMaterialBuilder().setName("Copper").setColor(13396492).build();
copper.registerPart("Dense_Plate");
copper.registerPart("Beam");
copper.registerPart("Bolt");
copper.registerPart("Rod");
copper.registerPart("Crystal");

  #Fiery
var fiery = MaterialSystem.getMaterialBuilder().setName("Fiery Infused").setColor(16743700).setHasEffect(true).build();
fiery.registerParts(part_names);

  #Glass-Slime Composite
var slimeg = MaterialSystem.getMaterialBuilder().setName("Glass-Slime Composite").setColor(3342210).build();
slimeg.registerPart("molten");

  #Gold
var gold = MaterialSystem.getMaterialBuilder().setName("Gold").setColor(16777099).build();
gold.registerPart("Beam");
gold.registerPart("Bolt");
gold.registerPart("Rod");

  #Redstone
var redstone = MaterialSystem.getMaterialBuilder().setName("Redstone").setColor(15209752).build();
redstone.registerPart("Rod");
redstone.registerPart("Gear");

  #Reinforced Stone
var rstone = MaterialSystem.getMaterialBuilder().setName("Reinforced Stone").setColor(11908533).build();
rstone.registerPart("molten");
rstone.registerParts(part_names);
var rstoneBlock = rstone.registerPart("block").getData();
rstoneBlock.addDataValue("hardness", "5");
rstoneBlock.addDataValue("resistance", "30");
rstoneBlock.addDataValue("harvestTool", "pickaxe");
rstoneBlock.addDataValue("harvestLevel", "1");

  #Rubber
var rubber = MaterialSystem.getMaterialBuilder().setName("Rubber").setColor(1776664).build();
rubber.registerPart("molten");

  #Tin
var tin = MaterialSystem.getMaterialBuilder().setName("Tin").setColor(13816530).build();
tin.registerPart("Dense_Plate");
tin.registerPart("Beam");
tin.registerPart("Bolt");
tin.registerPart("Rod");

  #Wood
var wood = MaterialSystem.getMaterialBuilder().setName("Wood").setColor(10050591).build();
wood.registerPart("Dense_Plate");
wood.registerPart("Plate");
wood.registerPart("Beam");
wood.registerPart("Bolt");
wood.registerPart("Rod");
wood.registerPart("Crystal");
wood.registerPart("Gear");
wood.registerPart("Casing");

  #Zinc
var zinc = MaterialSystem.getMaterialBuilder().setName("Zinc").setColor(16777099).build();

// materialPart.getData().addValue("viscosity", "<number>"); To edit flow rates of materials
// Lava has a density of 3000, and a viscosity of 6000

//Microcrafting
var tiers = ["basic","intermediate","advanced","elite","insane","ultimate","ludicrous","divine"] as string[];
var tings = ["piston","conveyor","motor","sensor","emitter","robotarm","valve"] as string[];

for tier in tiers {
	for ting in tings {
		val item = VanillaFactory.createItem(tier + ting);			
		item.register();
	}
}

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

  #Wells
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