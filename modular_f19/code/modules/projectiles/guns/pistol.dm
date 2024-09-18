/obj/item/gun/ballistic/automatic/pistol/mk9
	name = "MK9 service pistol"
	desc = "Standard issue 9mm pistol of the SCP Foundation security department. A preferred emergency weapon, and reliable. Chambered in 9x19mm."
	icon_state = "MK9"
	w_class = WEIGHT_CLASS_NORMAL
	fire_delay = 2
	accepted_magazine_type = /obj/item/ammo_box/magazine/m9mm
	can_suppress = FALSE

/obj/item/gun/ballistic/automatic/pistol/mk9/no_mag
	spawnwithmagazine = FALSE

/obj/item/gun/ballistic/automatic/pistol/colt
	name = "Colt Mustang"
	desc = "In 1983, Colt introduced the Colt Mark IV/ Series 80 Government Model. This pocket pistol was similar in appearance, but not design, to the Colt M1911. Chambered in .45 ACP."
	icon_state = "colt"
	w_class = WEIGHT_CLASS_NORMAL
	accepted_magazine_type = /obj/item/ammo_box/magazine/m45
	can_suppress = FALSE
	fire_sound = 'sound/weapons/gun/pistol/shot_alt.ogg'
	rack_sound = 'sound/weapons/gun/pistol/rack.ogg'
	lock_back_sound = 'sound/weapons/gun/pistol/slide_lock.ogg'
	bolt_drop_sound = 'sound/weapons/gun/pistol/slide_drop.ogg'

/obj/item/gun/ballistic/automatic/pistol/m1911/gold
	name = "gold trimmed M1911"
	desc = "A classic .45 handgun with a small magazine capacity. Now trimmed in a luxury gold."
	icon_state = "m1911-spec"

/obj/item/gun/ballistic/automatic/pistol/glock
	name = "Glock 19"
	desc = "The Glock is a brand of polymer-framed, short recoil-operated, striker-fired, locked-breech semi-automatic pistols designed and produced by Austrian manufacturer Glock Ges.m.b.H. The firearm entered Austrian military and police service by 1982 after becoming the top performer in reliability and safety tests. Chambered in 9x19mm."
	icon_state = "glock"
	w_class = WEIGHT_CLASS_NORMAL
	accepted_magazine_type = /obj/item/ammo_box/magazine/m9mm
	can_suppress = FALSE
	fire_delay = 1

/obj/item/gun/ballistic/automatic/pistol/glock/spec
	name = "Glock 30"
	desc = "The Glock is a brand of polymer-framed, short recoil-operated, striker-fired, locked-breech semi-automatic pistols designed and produced by Austrian manufacturer Glock Ges.m.b.H. The firearm entered Austrian military and police service by 1982 after becoming the top performer in reliability and safety tests. This one is made to fire faster, and control better. Chambered in 9x19mm."
	icon_state = "glock-spec"
	fire_delay = 0
