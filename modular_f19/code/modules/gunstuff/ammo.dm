/obj/item/ammo_casing
	icon_state = "pistol-brass"
	icon = 'modular_f19/icons/obj/ammo.dmi'

// Ammo Boxes
/obj/item/ammo_box/packet
	name = "ammo packet"
	desc = "A packet usually containing ammo."
	icon_state = "box"
	icon = 'modular_f19/icons/obj/ammo.dmi'
	multiple_sprites = AMMO_BOX_FULL_EMPTY

/obj/item/ammo_box/packet/c57x28mm
	name = "box of 5.7x28mm"
	desc = "A box containing 210 rounds of 5.7x28mm NATO."
	icon_state = "box_57x28mm"
	caliber = CALIBER_57X28MM
	ammo_type = /obj/item/ammo_casing/c57x28mm
	max_ammo = 210

/obj/item/ammo_box/packet/c57x28mm/rubber
	name = "box of Rubber 5.7x28mm"
	desc = "A box containing 210 rounds of rubber 5.7x28mm NATO."
	icon_state = "box_57x28mmr"
	ammo_type = /obj/item/ammo_casing/c57x28mm/rubber

/obj/item/ammo_box/packet/c57x28mm/ap
	name = "box of Armor-Piercing 5.7x28mm"
	desc = "A box containing 210 rounds of armor-piercing 5.7x28mm NATO."
	icon_state = "box_57x28mmap"
	ammo_type = /obj/item/ammo_casing/c57x28mm/ap

/obj/item/ammo_box/packet/c57x28mm/hp
	name = "box of Hollow-Point 5.7x28mm"
	desc = "A box containing 210 rounds of hollow-point 5.7x28mm NATO."
	icon_state = "box_57x28mmhp"
	ammo_type = /obj/item/ammo_casing/c57x28mm/hp

/obj/item/ammo_box/packet/c45
	name = "packet of .45 ACP"
	desc = "A packet containing 50 rounds of .45 ACP."
	icon_state = "box_45acp"
	caliber = CALIBER_45
	ammo_type = /obj/item/ammo_casing/c45
	max_ammo = 50

/obj/item/ammo_box/packet/c460
	name = "packet of .460 Magnum"
	desc = "A packet containing 49 rounds of .460 Magnum."
	icon_state = "box_460mag"
	caliber = CALIBER_460MAGNUM
	ammo_type = /obj/item/ammo_casing/c460magnum
	max_ammo = 49

/obj/item/ammo_box/packet/c9mm
	name = "packet of 9x19mm"
	desc = "A packet containing 70 rounds of 9x19mm Parabellum."
	icon_state = "box_9mm"
	caliber = CALIBER_9MM
	ammo_type = /obj/item/ammo_casing/c9mm
	max_ammo = 70

/obj/item/ammo_box/packet/c9mm/ap
	name = "packet of Armor-Piercing 9x19mm"
	desc = "A packet containing 70 rounds of armor-piercing 9x19mm Parabellum."
	icon_state = "box_9mmap"
	ammo_type = /obj/item/ammo_casing/c9mm/ap

/obj/item/ammo_box/packet/c9mm/hp
	name = "packet of Hollow-Point 9x19mm"
	desc = "A packet containing 70 rounds of hollow-point 9x19mm Parabellum."
	icon_state = "box_9mmhp"
	ammo_type = /obj/item/ammo_casing/c9mm/hp

/obj/item/ammo_box/packet/shotgun
	name = "box of Slug 12g"
	desc = "A packet containing 50 shells of 12 Gauge Slugs."
	icon_state = "12gbox-slug"
	multiple_sprites = AMMO_BOX_ONE_SPRITE
	caliber = CALIBER_SHOTGUN
	ammo_type = /obj/item/ammo_casing/shotgun
	max_ammo = 50

/obj/item/ammo_box/packet/shotgun/buckshot
	name = "box of Buckshot 12g"
	desc = "A packet containing 50 shells of 12 Gauge Buckshot."
	icon_state = "12gbox-buckshot"
	ammo_type = /obj/item/ammo_casing/shotgun/buckshot

/obj/item/ammo_box/packet/shotgun/rubbershot
	name = "box of Rubbershot 12g"
	desc = "A packet containing 50 shells of 12 Gauge Rubbershot."
	icon_state = "12gbox-rubbershot"
	ammo_type = /obj/item/ammo_casing/shotgun/rubbershot

/obj/item/ammo_box/packet/shotgun/beanbag
	name = "box of Beanbag 12g"
	desc = "A packet containing 50 shells of 12 Gauge Beanbag."
	icon_state = "12gbox-beanbag"
	ammo_type = /obj/item/ammo_casing/shotgun/beanbag

// P90 Stuff
/obj/item/ammo_casing/c57x28mm
	name = "5.7x28mm bullet casing"
	desc = "A 5.7x28mm bullet casing."
	caliber = CALIBER_57X28MM
	projectile_type = /obj/projectile/bullet/c57x28mm

/obj/item/ammo_casing/c57x28mm/rubber
	name = "5.7x28mm rubber bullet casing"
	desc = "A 5.7x28mm rubber bullet casing."
	icon_state = "pistol-brass-rubber"
	projectile_type = /obj/projectile/bullet/c57x28mm/rubber

/obj/item/ammo_casing/c57x28mm/ap
	name = "5.7x28mm armor-piercing bullet casing"
	desc = "A 5.7x28mm armor-piercing bullet casing."
	icon_state = "pistol-brass-ap"
	projectile_type = /obj/projectile/bullet/c57x28mm/ap

/obj/item/ammo_casing/c57x28mm/hp
	name = "5.7x28mm hollow-point bullet casing"
	desc = "A 5.7x28mm hollow-point bullet casing."
	icon_state = "pistol-brass-hollow"
	projectile_type = /obj/projectile/bullet/c57x28mm/hp

// P90 SMG
/obj/projectile/bullet/c57x28mm
	damage = 25

/datum/embedding/bullet/c57x28mm
	embed_chance = 15
	fall_chance = 3
	jostle_chance = 4
	ignore_throwspeed_threshold = TRUE
	pain_stam_pct = 0.4
	pain_mult = 5
	jostle_pain_mult = 6
	rip_time = 1 SECONDS

/obj/projectile/bullet/c57x28mm/rubber
	damage = 5
	stamina = 15
	ricochets_max = 6
	ricochet_incidence_leeway = 0
	ricochet_chance = 180
	ricochet_decay_damage = 0.8
	shrapnel_type = null
	sharpness = NONE
	embed_type = null

/obj/projectile/bullet/c57x28mm/hp
	damage = 35
	weak_against_armour = TRUE

/obj/projectile/bullet/c57x28mm/ap
	damage = 22
	armour_penetration = 40
	embed_type = null
	shrapnel_type = null

/obj/item/ammo_box/magazine/p90
	name = "P90 magazine (5.7x28mm)"
	desc = "A P90 PDW magazine, filled with standard lethal bullets."
	icon_state = "p90-50"
	base_icon_state = "p90"
	icon = 'modular_f19/icons/obj/ammo.dmi'
	ammo_type = /obj/item/ammo_casing/c57x28mm
	caliber = CALIBER_57X28MM
	max_ammo = 50

/obj/item/ammo_box/magazine/p90/update_icon_state()
	. = ..()
	icon_state = "[base_icon_state]-[round(ammo_count(), 25)]"

/obj/item/ammo_box/magazine/p90/rubber
	name = "P90 magazine (5.7x28mm Rubber)"
	desc= "A P90 PDW magazine, filled with soft round blue-tipped bullets that impact targets, leaving them usually winded. Ineffective in most circumstances other than riot control."
	icon_state = "p90r-50"
	base_icon_state = "p90r"
	ammo_type = /obj/item/ammo_casing/c57x28mm/rubber

/obj/item/ammo_box/magazine/p90/ap
	name = "P90 magazine (5.7x28mm Armor-Piercing)"
	desc= "A P90 PDW magazine, filled with Tungsten and tungsten alloyed white-tipped bullets that penetrate armor, administering bulletproof armor useless."
	icon_state = "p90ap-50"
	base_icon_state = "p90ap"
	ammo_type = /obj/item/ammo_casing/c57x28mm/ap

/obj/item/ammo_box/magazine/p90/hp
	name = "P90 magazine (5.7x28mm Hollow-Point)"
	desc= "A P90 PDW magazine, filled with flat red-tipped bullets that expand on impact, being more deadly to softer targets."
	icon_state = "p90hp-50"
	base_icon_state = "p90hp"
	ammo_type = /obj/item/ammo_casing/c57x28mm/hp

// 9mm Stuff
/obj/item/ammo_casing/c9mm
	name = "9mm bullet casing"
	desc = "A 9mm bullet casing."
	caliber = CALIBER_9MM
	projectile_type = /obj/projectile/bullet/c9mm
	newtonian_force = 0.75

/obj/item/ammo_casing/c9mm/ap
	name = "9x19mm armor-piercing bullet casing"
	desc = "A 9x19mm bullet with a white tip."
	projectile_type =/obj/projectile/bullet/c9mm/ap

/obj/item/ammo_casing/c9mm/hp
	name = "9x19mm hollow-point bullet casing"
	desc = "A 9x19mm bullet weith a red steel-tip."
	projectile_type = /obj/projectile/bullet/c9mm/hp

/obj/item/ammo_casing/c9mm/fire
	name = "9x19mm incendiary bullet casing"
	desc = "A 9mm incendiary bullet casing."
	projectile_type = /obj/projectile/bullet/incendiary/c9mm

/obj/item/ammo_casing/c9mm/rubber
	name = "9x19mm rubber bullet casing"
	desc = "A 9x19mm bullet with blue rubbery tip."
	projectile_type = /obj/projectile/bullet/c9mm/rubber
	harmful = FALSE

/obj/projectile/bullet/c9mm/rubber
	name = "9mm rubber bullet"
	icon_state = "pellet"
	damage = 18
	stamina = 32
	ricochets_max = 6
	ricochet_incidence_leeway = 0
	ricochet_chance = 180
	ricochet_decay_damage = 0.8
	shrapnel_type = null
	sharpness = NONE
	embed_type = null

/obj/item/ammo_box/magazine/m9mm
	name = "pistol magazine (9x19mm)"
	desc = "A pistol magazine, filled with standard lethal bullets."
	icon_state = "9x19p"
	base_icon_state = "9x19p"
	icon = 'modular_f19/icons/obj/ammo.dmi'
	ammo_type = /obj/item/ammo_casing/c9mm
	caliber = CALIBER_9MM
	max_ammo = 12
	multiple_sprites = AMMO_BOX_PER_BULLET
	multiple_sprite_use_base = TRUE

/obj/item/ammo_box/magazine/m9mm/rubber
	name = "pistol magazine (9x19mm Rubber)"
	icon_state = "9x19pr"
	base_icon_state = "9x19pr"
	desc= "A pistol magazine, filled with blue rubbery-tipped bullets that hit hard, and wind/weaken targets."
	ammo_type = /obj/item/ammo_casing/c9mm/rubber

/obj/item/ammo_box/magazine/m9mm/fire
	name = "pistol magazine (9x19mm Incendiary)"
	icon_state = "9x19p"
	base_icon_state = "9x19p"
	desc = "A pistol magazine, filled with orange-tipped bullets that are meant to ignite the target."
	ammo_type = /obj/item/ammo_casing/c9mm/fire

/obj/item/ammo_box/magazine/m9mm/hp
	name = "pistol magazine (9x19mm Hollow-Point)"
	icon_state = "9x19php"
	base_icon_state = "9x19php"
	desc= "A pistol magazine, filled with flat red-tipped bullets that expand on impact, being more deadly to softer targets."
	ammo_type = /obj/item/ammo_casing/c9mm/hp

/obj/item/ammo_box/magazine/m9mm/ap
	name = "pistol magazine (9x19mm Armor-Piercing)"
	icon_state = "9x19pap"
	base_icon_state = "9x19pap"
	desc= "A pistol magazine, filled with Tungsten and tungsten alloyed white-tipped bullets that penetrate armor, administering bulletproof armor useless."
	ammo_type = /obj/item/ammo_casing/c9mm/ap

// 460 Stuff
/obj/item/ammo_casing/c460magnum
	name = ".460 Magnum bullet casing"
	desc = "A .460 Magnum bullet casing."
	icon = 'icons/obj/weapons/guns/ammo_40x32.dmi'
	icon_state = "magnum-brass"
	caliber = CALIBER_460MAGNUM
	projectile_type = /obj/projectile/bullet/c460magnum

/obj/item/ammo_casing/c460magnum/ap
	name = ".460 Magnum Armor Piercing bullet casing"
	desc = "A .460 Magnum armor-piercing bullet casing."
	icon_state = "magnum-brass-ap"
	caliber = CALIBER_460MAGNUM
	projectile_type = /obj/projectile/bullet/c460magnum/ap

/obj/projectile/bullet/c460magnum
	name = ".460 Magnum"
	damage = 35
	stamina = 15 //knock the winds outta ya

	wound_bonus = -35
	bare_wound_bonus = -60
	stamina_falloff_tile = -0.3

/obj/projectile/bullet/c460magnum/ap
	name = ".460 Magnum Armour Piercing"
	damage = 25

	wound_bonus = -50
	bare_wound_bonus = -10
	armour_penetration = 40
	damage_falloff_tile = 0
	stamina_falloff_tile = 0

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
