/obj/structure/rack
	icon = 'icons/obj/scp_structures.dmi'

/obj/structure/rack/shelf
	name = "shelf"
	desc = "A shelf, for storing things on. Conveinent!"
	icon_state = "shelf"
	icon = 'icons/obj/scp_structures.dmi'

/obj/item/gun
	var/on_rack = FALSE

/obj/item/gun/proc/place_on_rack()
	on_rack = TRUE
	var/matrix/M = matrix()
	M.Turn(-90)
	transform = M

/obj/item/gun/proc/remove_from_rack()
	if(on_rack)
		var/matrix/M = matrix()
		transform = M
		on_rack = FALSE

/obj/item/gun/pickup(mob/user)
	. = ..()
	remove_from_rack()

/obj/structure/rack/gunrack
	name = "gun rack"
	desc = "A gun rack for storing guns."
	icon_state = "gunrack"
	icon = 'icons/obj/scp_structures.dmi'

/obj/structure/rack/gunrack/Initialize(mapload)
	. = ..()
	if(mapload)
		for(var/obj/item/I in loc.contents)
			if(istype(I, /obj/item/gun))
				var/obj/item/gun/to_place = I
				to_place.place_on_rack()

/obj/structure/rack/gunrack/attackby(obj/item/W, mob/living/user, params)
	var/list/modifiers = params2list(params)
	if (W.tool_behaviour == TOOL_WRENCH && LAZYACCESS(modifiers, RIGHT_CLICK))
		W.play_tool_sound(src)
		deconstruct(TRUE)
		return
	if(user.combat_mode)
		return ..()
	if(user.transferItemToLoc(W, drop_location()))
		if(istype(W, /obj/item/gun))
			var/obj/item/gun/our_gun = W
			our_gun.place_on_rack()
			our_gun.pixel_x = rand(-10, 10)
		return TRUE

/obj/item/rack_parts/shelf
	name = "shelf parts"
	desc = "Parts of a shelf."
	icon_state = "rack_parts"
	inhand_icon_state = "rack_parts"
	obj_flags = CONDUCTS_ELECTRICITY
	custom_materials = list(/datum/material/iron=SHEET_MATERIAL_AMOUNT)

/obj/item/rack_parts/shelf/Initialize(mapload)
	. = ..()
	register_context()

/obj/item/rack_parts/shelf/add_context(atom/source, list/context, obj/item/held_item, mob/living/user)
	if(isnull(held_item))
		return NONE

	if(held_item == src)
		context[SCREENTIP_CONTEXT_LMB] = "Construct Shelf"
		return CONTEXTUAL_SCREENTIP_SET

	if(held_item.tool_behaviour == TOOL_WRENCH)
		context[SCREENTIP_CONTEXT_LMB] = "Deconstruct"
		return CONTEXTUAL_SCREENTIP_SET

	return NONE

/obj/item/rack_parts/shelf/wrench_act(mob/living/user, obj/item/tool)
	tool.play_tool_sound(src)
	deconstruct(TRUE)
	return ITEM_INTERACT_SUCCESS

/obj/item/rack_parts/shelf/atom_deconstruct(disassembled = TRUE)
	new /obj/item/stack/sheet/iron(drop_location())

/obj/item/rack_parts/shelf/attack_self(mob/user)
	if(building)
		return
	building = TRUE
	to_chat(user, span_notice("You start constructing a shelf..."))
	if(do_after(user, 5 SECONDS, target = user, progress=TRUE))
		if(!user.temporarilyRemoveItemFromInventory(src))
			return
		var/obj/structure/rack/shelf/R = new /obj/structure/rack/shelf(get_turf(src))
		user.visible_message(span_notice("[user] assembles \a [R]."), span_notice("You assemble \a [R]."))
		R.add_fingerprint(user)
		qdel(src)
	building = FALSE

/obj/item/rack_parts/gunrack
	name = "gun rack parts"
	desc = "Parts of a gun rack."
	icon_state = "rack_parts"
	inhand_icon_state = "rack_parts"
	obj_flags = CONDUCTS_ELECTRICITY
	custom_materials = list(/datum/material/iron=SHEET_MATERIAL_AMOUNT)

/obj/item/rack_parts/gunrack/Initialize(mapload)
	. = ..()
	register_context()

/obj/item/rack_parts/gunrack/add_context(atom/source, list/context, obj/item/held_item, mob/living/user)
	if(isnull(held_item))
		return NONE

	if(held_item == src)
		context[SCREENTIP_CONTEXT_LMB] = "Construct Gun Rack"
		return CONTEXTUAL_SCREENTIP_SET

	if(held_item.tool_behaviour == TOOL_WRENCH)
		context[SCREENTIP_CONTEXT_LMB] = "Deconstruct"
		return CONTEXTUAL_SCREENTIP_SET

	return NONE

/obj/item/rack_parts/gunrack/wrench_act(mob/living/user, obj/item/tool)
	tool.play_tool_sound(src)
	deconstruct(TRUE)
	return ITEM_INTERACT_SUCCESS

/obj/item/rack_parts/gunrack/atom_deconstruct(disassembled = TRUE)
	new /obj/item/stack/sheet/iron(drop_location())

/obj/item/rack_parts/gunrack/attack_self(mob/user)
	if(building)
		return
	building = TRUE
	to_chat(user, span_notice("You start constructing a gun rack..."))
	if(do_after(user, 5 SECONDS, target = user, progress=TRUE))
		if(!user.temporarilyRemoveItemFromInventory(src))
			return
		var/obj/structure/rack/gunrack/R = new /obj/structure/rack/gunrack(get_turf(src))
		user.visible_message(span_notice("[user] assembles \a [R]."), span_notice("You assemble \a [R]."))
		R.add_fingerprint(user)
		qdel(src)
	building = FALSE
