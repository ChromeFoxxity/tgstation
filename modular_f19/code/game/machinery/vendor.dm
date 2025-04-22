/obj/machinery/vending/weaponry
	name = "\improper ArmoryVend"
	desc = "A weaponry and ammunition vendor."
	icon = 'icons/obj/machines/scp_vending.dmi'
	icon_state = "weaponry"
	icon_deny = "weaponry-deny"
	panel_type = "weaponry-panel"
	light_mask = "weaponry-light-mask"
	onstation = 0
	products = list(
		/obj/item/storage/toolbox/guncase/station/p90/rubber = 6,
		/obj/item/ammo_box/magazine/p90/rubber = 12,
		/obj/item/ammo_box/packet/c57x28mm/rubber = 4,
		/obj/item/gun/energy/taser = 12,
	)
	contraband = list(
		/obj/item/storage/toolbox/guncase/station/p90 = 2,
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
	icon = 'icons/obj/machines/scp_vending.dmi'
	icon_state = "weaponry_lethal"
	icon_deny = "weaponry_lethal-deny"
	panel_type = "weaponry_lethal-panel"
	light_mask = "weaponry_lethal-light-mask"
	products = list(
		/obj/item/storage/toolbox/guncase/station/p90 = 6,
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

/obj/machinery/vending/medvend
	name = "\improper MedicalVend"
	desc = "A medical and amnestic vendor."
	icon = 'icons/obj/machines/scp_vending.dmi'
	icon_state = "medic"
	icon_deny = "medic-deny"
	panel_type = "medic-panel"
	light_mask = "medic-light-mask"
	onstation = 0
	products = list(
		/obj/item/storage/medkit/tactical = 2,
		/obj/item/storage/medkit/advanced = 2,
		/obj/item/storage/medkit/regular = 8,
		/obj/item/storage/medkit/toxin = 4,
		/obj/item/storage/medkit/o2 = 4,
		/obj/item/storage/medkit/fire = 4,
		/obj/item/storage/medkit/brute = 4,
		/obj/item/storage/pill_bottle/epinephrine = 12,
		/obj/item/storage/pill_bottle/iron = 12,
		/obj/item/storage/pill_bottle/mannitol = 12,
		/obj/item/storage/pill_bottle/multiver = 12,
	)
	contraband = list(
		/obj/item/storage/pill_bottle/classz = 2,
		/obj/item/storage/pill_bottle/stimulant = 2,
	)
	premium = list(
		/obj/item/storage/pill_bottle/classa = 10,
		/obj/item/storage/pill_bottle/classb = 10,
		/obj/item/storage/pill_bottle/classc = 10,
		/obj/item/storage/pill_bottle/classd = 10,
		/obj/item/storage/pill_bottle/classe = 10,
		/obj/item/storage/pill_bottle/classg = 10,
		/obj/item/storage/pill_bottle/classh = 10,
	)
	refill_canister = /obj/item/vending_refill/medvend
	default_price = PAYCHECK_CREW
	extra_price = PAYCHECK_COMMAND * 1.5
	payment_department = ACCOUNT_SEC

/obj/item/vending_refill/medvend
	machine_name = "MedicalVend"
	icon_state = "refill_med"
