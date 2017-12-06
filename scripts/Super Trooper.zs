import crafttweaker.data.IData;
import crafttweaker.item.IItemStack;
import mods.jei.JEI;




global attributeMap as IData = {
	maxHealth : {
		name : "generic.maxHealth",
		defaultBase : 20.0,
		minimum : 0.0,
		maximum : 1024.0
	},
	followRange : {
		name : "generic.followRange",
		defaultBase : 32.0,
		minimum : 0.0,
		maximum : 2048.0
	},
	knockbackResistance : {
		name : "generic.knockbackResistance",
		defaultBase : 0.0,
		minimum : 0.0,
		maximum : 1.0
	},
	movementSpeed : {
		name : "generic.movementSpeed",
		defaultBase : 0.7,
		minimum : 0.0,
		maximum : 1024.0
	},
	attackDamage : {
		name : "generic.attackDamage",
		defaultBase : 2.0,
		minimum : 0.0,
		maximum : 2048.0
	},
	armor : {
		name : "generic.armor",
		defaultBase : 20.0,
		minimum : 0.0,
		maximum : 30.0
	},
	armorToughness : {
		name : "generic.armorToughness",
		defaultBase : 20.0,
		minimum : 0.0,
		maximum : 20.0
	},
	attackSpeed : {
		name : "generic.attackSpeed",
		defaultBase : 4.0,
		minimum : 0.0,
		maximum : 1024.0
	},
	luck : {
		name : "generic.luck",
		defaultBase : 0.0,
		minimum : -1024.0,
		maximum : 1024.0
	}
};


/*
	Most simple version, doesn't require a slot or multiply boolean, will work on all slots and add, not multiply the values.
	Params:
	item: the item to give the attribute to
	attName: the name of the attribuge (e.g. "maxHealth")
	value: the value of the attribute (e.g. 30.0)
	UIDLeast and UIDMost: the Attribute's UID split in Least Significant bits and mostSignificant bits (no combination may be twice!)
*/

function addAttribute1(item as IItemStack, AttName as string, value as int, UIDLeast as int, UIDMost as int) as IItemStack {
	return addAttribute2(item,AttName, value, false, UIDLeast, UIDMost);
}




/*
	Second most simple version, doesn't require a slot, will work on all.
	Params:
	item: the item to give the attribute to
	attName: the name of the attribuge (e.g. "maxHealth")
	value: the value of the attribute (e.g. 30.0)
	multiply: true if the modifier should multiply the base value instead of adding a fixed value
	UIDLeast and UIDMost: the Attribute's UID split in Least Significant bits and mostSignificant bits (no combination may be twice!)
*/
function addAttribute2(item as IItemStack, AttName as string, value as int, multiply as bool, UIDLeast as int, UIDMost as int) as IItemStack {
	return addAttribute3(item,AttName,value,multiply,UIDLeast,UIDMost, -1);
}


/*
	Complete version to add the attribute to an item.
	Params:
	item: the item to give the attribute to
	attName: the name of the attribuge (e.g. "maxHealth")
	value: the value of the attribute (e.g. 30.0)
	multiply: true if the modifier should multiply the base value instead of adding a fixed value
	UIDLeast and UIDMost: the Attribute's UID split in Least Significant bits and mostSignificant bits (no combination may be twice!)
	slot: the slot the item needs to be in for the effect to work: mainhand = 0, offhand = 1, armor slots 2-5
*/
function addAttribute3(item as IItemStack, AttName as string, value as int, multiply as bool, UIDLeast as int, UIDMost as int, slot as int) as IItemStack{
	var tag as IData = item.tag;
	val slots as string[] = ["mainhand","offhand","head","chest","legs","feet"];
	if (!(tag in "AttributeModifiers")) {
		tag += {AttributeModifiers: []};
	}

	if(attributeMap in AttName) {
		val attribute as IData = attributeMap.memberGet(AttName);
		if((attribute.minimum.asFloat() <= value) & (attribute.maximum.asFloat() >= value)) {
			var attributeList as IData = tag.AttributeModifiers;
			var toAdd as IData = {
				AttributeName: attribute.name, 
				Name: attribute.name,
				Amount: value,
				Operation: multiply ? 1 : 0,
				UUIDLeast: UIDLeast,
				UUIDMost: UIDMost};
				if(slot > -1 & slot <slots.length) {toAdd += {Slot: slots[slot]};}


			attributeList += [toAdd] as IData;
			tag += {AttributeModifiers : attributeList};
			return item.withTag(tag);
		} else {
			logger.logError("Invalid value for " ~ AttName ~ ": " ~ value);
		}

	} else {
		logger.logError("Could not find attribute name: " ~ AttName);
		return item;
	}

	return item;
}


var item as IItemStack = addAttribute1(<minecraft:iron_sword>, "attackDamage", 100, 1, 1);
item = addAttribute2(item, "maxHealth", 100, true, 1, 2);

JEI.addItem(item.withDisplayName("SUPER TROOPER"));