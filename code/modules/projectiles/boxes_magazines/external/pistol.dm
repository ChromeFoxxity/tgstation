/obj/item/ammo_box/magazine/m10mm
	name = "pistol magazine (10mm)"
	desc = "A gun magazine."
	icon_state = "9x19p"
	base_icon_state = "9x19p"
	ammo_type = /obj/item/ammo_casing/c10mm
	caliber = CALIBER_10MM
	max_ammo = 8
	multiple_sprites = AMMO_BOX_FULL_EMPTY
	multiple_sprite_use_base = TRUE

/obj/item/ammo_box/magazine/m10mm/fire
	name = "pistol magazine (10mm incendiary)"
	icon_state = "9x19pI"
	base_icon_state = "9x19pI"
	desc = "A 10mm pistol magazine. Loaded with rounds which ignite the target."
	ammo_type = /obj/item/ammo_casing/c10mm/fire

/obj/item/ammo_box/magazine/m10mm/hp
	name = "pistol magazine (10mm HP)"
	icon_state = "9x19pH"
	base_icon_state = "9x19pH"
	desc= "A 10mm pistol magazine. Loaded with hollow-point rounds, extremely effective against unarmored targets, but nearly useless against protective clothing."
	ammo_type = /obj/item/ammo_casing/c10mm/hp

/obj/item/ammo_box/magazine/m10mm/ap
	name = "pistol magazine (10mm AP)"
	icon_state = "9x19pA"
	base_icon_state = "9x19pA"
	desc= "A 10mm pistol magazine. Loaded with rounds which penetrate armour, but are less effective against normal targets."
	ammo_type = /obj/item/ammo_casing/c10mm/ap

/obj/item/ammo_box/magazine/m45
	name = "handgun magazine (.45)"
	icon_state = "45-8"
	base_icon_state = "45"
	ammo_type = /obj/item/ammo_casing/c45
	caliber = CALIBER_45
	max_ammo = 8
	multiple_sprites = AMMO_BOX_PER_BULLET
	multiple_sprite_use_base = TRUE

/obj/item/ammo_box/magazine/m9mm
	name = "pistol magazine (9x19mm)"
	desc = "A pistol magazine, filled with standard lethal bullets."
	icon_state = "9x19p"
	base_icon_state = "9x19p"
	ammo_type = /obj/item/ammo_casing/c9mm
	caliber = CALIBER_9MM
	max_ammo = 8
	multiple_sprites = AMMO_BOX_PER_BULLET
	multiple_sprite_use_base = TRUE

/obj/item/ammo_box/magazine/m9mm/fire
	name = "pistol magazine (9x19mm Incendiary)"
	icon_state = "9x19pI"
	base_icon_state = "9x19pI"
	desc = "A pistol magazine, filled with orange-tipped bullets that are meant to ignite the target."
	ammo_type = /obj/item/ammo_casing/c9mm/fire

/obj/item/ammo_box/magazine/m9mm/hp
	name = "pistol magazine (9x19mm Hollow-Point)"
	icon_state = "9x19pH"
	base_icon_state = "9x19pH"
	desc= "A pistol magazine, filled with flat red-tipped bullets that expand on impact, being more deadly to softer targets."
	ammo_type = /obj/item/ammo_casing/c9mm/hp

/obj/item/ammo_box/magazine/m9mm/ap
	name = "pistol magazine (9x19mm Armor-Piercing)"
	icon_state = "9x19pA"
	base_icon_state = "9x19pA"
	desc= "A pistol magazine, filled with Tungsten and tungsten alloyed white-tipped bullets that penetrate armor, administering bulletproof armor useless."
	ammo_type = /obj/item/ammo_casing/c9mm/ap

/obj/item/ammo_box/magazine/m9mm_aps
	name = "stechkin pistol magazine (9x19mm)"
	icon_state = "9mmaps-15"
	base_icon_state = "9mmaps"
	ammo_type = /obj/item/ammo_casing/c9mm
	caliber = CALIBER_9MM
	max_ammo = 15

/obj/item/ammo_box/magazine/m9mm_aps/update_icon_state()
	. = ..()
	icon_state = "[base_icon_state]-[round(ammo_count(), 5)]"

/obj/item/ammo_box/magazine/m9mm_aps/fire
	name = "stechkin pistol magazine (9mm incendiary)"
	ammo_type = /obj/item/ammo_casing/c9mm/fire
	max_ammo = 15

/obj/item/ammo_box/magazine/m9mm_aps/hp
	name = "stechkin pistol magazine (9mm HP)"
	ammo_type = /obj/item/ammo_casing/c9mm/hp
	max_ammo = 15

/obj/item/ammo_box/magazine/m9mm_aps/ap
	name = "stechkin pistol magazine (9mm AP)"
	ammo_type = /obj/item/ammo_casing/c9mm/ap
	max_ammo = 15

/obj/item/ammo_box/magazine/m50
	name = "handgun magazine (.50ae)"
	icon_state = "50ae"
	ammo_type = /obj/item/ammo_casing/a50ae
	caliber = CALIBER_50AE
	max_ammo = 7
	multiple_sprites = AMMO_BOX_PER_BULLET

/obj/item/ammo_box/magazine/r10mm
	name = "regal condor magazine (10mm Reaper)"
	icon_state = "r10mm-8"
	base_icon_state = "r10mm"
	ammo_type = /obj/item/ammo_casing/c10mm/reaper
	caliber = CALIBER_10MM
	max_ammo = 8
	multiple_sprites = AMMO_BOX_PER_BULLET
	multiple_sprite_use_base = TRUE

/obj/item/ammo_box/magazine/m45a5
	name = "\improper M45A5 magazine (.460)"
	desc = "A magazine for the M45A5 chambered in .460 Magnum, holds ten rounds. Warning, contains expanding head that deform on contact, may cause excessive bleeding."
	icon = 'icons/obj/weapons/guns/ammo_40x32.dmi'
	icon_state = "m45a5"
	multiple_sprites = AMMO_BOX_FULL_EMPTY
	w_class = WEIGHT_CLASS_NORMAL
	ammo_type = /obj/item/ammo_casing/c460magnum
	caliber = CALIBER_460MAGNUM
	max_ammo = 10

/obj/item/ammo_box/magazine/m45a5/ap
	name = "\improper M45A5 magazine (.460 Armor Piercing)"
	desc = "A magazine for the M45A5 chambered in .460 Magnum, holds ten rounds. Warning, contains lead core intended to penetrate body armour."

/obj/item/ammo_box/magazine/m45a5/starts_empty
	start_empty = TRUE
