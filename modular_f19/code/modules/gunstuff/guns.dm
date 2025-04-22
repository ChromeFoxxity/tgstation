///obj/item/gun/ballistic/automatic/pistol/mk9
	//name = "MK9 Foundation pistol"
	//desc = "Standard issue 9X19mm pistol of the SCP Foundation. Based on the HK VP9."
	//icon_state = "MK9"
	//w_class = WEIGHT_CLASS_NORMAL
	//spread = 10
	//fire_sound = 'sound/weapons/gun/pistol/shot_alt.ogg'
	//rack_sound = 'sound/weapons/gun/pistol/rack.ogg'
	//lock_back_sound = 'sound/weapons/gun/pistol/slide_lock.ogg'
	//bolt_drop_sound = 'sound/weapons/gun/pistol/slide_drop.ogg'
	//accepted_magazine_type = /obj/item/ammo_box/magazine/m9mm
	//spawn_magazine_type = /obj/item/ammo_box/magazine/m9mm
	//fire_delay = 3
	//can_suppress = FALSE
	//projectile_damage_multiplier = 0.75

/obj/item/gun/ballistic/automatic/pistol/glock
	name = "\improper Glock-17"
	desc = "The Glock is a brand of polymer-framed, short-recoil-operated, striker-fired, locked-breech semi-automatic pistols designed and produced by Austrian manufacturer Glock Ges.m.b.H. Chambered in 9x19mm."
	icon = 'icons/obj/weapons/guns/ballistic_40x32.dmi'
	icon_state = "black"
	w_class = WEIGHT_CLASS_NORMAL
	spread = 10
	fire_sound = 'modular_f19/sound/weapons/shot_alt.ogg'
	rack_sound = 'modular_f19/sound/weapons/rack.ogg'
	lock_back_sound = 'modular_f19/sound/weapons/slide_lock.ogg'
	bolt_drop_sound = 'modular_f19/sound/weapons/slide_drop.ogg'
	accepted_magazine_type = /obj/item/ammo_box/magazine/m9mm
	spawn_magazine_type = /obj/item/ammo_box/magazine/m9mm
	suppressor_x_offset = -2
	suppressor_y_offset = -1

/obj/item/gun/ballistic/automatic/pistol/glock/spec
	name = "\improper Glock-19"
	desc = "The Glock is a brand of polymer-framed, short-recoil-operated, striker-fired, locked-breech semi-automatic pistols designed and produced by Austrian manufacturer Glock Ges.m.b.H. At the 2010 SHOT Show, Glock presented the 'fourth generation', now dubbed 'Gen4' by Glock itself. Updates centered on ergonomics and the recoil spring assembly. Chambered in 9x19mm."
	icon_state = "silver"
	spread = 17
	fire_delay = 2
	burst_size = 3

/obj/item/gun/ballistic/automatic/pistol/m45a5 //From Skyrat, made by Yawet.
	name = "M45A5"
	desc = "A standard issue pistol manufactured for self-defense for SCP Foundation Staff such as Internal Security Department, and Central Office Representatives, chambered in .460 Magnum, now commonly found in the hands of high ranking SCP Higher-Echelon Staff."
	icon = 'icons/obj/weapons/guns/ballistic_40x32.dmi'
	icon_state = "m45a5"
	fire_sound = 'modular_f19/sound/weapons/pistol_heavy.ogg'
	force = 15
	fire_delay = 1 SECONDS
	recoil = 3
	can_suppress = FALSE
	accepted_magazine_type = /obj/item/ammo_box/magazine/m45a5
	spawn_magazine_type = /obj/item/ammo_box/magazine/m45a5

/obj/item/gun/ballistic/automatic/p90
	name = "FN P90"
	desc = "The FN P90 is a submachine gun chambered in 5.7x28mm, also classified as a personal defense weapon, designed and manufactured by FN Herstal in Belgium. Created in response to NATO requests for a replacement for 9x19mm Parabellum firearms, the P90 was designed as a compact but powerful firearm for vehicle crews, operators of crew-served weapons, support personnel, special forces, and counter-terrorist groups. This one has a scope, and is issued to specifically Site Security, and or MTF."
	icon_state = "p90"
	inhand_icon_state = "p90"
	icon = 'modular_f19/icons/obj/gun.dmi'
	fire_sound = 'modular_f19/sound/weapons/p90.ogg'
	w_class = WEIGHT_CLASS_BULKY
	burst_size = 1
	actions_types = list()
	spread = 2
	force = 10
	can_suppress = FALSE
	accepted_magazine_type = /obj/item/ammo_box/magazine/p90
	spawn_magazine_type = /obj/item/ammo_box/magazine/p90

/obj/item/gun/ballistic/automatic/p90/Initialize(mapload)
	. = ..()
	AddElement(/datum/element/update_icon_updates_onmob)
	AddComponent(/datum/component/automatic_fire, 0.3 SECONDS)

/obj/item/gun/ballistic/automatic/p90/rubber
	spawn_magazine_type = /obj/item/ammo_box/magazine/p90/rubber

/obj/item/gun/ballistic/shotgun/mossberg_590
	name = "Mossberg 590"
	desc = "The Mighty 590. With decades of military and law enforcement duty and countless performance and success stories under its belt, it's no surprise that the 590 chosen for duty around the globe is also the ideal choice for home defense needs. This model uses the FLEX tool-less locking system for the stock, and includes an accessory FLEX pistol grip to convert to a Cruiser-style platform without tools."
	icon_state = "mossberg_590"
	inhand_icon_state = "shotgun"
	icon = 'icons/obj/weapons/guns/ballistic_40x32.dmi'
	fire_delay = 8
	accepted_magazine_type = /obj/item/ammo_box/magazine/internal/shot/riot
	can_be_sawn_off = FALSE

/obj/item/gun/ballistic/shotgun/winchester_sxp
	name = "Winchester SXP"
	desc = "Trustworthy in the moments you need it most, the Winchester SXP Marine Defender Pump-Action Shotgun reliably shoots straight through it all from the foulest weather to the most stress-packed situations. Matte hard chrome plating on barrel, magazine tube, slide arms and other components protects against wear and the elements."
	icon_state = "winchester_sxp"
	inhand_icon_state = "shotgun"
	icon = 'icons/obj/weapons/guns/ballistic_40x32.dmi'
	projectile_damage_multiplier = 1.5
	accepted_magazine_type = /obj/item/ammo_box/magazine/internal/shot/com/compact
	can_be_sawn_off = FALSE

// Guncases

/obj/item/storage/toolbox/guncase/station
	desc = "A thick gun case with foam inserts laid out to fit a weapon, magazines, and gear securely."

	icon = 'modular_f19/icons/obj/gun.dmi'
	icon_state = "guncase"

	material_flags = NONE

/obj/item/storage/toolbox/guncase/station/Initialize(mapload)
	. = ..()
	atom_storage.max_total_storage = 14 // Technically means you could fit multiple large guns in here but its a case you cant backpack anyways so what it do
	atom_storage.max_slots = 6 // We store some extra items in these so lets make a little extra room

// Empty guncase

/obj/item/storage/toolbox/guncase/station/empty

/obj/item/storage/toolbox/guncase/station/empty/PopulateContents()
	return

// Small case for pistols and whatnot

/obj/item/storage/toolbox/guncase/station/pistol
	name = "small gun case"

	icon_state = "guncase_s"

	w_class = WEIGHT_CLASS_NORMAL

/obj/item/storage/toolbox/guncase/station/pistol/Initialize(mapload)
	. = ..()
	atom_storage.max_specific_storage = WEIGHT_CLASS_NORMAL

// Empty pistol case

/obj/item/storage/toolbox/guncase/station/pistol/empty

/obj/item/storage/toolbox/guncase/station/pistol/empty/PopulateContents()
	return

// Full Cases
/obj/item/storage/toolbox/guncase/station/p90
	name = "5.7x28mm FN P90 Security Standard-Issue SMG"

	weapon_to_spawn = /obj/item/gun/ballistic/automatic/p90

/obj/item/storage/toolbox/guncase/station/p90/PopulateContents()
	new weapon_to_spawn (src)

	generate_items_inside(list(
		/obj/item/ammo_box/magazine/p90 = 5,
	), src)

/obj/item/storage/toolbox/guncase/station/p90/rubber
	name = "5.7x28mm Rubber FN P90 Security Standard-Issue SMG"

	weapon_to_spawn = /obj/item/gun/ballistic/automatic/p90/rubber

/obj/item/storage/toolbox/guncase/station/p90/rubber/PopulateContents()
	new weapon_to_spawn (src)

	generate_items_inside(list(
		/obj/item/ammo_box/magazine/p90/rubber = 5,
	), src)

/obj/item/storage/toolbox/guncase/station/pistol/glock
	name = "9x19mm Glock-17 Security Standard-Issue Pistol"

	weapon_to_spawn = /obj/item/gun/ballistic/automatic/pistol/glock

/obj/item/storage/toolbox/guncase/station/pistol/glock/PopulateContents()
	new weapon_to_spawn (src)

	generate_items_inside(list(
		/obj/item/ammo_box/magazine/m9mm = 2,
		/obj/item/ammo_box/magazine/m9mm/rubber = 3,
	), src)
