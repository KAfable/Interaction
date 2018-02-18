#loader contenttweaker
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.MaterialPart;
import mods.contenttweaker.MaterialSystem;
import mods.contenttweaker.Material;
import mods.contenttweaker.Item;
import mods.contenttweaker.Block;
import mods.contenttweaker.PartBuilder;
import mods.contenttweaker.Color;
import mods.contenttweaker.Fluid;

  #Creating Rings
mods.contenttweaker.MaterialSystem.getPartBuilder()
  .setName("Ring").setPartType(mods.contenttweaker.MaterialSystem.getPartType("item"))
  .setOreDictName("ring")
  .build();
  #Creating Rotors
mods.contenttweaker.MaterialSystem.getPartBuilder()
  .setName("Rotor")
  .setPartType(mods.contenttweaker.MaterialSystem.getPartType("item"))
  .setOreDictName("rotor")
  .build();
  #Creating Foil
mods.contenttweaker.MaterialSystem.getPartBuilder()
  .setName("Foil")
  .setPartType(mods.contenttweaker.MaterialSystem.getPartType("item"))
  .setOreDictName("foil")
  .build();
  #Crushed Ore - changing ore dic from crushedOre to crushed
mods.contenttweaker.MaterialSystem.getPartBuilder()
  .setName("Crushed_Ore")
  .setPartType(mods.contenttweaker.MaterialSystem.getPartType("item"))
  .setOreDictName("crushed")
  .build();
  #Custom Fluids
mods.contenttweaker.MaterialSystem.getPartBuilder()
  .setName("custom_fluid")
  .setPartType(mods.contenttweaker.MaterialSystem.getPartType("fluid"))
  .build();


  #All Parts
var parts = [
  "Ingot", 
  "Beam", 
  "Gear", 
  "Bolt", 
  "Dust", 
  "Nugget", 
  "Rod", 
  "Plate", 
  "Dense_Plate", 
  "Crystal", 
  "Crushed_Ore", 
  "Casing", 
  "Ring", 
  "Rotor", 
  "Foil"] as string[];

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

print("---------------------Initializing material/part generation------------------------");
  #Abyssalnite
var abyssalnite = MaterialSystem.getMaterialBuilder().setName("Abyssalnite").setColor(6815935).build();
var abyssalniteParts = [
  "Beam", 
  "Gear", 
  "Bolt", 
  "Rod", 
  "Plate", 
  "Dense_Plate", 
  "Crystal", 
  "Crushed_Ore", 
  "Casing", 
  "Ring", 
  "Rotor", 
  "Foil"
  ] as string[];
abyssalnite.registerParts(abyssalniteParts);
print("------------------Abyssalnite parts initialized----------------------");
  #Aluminum
var aluminum = MaterialSystem.getMaterialBuilder().setName("Aluminum").setColor(11975109).build();
var aluminumParts = [
  "Beam", 
  "Bolt", 
  "Rod", 
  "Dense_Plate", 
  "Crystal", 
  "Crushed_Ore", 
  "Casing", 
  "Ring", 
  "Rotor", 
  "Foil"
  ] as string[];
aluminum.registerParts(aluminumParts);
print("------------------Aluminum parts initialized----------------------");
  #Bronze
var bronze = MaterialSystem.getMaterialBuilder().setName("Bronze").setColor(13396492).build();
var bronzeParts = [
  "Beam", 
  "Bolt", 
  "Rod", 
  "Dense_Plate", 
  "Ring", 
  "Rotor", 
  "Foil"
  ] as string[];
bronze.registerParts(bronzeParts);
print("------------------Bronze parts initialized----------------------");
  #Copper
var copper = MaterialSystem.getMaterialBuilder().setName("Copper").setColor(13396492).build();
var copperParts = [
  "Beam", 
  "Bolt", 
  "Rod", 
  "Dense_Plate", 
  "Ring", 
  "Rotor", 
  "Foil"
  ] as string[];
copper.registerParts(copperParts);
print("------------------Copper parts initialized----------------------");
  #Diamond
var diamond = MaterialSystem.getMaterialBuilder().setName("Diamond").setColor(8454143).build();
var diamondParts = [
  "Gear", 
  "Rod", 
  "Plate", 
  "Dense_Plate", 
  "Casing", 
  "Ring", 
  "Foil"] as string[];
diamond.registerParts(diamondParts);
print("------------------Diamond parts initialized----------------------");
  #Fiery
var fiery = MaterialSystem.getMaterialBuilder().setName("Fiery Infused").setColor(16743700).setHasEffect(true).build();
fiery.registerParts(parts);
print("------------------Fiery parts initialized----------------------");
  #Glass-Slime Composite
var slimeg = MaterialSystem.getMaterialBuilder().setName("Glass-Slime Composite").setColor(3342210).build();
slimeg.registerPart("molten");
print("------------------Glass-Slime parts initialized----------------------");
  #Glowstone
var glowstone = MaterialSystem.getMaterialBuilder().setName("Glowstone").setColor(15398481).build();
var glowstoneParts = [
  "Beam", 
  "Gear", 
  "Rod", 
  "Plate", 
  "Dense_Plate", 
  "Crystal", 
  "Casing", 
  "Ring", 
  "Rotor", 
  "Foil"] as string[];
glowstone.registerParts(glowstoneParts);
print("------------------Glowstone parts initialized----------------------");
  #Gold
var gold = MaterialSystem.getMaterialBuilder().setName("Gold").setColor(16777099).build();
var goldParts = [
  "Beam", 
  "Bolt", 
  "Rod", 
  "Dense_Plate", 
  "Ring", 
  "Rotor", 
  "Foil"] as string[];
gold.registerParts(goldParts);
print("------------------Gold parts initialized----------------------");
  #Iron
var iron = MaterialSystem.getMaterialBuilder().setName("Iron").setColor(15461355).build();
var ironParts = [
  "Beam", 
  "Bolt",  
  "Dense_Plate", 
  "Ring", 
  "Rotor", 
  "Foil"
  ] as string[];
iron.registerParts(ironParts);
print("------------------Iron parts initialized----------------------");
  #Iridium
var iridium = MaterialSystem.getMaterialBuilder().setName("Irdium").setColor(173183193).build();
var iridiumParts = [
  "Beam", 
  "Bolt", 
  "Rod", 
  "Dense_Plate", 
  "Crystal", 
  "Crushed_Ore", 
  "Casing", 
  "Ring", 
  "Rotor", 
  "Foil"] as string[];
iridium.registerParts(iridiumParts);
print("------------------Iridiumn parts initialized----------------------");
  #Redstone
var redstone = MaterialSystem.getMaterialBuilder().setName("Redstone").setColor(15209752).build();
var redstoneParts = [
  "Gear", 
  "Bolt", 
  "Rod", 
  "Plate", 
  "Dense_Plate", 
  "Crystal", 
  "Crushed_Ore", 
  "Casing", 
  ] as string[];
redstone.registerParts(redstoneParts);
print("------------------Redstone parts initialized----------------------");
  #Refined Iron
var refinedIron = MaterialSystem.getMaterialBuilder().setName("Refined Iron").setColor(14279653).build();
var refinedIronParts = [
  "Beam", 
  "Gear", 
  "Bolt", 
  "Nugget", 
  "Rod", 
  "Plate", 
  "Dense_Plate", 
  "Crystal", 
  "Casing", 
  "Ring", 
  "Rotor", 
  "Foil"] as string[];
refinedIron.registerParts(refinedIronParts);
print("------------------Refined Iron parts initialized----------------------");
  #Reinforced Stone
var reinforcedStone = MaterialSystem.getMaterialBuilder().setName("Reinforced Stone").setColor(11908533).build();
var reinforcedStoneParts = [
  "Ingot", 
  "Beam", 
  "Gear", 
  "Bolt", 
  "Dust", 
  "Nugget", 
  "Rod", 
  "Plate", 
  "Dense_Plate", 
  "Crystal", 
  "Crushed_Ore", 
  "Casing", 
  "Ring", 
  "Rotor", 
  "Foil"] as string[];
reinforcedStone.registerPart("molten");
reinforcedStone.registerParts(reinforcedStoneParts);
var rstoneBlock = reinforcedStone.registerPart("block").getData();
rstoneBlock.addDataValue("hardness", "5");
rstoneBlock.addDataValue("resistance", "30");
rstoneBlock.addDataValue("harvestTool", "pickaxe");
rstoneBlock.addDataValue("harvestLevel", "1");
print("------------------Reinforced Stone parts initialized----------------------");
  #Rubber
var rubber = MaterialSystem.getMaterialBuilder().setName("Rubber").setColor(1776664).build();
var rubberParts = [
  "Dust", 
  "Rod", 
  "Plate", 
  "Dense_Plate",
  "Casing", 
  "Ring"
  ] as string[];
rubber.registerParts(rubberParts);
rubber.registerPart("molten");
print("------------------Rubber parts initialized----------------------");
  #Tin
var tin = MaterialSystem.getMaterialBuilder().setName("Tin").setColor(13816530).build();
var tinParts = [
  "Beam", 
  "Ring",
  "Bolt", 
  "Dense_Plate",
  "Foil", 
  "Rod"] as string[];
tin.registerParts(tinParts);
print("------------------Tin parts initialized----------------------");
  #Steel
var steel = MaterialSystem.getMaterialBuilder().setName("Steel").setColor(4290164406).build();
var steelParts = [
  "Beam", 
  "Bolt",  
  "Dense_Plate", 
  "Ring", 
  "Rotor", 
  "Foil"] as string[];
steel.registerParts(steelParts);
print("------------------Steel parts initialized----------------------");

  #Hydrogen Sulfide
var hydrogenSulfide = mods.contenttweaker.VanillaFactory.createFluid("hydrogen_sulfide", Color.fromHex("FFFFE6"));
hydrogenSulfide.density = 200;
hydrogenSulfide.gaseous = true;
hydrogenSulfide.viscosity = 300;
hydrogenSulfide.temperature = 1000;
hydrogenSulfide.register();

  #Sulfuric Diesel
var sulfuricDiesel = mods.contenttweaker.VanillaFactory.createFluid("sulfuric_diesel", Color.fromHex("D1C28F"));
sulfuricDiesel.density = 10000;
sulfuricDiesel.viscosity = 10000;
sulfuricDiesel.temperature = 671;
sulfuricDiesel.register();
  #Sulfuric Gasoline
var sulfuricGasoline = mods.contenttweaker.VanillaFactory.createFluid("sulfuric_gasoline", Color.fromHex("FFE03D"));
sulfuricGasoline.density = 10000;
sulfuricGasoline.viscosity = 10000;
sulfuricGasoline.temperature = 671;
sulfuricGasoline.register();
  #Sulfuric Kerosene
var sulfuricKerosene = mods.contenttweaker.VanillaFactory.createFluid("sulfuric_kerosene", Color.fromHex("9CFFA6"));
sulfuricKerosene.density = 10000;
sulfuricKerosene.viscosity = 10000;
sulfuricKerosene.temperature = 671;
sulfuricKerosene.register();
  #Sulfuric LPG
var sulfuricLPG = mods.contenttweaker.VanillaFactory.createFluid("sulfuric_lpg", Color.fromHex("FFFF00"));
sulfuricLPG.density = 10000;
sulfuricLPG.viscosity = 10000;
sulfuricLPG.temperature = 671;
sulfuricLPG.register();
  #Sulfuric Naphtha
var sulfuricNaphtha = mods.contenttweaker.VanillaFactory.createFluid("sulfuric_naphtha", Color.fromHex("FFCC1A"));
sulfuricNaphtha.density = 10000;
sulfuricNaphtha.viscosity = 10000;
sulfuricNaphtha.temperature = 671;
sulfuricNaphtha.register();
print("------------------Custom Fluids initialized----------------------");

  #Wood
var wood = MaterialSystem.getMaterialBuilder().setName("Wood").setColor(10050591).build();
var woodParts = [
  "Beam", 
  "Gear", 
  "Bolt", 
  "Dust", 
  "Plate", 
  "Dense_Plate", 
  "Crushed_Ore", 
  "Casing", 
  "Ring", 
  "Rotor", 
  "Foil"
  ] as string[];
wood.registerParts(woodParts);
print("------------------Wood parts initialized----------------------");
  #Zinc
var zinc = MaterialSystem.getMaterialBuilder().setName("Zinc").setColor(16777099).build();

print("---------------------Initialized material/part generation------------------------");

// materialPart.getData().addValue("viscosity", "<number>"); To edit flow rates of materials
// Lava has a density of 3000, and a viscosity of 6000

  #Basic, Intermediate, Advanced, Elite, Insane, and Ultimate microcrafting parts
var techTiers = ["basic","intermediate","advanced","elite","insane","ultimate"] as string[];
var techParts = ["piston","conveyor","motor","sensor","emitter","robotarm","valve"] as string[];

for techTiers in techTiers {
	for techParts in techParts {
		var item = VanillaFactory.createItem(techTiers + techParts);			
		item.register();
	}
}

  #Ludicrous and Divine Microcrafting parts
var lastTiers = ["ludicrous", "divine"] as string[];
for lastTiers in lastTiers {
  for techParts in techParts {
    var item = VanillaFactory.createItem(lastTiers + techParts);
    item.setMaxStackSize(1);
    item.glowing = true;
    item.register();
  }
}

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