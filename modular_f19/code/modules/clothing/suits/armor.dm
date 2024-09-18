/obj/item/clothing/suit/armor/vest/scp
	icon = 'modular_f19/icons/obj/clothing/suits/armor.dmi'
	worn_icon = 'modular_f19/icons/mob/clothing/suits/armor.dmi'

// SECURITY DEPARTMENT VESTS

/obj/item/clothing/suit/armor/vest/scp/security
	name = "foundation security vest"
	desc = "A heavy armored vest. Worn by facility security, it has some durathread plating in it to make it durable against melee, sadly not much else though."
	icon_state = "guard_vest"
	body_parts_covered = CHEST|GROIN
	cold_protection = CHEST|GROIN
	armor_type = /datum/armor/scp/security_vest
	dog_fashion = null

/datum/armor/scp/security_vest
	melee = 60
	bullet = 35
	laser = 35
	energy = 25
	bomb = 30
	bio = 15
	fire = 15
	acid = 15
	wound = 10

/obj/item/clothing/suit/armor/vest/scp/security/ruined
	name = "ruined foundation security vest"
	desc = "A heavy, wrecked armored vest. Worn by facility security, it has some durathread plating in it to make it durable against melee, which of itself has degraded due to age. Not to mention the two massive holes in the vest, whoever wore this definitely isn't alive anymore."
	icon_state = "forgotten_guard_vest"
	armor_type = /datum/armor/scp/security_bad_vest

/datum/armor/scp/security_bad_vest
	melee = 30
	bullet = 15
	laser = 15
	energy = 10
	bomb = 15
	bio = 5
	fire = 5
	acid = 5
	wound = 10

/obj/item/clothing/suit/armor/vest/scp/security/medic
	name = "foundation security medical vest"
	desc = "A light armored vest, with a medical pauldron. Worn by facility security in the Combat Medic division. This one's armor padding has been lessened to cope with faster response."
	icon_state = "medic_guard_vest"
	body_parts_covered = CHEST|GROIN|ARMS
	cold_protection = CHEST|GROIN|ARMS
	armor_type = /datum/armor/scp/security_med_vest

/datum/armor/scp/security_med_vest
	melee = 35
	bullet = 40
	laser = 40
	energy = 45
	bomb = 15
	bio = 45
	fire = 15
	acid = 15
	wound = 10

/obj/item/clothing/suit/armor/vest/scp/security/recontain
	name = "foundation security response vest"
	desc = "A heavy armored vest, with added kneepads. It has a Recontainment Unit insignia on the chest. Worn by facility security in the Riot Control Unit division. Universally defensive."
	icon_state = "recontain_guard_vest"
	body_parts_covered = CHEST|GROIN|LEGS
	cold_protection = CHEST|GROIN|LEGS
	armor_type = /datum/armor/scp/security_rec_vest

/datum/armor/scp/security_rec_vest
	melee = 35
	bullet = 50
	laser = 45
	energy = 25
	bomb = 30
	bio = 10
	fire = 15
	acid = 15
	wound = 10

/obj/item/clothing/suit/armor/vest/scp/security/riot
	name = "foundation security riot vest"
	desc = "A heavy armored vest, with added arm armor, and kneepads for full body coverage. Worn by facility security in the Riot Control Unit division, it has some durathread plating in it to make it durable against melee, sadly not much else though. It looks extremely durable from impacts, but in return is fragile towards bullets."
	icon_state = "riot_guard_vest"
	body_parts_covered = CHEST|GROIN|LEGS|ARMS
	cold_protection = CHEST|GROIN|LEGS|ARMS
	armor_type = /datum/armor/scp/security_riot_vest

/datum/armor/scp/security_riot_vest
	melee = 70
	bullet = 15
	laser = 25
	energy = 25
	bomb = 50
	bio = 15
	fire = 15
	acid = 15
	wound = 10

/obj/item/clothing/suit/armor/vest/scp/security/cadet
	name = "foundation security trainee rig"
	desc = "A lightly armored rig. Worn by facility security in training, it's nimble plating, and defensive properties make it faster to manuever in than a normal ol' vest."
	icon_state = "cadet_vest"
	armor_type = /datum/armor/scp/security_cad_vest

/datum/armor/scp/security_cad_vest
	melee = 35
	bullet = 20
	laser = 15
	energy = 15
	bomb = 15
	bio = 15
	fire = 15
	acid = 15
	wound = 10

/obj/item/clothing/suit/armor/vest/scp/security/commander
	name = "heavy-plated foundation security armored vest"
	desc = "A heavy armored vest, with added arm armor, and kneepads for full body coverage. Worn by the facility's LCZ Lieutenant, it has some durathread plating in it to make it durable against melee, and slightly in some other damage types."
	icon_state = "heavy_guard_vest"
	body_parts_covered = CHEST|GROIN|LEGS|ARMS
	cold_protection = CHEST|GROIN|LEGS|ARMS
	armor_type = /datum/armor/scp/security_com_vest

/datum/armor/scp/security_com_vest
	melee = 65
	bullet = 45
	laser = 30
	energy = 40
	bomb = 40
	bio = 15
	fire = 15
	acid = 15
	wound = 10

// INTERNAL SECURITY VESTS

/obj/item/clothing/suit/armor/vest/scp/isd
	name = "Internal Security trenchcoat"
	desc = "A durable coat used by the Internal Security Department, there isn't much to note about it except for the golden SCP logo on the shoulder, and wrist designs."
	icon_state = "isd_trenchcoat"
	body_parts_covered = CHEST|GROIN|LEGS|ARMS
	cold_protection = CHEST|GROIN|LEGS|ARMS
	armor_type = /datum/armor/scp/isd_trenchcoat
	dog_fashion = null

/datum/armor/scp/isd_trenchcoat
	melee = 60
	bullet = 60
	laser = 40
	energy = 30
	bomb = 30
	bio = 15
	fire = 15
	acid = 15
	wound = 10

// CHAOS INSURGENCY VESTS

/obj/item/clothing/suit/armor/vest/scp/chaos
	name = "Chaos Insurgency armored vest"
	desc = "A heavy tan russian type ballistic vest, mainly protecting against bullets, and not much else. It's usually used by russian military forces, but is used by the Chaos Insurgency."
	icon_state = "ci_vest"
	body_parts_covered = CHEST|GROIN
	cold_protection = CHEST|GROIN
	armor_type = /datum/armor/scp/chaos_vest
	dog_fashion = null

/datum/armor/scp/chaos_vest
	melee = 40
	bullet = 65
	laser = 40
	energy = 25
	bomb = 30
	bio = 15
	fire = 15
	acid = 15
	wound = 10

/obj/item/clothing/suit/armor/vest/scp/chaos/pilot
	name = "Chaos Insurgency pilot vest"
	desc = "A light, agile-purposed vest with barely any plating, meant for pilots who need the manueverability, but also need protection. It's usually used by russian military forces, but is used by the Chaos Insurgency."
	icon_state = "ci_pilot_vest"
	armor_type = /datum/armor/scp/chaos_pilot_vest

/datum/armor/scp/chaos_pilot_vest
	melee = 15
	bullet = 25
	laser = 10
	energy = 0
	bomb = 5
	bio = 5
	fire = 5
	acid = 5
	wound = 5

// MOBILE TASK FORCE VESTS

/obj/item/clothing/suit/armor/vest/scp/mtf
	name = "tactical vest"
	desc = "An advanced multi-plated composite vest with kevlar lining and plenty of room to move. 'E-11' is sewn into the left pauldron, and 'Nine Tailed Fox' is sewn into the right."
	icon_state = "mtf_tactical_vest"
	body_parts_covered = CHEST|GROIN|ARMS
	cold_protection = CHEST|GROIN|ARMS
	armor_type = /datum/armor/scp/mtf_vest
	dog_fashion = null

/datum/armor/scp/mtf_vest
	melee = 60
	bullet = 80
	laser = 65
	energy = 15
	bomb = 60
	bio = 20
	fire = 20
	acid = 20
	wound = 10

/obj/item/clothing/suit/armor/vest/scp/mtf/medic
	name = "tactical medical vest"
	desc = "An advanced multi-plated composite vest with lessened kevlar lining than other models, and still plenty of room to move. 'E-11' is sewn into the left pauldron, and 'Nine Tailed Fox' is sewn into the right, which is white in color and dawned with the red cross of medics."
	icon_state = "mtf_medic_vest"
	armor_type = /datum/armor/scp/mtf_med_vest

/datum/armor/scp/mtf_med_vest
	melee = 55
	bullet = 75
	laser = 70
	energy = 25
	bomb = 50
	bio = 35
	fire = 20
	acid = 20
	wound = 10

/obj/item/clothing/suit/armor/vest/scp/mtf/medium
	name = "heavy tactical vest"
	desc = "An extremely advanced multi-plated composite vest with kevlar lining, added additional plating, and more body coverage and plenty of room to move. 'E-11' is sewn into the left pauldron, and 'Nine Tailed Fox' is sewn into the right."
	icon_state = "mtf_medium_vest"
	body_parts_covered = CHEST|GROIN|ARMS|LEGS|HANDS
	cold_protection = CHEST|GROIN|ARMS|LEGS|HANDS
	armor_type = /datum/armor/scp/mtf_heavy_vest

/datum/armor/scp/mtf_heavy_vest
	melee = 70
	bullet = 85
	laser = 75
	energy = 15
	bomb = 70
	bio = 25
	fire = 20
	acid = 20
	wound = 10

/obj/item/clothing/suit/armor/vest/scp/mtf/scout
	name = "compact scout vest"
	desc = "An advanced multi-plated composite vest with lessened kevlar lining than other models, and still plenty of room to move. Compact, and easy to move in."
	icon_state = "mtf_scout_vest"
	armor_type = /datum/armor/scp/mtf_light_vest

/datum/armor/scp/mtf_light_vest
	melee = 45
	bullet = 55
	laser = 45
	energy = 15
	bomb = 45
	bio = 15
	fire = 20
	acid = 20
	wound = 10

/obj/item/clothing/suit/armor/vest/scp/mtf/alpha1
	name = "'Red Right Hand' heavy compact vest"
	desc = "An extremely advanced multi-plated composite vest with extremely toughened kevlar lining, added additional plating, and more body coverage and plenty of room to move. 'A-1' is sewn onto the torso in red."
	icon_state = "mtf_alpha1_vest"
	armor_type = /datum/armor/scp/mtf_special_vest

/datum/armor/scp/mtf_special_vest
	melee = 80
	bullet = 95
	laser = 80
	energy = 25
	bomb = 70
	bio = 25
	fire = 20
	acid = 20
	wound = 10

/obj/item/clothing/suit/armor/vest/scp/mtf/omega1
	name = "'Laws Left Hand' heavy compact vest"
	desc = "An extremely advanced multi-plated composite vest with extremely toughened kevlar lining, added additional plating, and more body coverage and plenty of room to move. 'O-1' is sewn onto the torso in white."
	icon_state = "mtf_omega1_vest"
	armor_type = /datum/armor/scp/mtf_special_vest
