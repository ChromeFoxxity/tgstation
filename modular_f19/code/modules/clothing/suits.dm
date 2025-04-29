// BASETYPE HELPERS
// [SCP]

/obj/item/clothing/suit/armor/vest/scp
	icon = 'icons/obj/clothing/suits/scp_suit.dmi'
	worn_icon = 'icons/mob/clothing/suits/scp_suit.dmi'

// UNUSUAL INCIDENTS UNIT VESTS
// [SCP]

/obj/item/clothing/suit/armor/vest/scp/uiu
	name = "Unusual Incidents Unit bulletproof vest"
	desc = "A green bulletproof, there's text on the front of the vest, 'FBI'. This vest specializes in primarily bulletproof plating."
	icon_state = "uiu_vest"
	body_parts_covered = CHEST|GROIN
	cold_protection = CHEST|GROIN
	armor_type = /datum/armor/scp_uiu_vest
	dog_fashion = null
	strip_delay = 70
	equip_delay_other = 50

/datum/armor/scp_uiu_vest
	melee = 35
	bullet = 65
	laser = 45
	energy = 40
	bomb = 30
	fire = 50
	acid = 50
	wound = 10

/obj/item/storage/belt/military/scp/uiu
	name = "Unusual Incidents Unit tactical webbing"
	desc = "A set of green tactical webbing usually seen on FBI agents, this one has 'FBI' on the front, looks like it'll hold a lot."
	icon = 'icons/obj/clothing/suits/scp_suit.dmi'
	worn_icon = 'icons/mob/clothing/suits/scp_suit.dmi'
	icon_state = "uiu_webbing"
	worn_icon_state = "uiu_webbing"

// GLOBAL OCCULT COALITION VESTS
// [SCP]

/obj/item/clothing/suit/armor/vest/scp/goc
	name = "Global Occult Coalition compact vest"
	desc = "A black lightweight compact armored vest, denoting the initials of the Global Occult Coalition. This vest specializes in several different defense, but primarily bulletproof plating."
	icon_state = "goc_vest"
	body_parts_covered = CHEST|GROIN
	cold_protection = CHEST|GROIN
	armor_type = /datum/armor/scp_goc_vest
	dog_fashion = null
	strip_delay = 70
	equip_delay_other = 50

/datum/armor/scp_goc_vest
	melee = 35
	bullet = 65
	laser = 35
	energy = 25
	bomb = 30
	fire = 50
	acid = 50
	wound = 10

/obj/item/clothing/suit/armor/vest/scp/goc/heavy
	name = "Global Occult Coalition heavy-plated vest"
	desc = "A black heavy set of sturdy armor, denoting the initials of the Global Occult Coalition. This vest specializes in several different defense, but primarily bulletproof plating."
	icon_state = "goc_heavy_vest"
	body_parts_covered = CHEST|GROIN|ARMS|LEGS
	cold_protection = CHEST|GROIN|ARMS|LEGS
	armor_type = /datum/armor/scp_goc_heavy_vest

/datum/armor/scp_goc_heavy_vest
	melee = 45
	bullet = 75
	laser = 40
	energy = 30
	bomb = 45
	fire = 50
	acid = 50
	wound = 10

/obj/item/clothing/suit/armor/vest/scp/goc/coat
	name = "Global Occult Coalition coat"
	desc = "A coat United Nations blue colored greatcoat, with golden buttons. For sending your strike teams to their deaths, in style."
	icon_state = "goc_coat"
	body_parts_covered = CHEST|GROIN|ARMS
	cold_protection = CHEST|GROIN|ARMS
	armor_type = /datum/armor/scp_goc_coat
	strip_delay = 70
	equip_delay_other = 50

/datum/armor/scp_goc_coat
	melee = 45
	bullet = 50
	laser = 40
	energy = 50
	bomb = 35
	bio = 10
	fire = 10
	acid = 60
	wound = 10

/obj/item/clothing/suit/armor/vest/scp/goc/jacket
	name = "Global Occult Coalition jacket"
	desc = "A jacket with Global Occult Coalition logos on the arms, golden nametag on the front displaying the name of the Official. A soft jacket for a classy individual. You can feel some padding in it, within the soft fabric of the jacket."
	icon_state = "goc_jacket"
	body_parts_covered = CHEST|GROIN|ARMS
	cold_protection = CHEST|GROIN|ARMS
	armor_type = /datum/armor/scp_goc_jacket
	strip_delay = 60
	equip_delay_other = 40

/datum/armor/scp_goc_jacket
	melee = 35
	bullet = 40
	laser = 40
	energy = 50
	bomb = 35
	bio = 10
	fire = 10
	acid = 60
	wound = 10

/obj/item/clothing/suit/armor/vest/scp/goc/jacket/rep
	name = "Global Occult Coalition jacket"
	desc = "A formal jacket with Global Occult Coalition logos on the arms, golden insignia and a golden nametag on the front displaying the name of the Representative. A sleek, formal jacket for a classy individual. You can feel some padding in it, within the soft fabric of the jacket."
	icon_state = "gocrep_jacket"
	armor_type = /datum/armor/scp_goc_rep_jacket

/datum/armor/scp_goc_rep_jacket
	melee = 35
	bullet = 30
	laser = 30
	energy = 40
	bomb = 25
	fire = 50
	acid = 50
	wound = 10

// SECURITY DEPARTMENT VESTS
// [SCP]

/obj/item/clothing/suit/armor/vest/scp/security
	name = "foundation security vest"
	desc = "A heavy armored vest with a white 'SCP' tag on it. Worn by Site Security Guards, it has some durathread plating in it to make it durable against melee, sadly not much else though."
	icon_state = "guard_vest"
	body_parts_covered = CHEST|GROIN
	cold_protection = CHEST|GROIN
	armor_type = /datum/armor/scp_security_vest
	dog_fashion = null
	strip_delay = 70
	equip_delay_other = 50

/datum/armor/scp_security_vest
	melee = 50
	bullet = 30
	laser = 30
	energy = 35
	bomb = 25
	fire = 50
	acid = 50
	wound = 10

/obj/item/clothing/suit/armor/vest/scp/security/sergeant
	name = "light-plated foundation security vest"
	desc = "A armored vest with some additional shoulder pads to protect the arms, as well as white rank tabs on the shoulders, and a white 'SCP' tag on the vest. Worn by Site Security NCOs, it has some durathread plating in it to make it durable against melee, with some slight defense for other types."
	icon_state = "sgt_guard_vest"
	body_parts_covered = CHEST|GROIN|ARMS
	cold_protection = CHEST|GROIN|ARMS
	armor_type = /datum/armor/scp_security_sgt_vest

/datum/armor/scp_security_sgt_vest
	melee = 55
	bullet = 35
	laser = 35
	energy = 40
	bomb = 35
	fire = 50
	acid = 50
	wound = 10

/obj/item/clothing/suit/armor/vest/scp/security/medic
	name = "medical foundation security vest"
	desc = "A heavy armored vest, with some additional shoulder pads to protect the arms, with one being colored white with a red cross to be designated as medical. Worn by facility security medics, it has some durathread plating in it to make it durable against melee, with some slight defense for other types."
	icon_state = "med_guard_vest"
	body_parts_covered = CHEST|GROIN|ARMS
	cold_protection = CHEST|GROIN|ARMS
	armor_type = /datum/armor/scp_security_med_vest

/datum/armor/scp_security_med_vest
	melee = 55
	bullet = 35
	laser = 35
	energy = 40
	bomb = 35
	bio = 50
	fire = 50
	acid = 50
	wound = 10

/obj/item/clothing/suit/armor/vest/scp/security/lieutenant
	name = "medium-plated foundation security vest"
	desc = "A hefty armored vest with added shoulder armor and kneepads for semi-full body coverage, as well as silver rank tabs on the shoulderpads, and a silver 'SCP' tag on the vest. Worn by the Site Security Lieutenants, it has some durathread plating in it to make it the most durable against melee, with some minor protection against other damage types."
	icon_state = "lt_guard_vest"
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS
	cold_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	heat_protection = CHEST|GROIN|LEGS|FEET|ARMS
	armor_type = /datum/armor/scp_security_lt_vest
	strip_delay = 80
	equip_delay_other = 60

/datum/armor/scp_security_lt_vest
	melee = 60
	bullet = 40
	laser = 40
	energy = 40
	bomb = 40
	fire = 50
	acid = 50
	wound = 10

/obj/item/clothing/suit/armor/vest/scp/security/captain
	name = "heavy-plated foundation security vest"
	desc = "A heavy armored vest with added arm and hand armor and kneepads for full body coverage, as well as golden rank tabs on the arms, and a golden 'SCP' tag on the vest. Worn by the Site Security Captain, it has some durathread plating in it to make it the most durable against melee, with some protection against other damage types."
	icon_state = "cpt_guard_vest"
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	cold_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	heat_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	armor_type = /datum/armor/scp_security_cap_vest
	strip_delay = 80
	equip_delay_other = 60
	clothing_traits = list(TRAIT_BRAWLING_KNOCKDOWN_BLOCKED)

/obj/item/clothing/suit/armor/vest/scp/security/captain/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/adjust_fishing_difficulty, 5)
	init_rustle_component()

/obj/item/clothing/suit/armor/vest/scp/security/captain/proc/init_rustle_component()
	AddComponent(/datum/component/item_equipped_movement_rustle)

/datum/armor/scp_security_cap_vest
	melee = 65
	bullet = 45
	laser = 45
	energy = 40
	bomb = 45
	fire = 50
	acid = 50
	wound = 10

// MOBILE TASK FORCE VESTS
// [SCP]

/obj/item/clothing/suit/armor/vest/scp/mtf
	name = "tactical vest"
	desc = "An advanced multi-plated composite vest with kevlar lining and plenty of room to move. Task Force insignia is sewn into the left pauldron, and the Task Force's nickname is sewn into the right."
	icon_state = "mtf_tactical"
	body_parts_covered = CHEST|GROIN|ARMS
	cold_protection = CHEST|GROIN|ARMS
	armor_type = /datum/armor/scp_mtf_vest
	dog_fashion = null

/datum/armor/scp_mtf_vest
	melee = 60
	bullet = 80
	laser = 65
	energy = 15
	bomb = 60
	fire = 50
	acid = 50
	wound = 10

/obj/item/clothing/suit/armor/vest/scp/mtf/medic
	name = "tactical medical vest"
	desc = "An advanced multi-plated composite vest with lessened kevlar lining than other models, and still plenty of room to move. Task Force insignia is sewn into the left pauldron, and the Task Force's nickname is sewn into the right."
	icon_state = "mtf_medic"
	armor_type = /datum/armor/scp_mtf_med_vest

/datum/armor/scp_mtf_med_vest
	melee = 55
	bullet = 75
	laser = 70
	energy = 25
	bomb = 50
	fire = 50
	acid = 50
	wound = 10

/obj/item/clothing/suit/armor/vest/scp/mtf/medium
	name = "heavy tactical vest"
	desc = "An extremely advanced multi-plated composite vest with kevlar lining, added additional plating, and more body coverage and plenty of room to move. Task Force insignia is sewn into the left pauldron, and the Task Force's nickname is sewn into the right."
	icon_state = "mtf_medium"
	body_parts_covered = CHEST|GROIN|ARMS|LEGS|HANDS
	cold_protection = CHEST|GROIN|ARMS|LEGS|HANDS
	strip_delay = 80
	equip_delay_other = 60
	clothing_traits = list(TRAIT_BRAWLING_KNOCKDOWN_BLOCKED)
	armor_type = /datum/armor/scp_mtf_heavy_vest

/datum/armor/scp_mtf_heavy_vest
	melee = 70
	bullet = 85
	laser = 75
	energy = 15
	bomb = 70
	fire = 50
	acid = 50
	wound = 10

/obj/item/clothing/suit/armor/vest/scp/mtf/scout
	name = "compact scout vest"
	desc = "An advanced multi-plated composite vest with lessened kevlar lining than other models, and still plenty of room to move. Compact, and easy to move in."
	icon_state = "mtf_scout"
	armor_type = /datum/armor/scp_mtf_light_vest

/datum/armor/scp_mtf_light_vest
	melee = 45
	bullet = 55
	laser = 45
	energy = 15
	bomb = 45
	fire = 50
	acid = 50
	wound = 10

/obj/item/clothing/suit/armor/vest/scp/mtf/alpha1
	name = "'Red Right Hand' heavy compact vest"
	desc = "An extremely advanced multi-plated composite vest with extremely toughened kevlar lining, added additional plating, and more body coverage and plenty of room to move. 'A-1' is sewn onto the torso in red."
	icon_state = "mtf_alpha1"
	armor_type = /datum/armor/scp_mtf_special_vest

/datum/armor/scp_mtf_special_vest
	melee = 75
	bullet = 85
	laser = 80
	energy = 25
	bomb = 70
	fire = 50
	acid = 50
	wound = 10

/obj/item/clothing/suit/armor/vest/scp/mtf/omega1
	name = "'Laws Left Hand' heavy compact vest"
	desc = "An extremely advanced multi-plated composite vest with extremely toughened kevlar lining, added additional plating, and more body coverage and plenty of room to move. 'O-1' is sewn onto the torso in white."
	icon_state = "mtf_omega1"
	armor_type = /datum/armor/scp_mtf_special_vest

// CHAOS INSURGENCY VESTS
// [SCP]

/obj/item/clothing/suit/armor/vest/scp/chaos
	name = "Chaos Insurgency armored vest"
	desc = "A heavy, russian type ballistic vest, mainly protecting against bullets, and not much else. It's usually used by russian military forces, but is used by the Chaos Insurgency."
	icon_state = "ci_vest"
	body_parts_covered = CHEST|GROIN
	cold_protection = CHEST|GROIN
	armor_type = /datum/armor/scp_chaos_vest
	dog_fashion = null
	strip_delay = 70
	equip_delay_other = 50

/datum/armor/scp_chaos_vest
	melee = 35
	bullet = 65
	laser = 35
	energy = 25
	bomb = 30
	fire = 50
	acid = 50
	wound = 10

/obj/item/clothing/suit/armor/vest/scp/chaos/light
	name = "Chaos Insurgency light vest"
	desc = "A light, agile-purposed ballistic vest with barely any plating, meant for scouting operations, pilots, or infiltrators who need the manueverability, but also need protection. It's usually used by russian military forces, but is used by the Chaos Insurgency."
	icon_state = "ci_light_vest"
	armor_type = /datum/armor/suit_armor
	strip_delay = 60
	equip_delay_other = 40
