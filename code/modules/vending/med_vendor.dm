/obj/machinery/vending/medvend
	name = "\improper MedicalVend"
	desc = "A medical and amnestic vendor."
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
