print("--------------Abyssalcraft Start--------------------");

<abyssalcraft:necronomicon>.withTag({PotEnergy: 5000.0 as float}).displayName = "Necronominominominominomicon";

	#Necronomicon
recipes.remove(<abyssalcraft:necronomicon>);
mods.skyresources.infusion.addRecipe(<abyssalcraft:necronomicon>,
	<minecraft:book>, <tp:flesh_block>, 30);

	#Iron Plate
recipes.remove(<abyssalcraft:ironp>);
// Probably will add a metal forming machine recipe for this when I decide it fits into progression
	
	#Abyssal Wasteland Gateway Key
recipes.addShaped(<abyssalcraft:gatewaykey>, [
	[null, <iceandfire:fire_dragon_heart>, ],
	[null, <ore:rodBlaze>, <iceandfire:fire_dragon_heart>],
	[]]);

print("--------------Abyssalcraft End--------------------");