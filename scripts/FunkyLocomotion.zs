
print("-------------- FunkyLocomotion Start --------------");
	#Frame Pusher
recipes.remove(<funkylocomotion:pusher>);
recipes.addShaped(<funkylocomotion:pusher>, [
	[<ore:ingotLiquifiedCoralium>, <ore:ingotLiquifiedCoralium>, <ore:ingotLiquifiedCoralium>],
	[electricPistonBasic, <minecraft:piston>, electricPistonBasic],
	[<ore:ingotLiquifiedCoralium>, motorBasic, <ore:ingotLiquifiedCoralium>]]);

	#Frame Projector
recipes.remove(<funkylocomotion:frame_projector>);
recipes.addShaped(<funkylocomotion:frame_projector>, [
	[plateGlowstone, plateGlowstone, plateGlowstone],
	[electricPistonBasic, <minecraft:piston>, electricPistonBasic],
	[<ore:ingotLiquifiedCoralium>, motorBasic, <ore:ingotLiquifiedCoralium>]]);

	#Frame Booster
recipes.remove(<funkylocomotion:booster>);
recipes.addShaped(<funkylocomotion:booster>, [
	[plateElectrum, plateElectrum, plateElectrum],
	[<ore:ingotLiquifiedCoralium>, <funkylocomotion:pusher>, <ore:ingotLiquifiedCoralium>],
	[<ore:ingotLiquifiedCoralium>, fluxductBasic, <ore:ingotLiquifiedCoralium>]]);
	#Frame Puller
recipes.remove(<funkylocomotion:pusher:1>);
recipes.addShaped(<funkylocomotion:pusher:1>, [
	[plateRedstone, plateRedstone, plateRedstone],
	[electricPistonBasic, <minecraft:sticky_piston>, electricPistonBasic],
	[<ore:ingotLiquifiedCoralium>, motorBasic, <ore:ingotLiquifiedCoralium>]]);
	#Frame Slider
recipes.remove(<funkylocomotion:slider>);
recipes.addShaped(<funkylocomotion:slider>, [
	[plateLapis, plateLapis, plateLapis],
	[electricPistonBasic, <minecraft:piston>, electricPistonBasic],
	[<ore:ingotLiquifiedCoralium>, motorBasic, <ore:ingotLiquifiedCoralium>]]);
	#Frame Teleporter
recipes.remove(<funkylocomotion:teleporter>);
<funkylocomotion:teleporter>.addTooltip("Recipes WIP, Tier 4 implementation");
	
	#Frames
recipes.remove(<funkylocomotion:frame_0>);
recipes.addShaped(<funkylocomotion:frame_0>*8, [
	[stickRefinedIron, stickRefinedIron, stickRefinedIron],
	[stickRefinedIron, null, stickRefinedIron],
	[stickRefinedIron, stickRefinedIron, stickRefinedIron]]);
	#iWrench
recipes.remove(<funkylocomotion:wrench:1>);
recipes.addShapeless(<funkylocomotion:wrench:1>, [<funkylocomotion:wrench>, <minecraft:ender_eye>]);

print("--------------- FunkyLocomotion End ---------------");
