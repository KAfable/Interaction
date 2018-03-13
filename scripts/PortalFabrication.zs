import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;


/////////////////
//Tier 1/////////
/////////////////

  #Base Alchemical Beacon
<xtones:zome:15>.displayName = "Base Alchemical Beacon";
mods.skyresources.fusion.addRecipe(<xtones:zome:15>, [<minecraft:obsidian>], 0.75);

  #Base Alchemical Beacon
mods.botania.PureDaisy.addRecipe(<xtones:zome:15>, <xtones:zome:12>, 10);

  #Alchemical Baseplate Tier 1
<xtones:zeta:12>.displayName = "Alchemical Baseplate (Tier 1)";
mods.skyresources.freezer.addRecipe(<xtones:zeta:12>, <minecraft:bone_block>, 1000);

  #Reinforced Lava Concentrator
<chisel:netherbrick:8>.displayName = "Reinforced Lava Concentrator";
mods.tconstruct.Casting.addBasinRecipe(<chisel:netherbrick:8>, <contenttweaker:sub_block_holder_0:2>, <liquid:lava>, 1000, true);

//addDescription(IItemStack item, string[] desc);
//each string inside the array will have it's own line(s)
mods.jei.JEI.addDescription(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:portal_fabricator"}),
  [ "Portal Fabricator",
    "1 Machine Controller",
    "2 Item Input",
    "1 Item Output",
    "1 Fluid Input Hatch",
    "24 Alchemical Baseplate (Type 13)",
    "10 Livingrock Bricks",
    "12 Reinforced Lava Concentrator",
    "4 Base Alchemical Beacon (Type 13)",
    "4 Buckets of Lava",
    "1 Enchantment Table"]);

///////////////////////////
//Tier 2
///////////////////////////
  #Dimension Stabilizer
<botania:custombrick:2>.displayName = "Lapis Coated Dimension Stabilizer";

  #Alchemical Baseplate Tier 2
<xtones:ztyl:13>.displayName = "Alchemical Baseplate (Tier 2)";

  #Infusion Cyrstals
<iceandfire:dragon_ice_spikes>.displayName = "Infusion Crystals";

  #Lava Crystal Alchemical Beacon
<armorplus:block_lava_crystal>.displayName = "Lava Crystal Infused Alchemical Beacon";
