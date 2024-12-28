// .45 (M1911 & C20r)

/obj/projectile/bullet/c45
	name = ".45 bullet"
	damage = 30
	wound_bonus = -10
	wound_falloff_tile = -10

/obj/projectile/bullet/c45/rubber
	name = ".45 rubber bullet"
	damage = 5
	stamina = 15
	wound_bonus = 10
	sharpness = NONE
	embed_type = null

/obj/projectile/bullet/c45/ap
	name = ".45 armor-piercing bullet"
	armour_penetration = 50

/obj/projectile/bullet/c45/hp
	name = ".45 hollow point bullet"
	damage = 50
	weak_against_armour = TRUE

/obj/projectile/bullet/incendiary/c45
	name = ".45 incendiary bullet"
	damage = 15
	fire_stacks = 2

// 4.6x30mm (Autorifles)

/obj/projectile/bullet/c46x30mm
	name = "4.6x30mm bullet"
	damage = 20
	wound_bonus = -5
	bare_wound_bonus = 5
	embed_falloff_tile = -4

/obj/projectile/bullet/c46x30mm/ap
	name = "4.6x30mm armor-piercing bullet"
	damage = 15
	armour_penetration = 40
	embed_type = null

/obj/projectile/bullet/incendiary/c46x30mm
	name = "4.6x30mm incendiary bullet"
	damage = 10
	fire_stacks = 1

/obj/projectile/bullet/c57x28mm
	name = "5.7x28mm bullet"
	damage = 25
	wound_bonus = -10
	bare_wound_bonus = 10
	embed_falloff_tile = -3

/obj/projectile/bullet/c57x28mm/rubber
	name = "5.7x28mm rubber bullet"
	damage = 5
	stamina = 5
	wound_bonus = 15
	sharpness = NONE
	embed_type = null

/obj/projectile/bullet/c57x28mm/ap
	name = "5.7x28mm armor-piercing bullet"
	damage = 20
	armour_penetration = 40
	embed_type = null

/obj/projectile/bullet/c57x28mm/hp
	name = "5.7x28mm hollow-point bullet"
	damage = 30
	weak_against_armour = TRUE
