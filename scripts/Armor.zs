import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.tconstruct.Casting as tc;

recipes.remove(<armorplus:obsidian_helmet>);
recipes.remove(<armorplus:obsidian_chestplate>);
recipes.remove(<armorplus:obsidian_leggings>);
recipes.remove(<armorplus:obsidian_boots>);

recipes.remove(<silentgems:craftingmaterial:24>);
recipes.addShaped(<silentgems:craftingmaterial:24>*4, [
  [<ore:string>, <minecraft:flint>, <ore:string>],
  [<minecraft:flint>, <ore:wool>, <minecraft:flint>],
  [<ore:string>, <minecraft:flint>, <ore:string>]]);

recipes.remove(<minecraft:iron_helmet>);
tc.addTableRecipe(<minecraft:iron_helmet>, <silentgems:armorframe>, <liquid:iron>, 720, true);
recipes.remove(<minecraft:iron_chestplate>);
tc.addTableRecipe(<minecraft:iron_chestplate>, <silentgems:armorframe:1>, <liquid:iron>, 1152, true);
recipes.remove(<minecraft:iron_leggings>);
tc.addTableRecipe(<minecraft:iron_leggings>, <silentgems:armorframe:2>, <liquid:iron>, 1008, true);
recipes.remove(<minecraft:iron_boots>);
tc.addTableRecipe(<minecraft:iron_boots>, <silentgems:armorframe:3>, <liquid:iron>, 576, true);

recipes.remove(<thermalfoundation:armor.helmet_bronze>);
tc.addTableRecipe(<thermalfoundation:armor.helmet_bronze>, <silentgems:armorframe>, <liquid:bronze>, 720, true);
recipes.remove(<thermalfoundation:armor.plate_bronze>);
tc.addTableRecipe(<thermalfoundation:armor.plate_bronze>, <silentgems:armorframe:1>, <liquid:bronze>, 1152, true);
recipes.remove(<thermalfoundation:armor.legs_bronze>);
tc.addTableRecipe(<thermalfoundation:armor.legs_bronze>, <silentgems:armorframe:2>, <liquid:bronze>, 1008, true);
recipes.remove(<thermalfoundation:armor.boots_bronze>);
tc.addTableRecipe(<thermalfoundation:armor.boots_bronze>, <silentgems:armorframe:3>, <liquid:bronze>, 576, true);

recipes.remove(<botania:manasteelhelm>);
tc.addTableRecipe(<botania:manasteelhelm>, <silentgems:armorframe:4>, <liquid:manasteel>, 720, true);
recipes.remove(<botania:manasteelchest>);
tc.addTableRecipe(<botania:manasteelchest>, <silentgems:armorframe:5>, <liquid:manasteel>, 1152, true);
recipes.remove(<botania:manasteellegs>);
tc.addTableRecipe(<botania:manasteellegs>, <silentgems:armorframe:6>, <liquid:manasteel>, 1008, true);
recipes.remove(<botania:manasteelboots>);
tc.addTableRecipe(<botania:manasteelboots>, <silentgems:armorframe:7>, <liquid:manasteel>, 576, true);

recipes.remove(<abyssalcraft:ahelmet>);
tc.addTableRecipe(<abyssalcraft:ahelmet>, <silentgems:armorframe:4>, <liquid:moltenabyssalnite>, 720, true);
recipes.remove(<abyssalcraft:aplate>);
tc.addTableRecipe(<abyssalcraft:aplate>, <silentgems:armorframe:5>, <liquid:moltenabyssalnite>, 1152, true);
recipes.remove(<abyssalcraft:alegs>);
tc.addTableRecipe(<abyssalcraft:alegs>, <silentgems:armorframe:6>, <liquid:moltenabyssalnite>, 1008, true);
recipes.remove(<abyssalcraft:aboots>);
tc.addTableRecipe(<abyssalcraft:aboots>, <silentgems:armorframe:7>, <liquid:moltenabyssalnite>, 576, true);

recipes.remove(<abyssalcraft:corhelmet>);
tc.addTableRecipe(<abyssalcraft:corhelmet>, <silentgems:armorframe:4>, <liquid:moltenrefinedcoralium>, 720, true);
recipes.remove(<abyssalcraft:corplate>);
tc.addTableRecipe(<abyssalcraft:corplate>, <silentgems:armorframe:5>, <liquid:moltenrefinedcoralium>, 1152, true);
recipes.remove(<abyssalcraft:corlegs>);
tc.addTableRecipe(<abyssalcraft:corlegs>, <silentgems:armorframe:6>, <liquid:moltenrefinedcoralium>, 1008, true);
recipes.remove(<abyssalcraft:corboots>);
tc.addTableRecipe(<abyssalcraft:corboots>, <silentgems:armorframe:7>, <liquid:moltenrefinedcoralium>, 576, true);

# Deep Resonance Radiation Suit - iron equivalent protection, no smeltery fluid
recipes.removeShaped(<deepresonance:helmet>);
recipes.addShaped(<deepresonance:helmet>, [[<deepresonance:resonating_plate>, <deepresonance:resonating_plate>, <deepresonance:resonating_plate>], [<deepresonance:resonating_plate>, <silentgems:armorframe:2>, <deepresonance:resonating_plate>], [null, null, null]]);
recipes.removeShaped(<deepresonance:chest>);
recipes.addShaped(<deepresonance:chest>, [[<deepresonance:resonating_plate>, <silentgems:armorframe:2>, <deepresonance:resonating_plate>], [<deepresonance:resonating_plate>, <deepresonance:resonating_plate>, <deepresonance:resonating_plate>], [<deepresonance:resonating_plate>, <deepresonance:resonating_plate>, <deepresonance:resonating_plate>]]);
recipes.removeShaped(<deepresonance:leggings>);
recipes.addShaped(<deepresonance:leggings>, [[<deepresonance:resonating_plate>, <deepresonance:resonating_plate>, <deepresonance:resonating_plate>], [<deepresonance:resonating_plate>, <silentgems:armorframe:2>, <deepresonance:resonating_plate>], [<deepresonance:resonating_plate>, null, <deepresonance:resonating_plate>]]);
recipes.removeShaped(<deepresonance:boots>);
recipes.addShaped(<deepresonance:boots>, [[null, null, null], [<deepresonance:resonating_plate>, <silentgems:armorframe:2>, <deepresonance:resonating_plate>], [<deepresonance:resonating_plate>, null, <deepresonance:resonating_plate>]]);


recipes.remove(<silentgems:craftingmaterial:25>);
recipes.remove(<silentgems:craftingmaterial:26>);

recipes.remove(<immersiveengineering:material:1>);
recipes.addShaped(<immersiveengineering:material:1>, [
  [<minecraft:iron_ingot>],
  [<minecraft:iron_ingot>]]);

recipes.addShaped(<minecraft:armor_stand>, [
  [<minecraft:stick>, <silentgems:armorframe:1>, <minecraft:stick>],
  [null, <silentgems:armorframe:2>, null],
  [<minecraft:stone_slab>, <minecraft:stone_slab>, <minecraft:stone_slab>]]);