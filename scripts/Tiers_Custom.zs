#loader contenttweaker

import mods.contenttweaker.MaterialSystem;
import mods.contenttweaker.Material;

var part_names = ["dust", "gear", "plate", "nugget", "ingot", "beam", "bolt"] as string[];

//////////////////
//Tier 1 Materials
//////////////////
var putty = MaterialSystem.getMaterialBuilder().setName("Putty").setColor(3342387).build();
var wood = MaterialSystem.getMaterialBuilder().setName("Wood").setColor(10053171).build();
var brick = MaterialSystem.getMaterialBuilder().setName("Brick").setColor(12016192).build();
var rstone = MaterialSystem.getMaterialBuilder().setName("Reinforced Stone").setColor(11908533).build();
var slime = MaterialSystem.getMaterialBuilder().setName("Slime").setColor(52224).build();
var slimeg = MaterialSystem.getMaterialBuilder().setName("Glass-Slime Composite").setColor(3342210).build();
var tier1_list = [putty, wood, brick, rstone] as Material[];

rstone.registerPart("molten");
slime.registerPart("molten");
slimeg.registerPart("molten");
putty.registerPart("molten");

//////////////////
//Tier 2 Materials
//////////////////
var fiery = MaterialSystem.getMaterialBuilder().setName("Fiery Infused").setColor(6032139).setHasEffect(true).build();
var tier2_list = [fiery] as Material[];

///////////////////////////
// Material registration
///////////////////////////

//Tier 1
for i, mat in tier1_list {
    mat.registerParts(part_names);

    var blockData = mat.registerPart("block").getData();
    blockData.addDataValue("hardness", "5");
    blockData.addDataValue("resistance", "30");
    blockData.addDataValue("harvestTool", "pickaxe");
    blockData.addDataValue("harvestLevel", "1");
}

//Tier 2
fiery.registerParts(part_names);
