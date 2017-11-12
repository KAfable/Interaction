#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.CreativeTab;

var tiers = ["basic","intermediate","advanced","elite","insane","ultimate","ludicrous","divine"] as string[];
var tings = ["piston","conveyor","motor","sensor","emitter","robotarm","valve"] as string[];

for tier in tiers {
	for ting in tings {
		val item = VanillaFactory.createItem(tier + ting);			item.register();
	}
}