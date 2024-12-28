/obj/machinery/vending/weaponry
	name = "\improper ArmoryVend"
	desc = "A weaponry and ammunition vendor."
	icon_state = "weaponry"
	icon_deny = "weaponry-deny"
	panel_type = "weaponry-panel"
	light_mask = "weaponry-light-mask"
	onstation = 0
	products = list(
		/obj/item/storage/toolbox/guncase/station/p90/full_rubber = 6,
		/obj/item/ammo_box/magazine/p90/rubber = 12,
		/obj/item/ammo_box/packet/c57x28mm/rubber = 4,
		/obj/item/gun/energy/taser = 12,
	)
	contraband = list(
		/obj/item/storage/toolbox/guncase/station/p90/full_lethal = 2,
	)
	refill_canister = /obj/item/vending_refill/weaponry
	default_price = PAYCHECK_CREW
	extra_price = PAYCHECK_COMMAND * 1.5
	payment_department = ACCOUNT_SEC

/obj/item/vending_refill/weaponry
	machine_name = "ArmoryVend"
	icon_state = "refill_sec"

/obj/machinery/vending/weaponry/lethal
	name = "\improper ArmoryVend Plus"
	desc = "A lethal weaponry and ammunition vendor."
	icon_state = "weaponry_lethal"
	icon_deny = "weaponry_lethal-deny"
	panel_type = "weaponry_lethal-panel"
	light_mask = "weaponry_lethal-light-mask"
	products = list(
		/obj/item/storage/toolbox/guncase/station/p90/full_lethal = 6,
		/obj/item/ammo_box/magazine/p90 = 12,
		/obj/item/storage/toolbox/guncase/station/pistol/glock = 6,
		/obj/item/ammo_box/magazine/m9mm = 12,
		/obj/item/ammo_box/packet/c57x28mm = 4,
		/obj/item/ammo_box/packet/c9mm = 4,
	)
	premium = list(
		/obj/item/ammo_box/magazine/p90/ap = 12,
		/obj/item/ammo_box/magazine/p90/hp = 12,
		/obj/item/ammo_box/magazine/m9mm/ap = 12,
		/obj/item/ammo_box/magazine/m9mm/hp = 12,
		/obj/item/ammo_box/packet/c57x28mm/ap = 6,
		/obj/item/ammo_box/packet/c57x28mm/hp = 6,
		/obj/item/ammo_box/packet/c9mm/ap = 4,
		/obj/item/ammo_box/packet/c9mm/hp = 4,
		/obj/item/gun/energy/e_gun/advtaser = 2,
	)
	refill_canister = /obj/item/vending_refill/weaponry
	default_price = PAYCHECK_CREW
	extra_price = PAYCHECK_COMMAND * 1.5
	payment_department = ACCOUNT_SEC
