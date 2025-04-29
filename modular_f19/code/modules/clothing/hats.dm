// BASETYPE HELPERS
// [SCP]

/obj/item/clothing/head/helmet/scp
	icon = 'icons/obj/clothing/head/scp_head.dmi'
	worn_icon = 'icons/mob/clothing/head/scp_head.dmi'

/obj/item/clothing/head/helmet/toggleable/scp
	icon = 'icons/obj/clothing/head/scp_head.dmi'
	worn_icon = 'icons/mob/clothing/head/scp_head.dmi'

/obj/item/clothing/head/beret/scp
	icon = 'icons/obj/clothing/head/scp_head.dmi'
	worn_icon = 'icons/mob/clothing/head/scp_head.dmi'

/obj/item/clothing/head/soft/scp
	icon = 'icons/obj/clothing/head/scp_head.dmi'
	worn_icon = 'icons/mob/clothing/head/scp_head.dmi'

/obj/item/clothing/head/hats/scp
	icon = 'icons/obj/clothing/head/scp_head.dmi'
	worn_icon = 'icons/mob/clothing/head/scp_head.dmi'

// UNUSUAL INCIDENTS UNIT HELMETS
// [SCP]

/obj/item/clothing/head/helmet/scp/uiu
	name = "Unusual Incidents Unit helmet"
	desc = "A green bulletproof tactical helmet, with the US flag on one of the sides, with a UIU patch on the other. This kind of helmet is usually worn by FBI raiding teams, repurposed for the UIU field agents."
	icon_state = "uiu_helmet"
	armor_type = /datum/armor/scp_uiu_helmet

/datum/armor/scp_uiu_helmet
	melee = 35
	bullet = 70
	laser = 35
	energy = 30
	bomb = 35
	fire = 50
	acid = 50
	wound = 10

/obj/item/clothing/head/soft/scp/uiu
	name = "Unusual Incidents Unit cap"
	desc = "A green Unusual Incidents Unit baseball cap. Looks rather tactical, as it also has some built-in padding offering minimal protection."
	icon_state = "uiusoft"
	soft_type = "uiu"
	armor_type = /datum/armor/scp_uiu_cap
	strip_delay = 60

/datum/armor/scp_uiu_cap
	melee = 25
	bullet = 60
	laser = 30
	energy = 25
	bomb = 25
	fire = 50
	acid = 50
	wound = 10

// GLOBAL OCCULT COALITION HELMETS
// [SCP]

/obj/item/clothing/head/helmet/scp/goc
	name = "Global Occult Coalition helmet"
	desc = "A black lightweight combat helmet, with the United Nations' initials on the front usually worn by Global Occult Coalition teams. Has some bulletproof plating in it."
	icon_state = "goc_helmet"
	armor_type = /datum/armor/scp_goc_helmet

/datum/armor/scp_goc_helmet
	melee = 35
	bullet = 70
	laser = 35
	energy = 30
	bomb = 35
	fire = 50
	acid = 50
	wound = 10

/obj/item/clothing/head/helmet/toggleable/scp/goc
	name = "Global Occult Coalition heavy-plated helmet"
	desc = "A black heavy combat helmet, with the United Nations' initials on the front usually worn by Global Occult Coalition teams, this helmet has an added cyan ballistic visor. Has some bulletproof plating in it."
	icon_state = "goc_heavy_helmet"
	armor_type = /datum/armor/scp_goc_heavy_helmet

/datum/armor/scp_goc_heavy_helmet
	melee = 45
	bullet = 75
	laser = 40
	energy = 25
	bomb = 45
	fire = 50
	acid = 50
	wound = 10

// GLOBAL OCCULT COALITION HATS/BERETS
// [SCP]

/obj/item/clothing/head/soft/scp/goc
	name = "Global Occult Coalition cap"
	desc = "A dark blue Global Occult Coalition baseball cap. Looks rather tactical, as it also has some built-in padding offering minimal protection."
	icon_state = "gocsoft"
	soft_type = "goc"
	armor_type = /datum/armor/scp_goc_cap
	strip_delay = 60

/datum/armor/scp_goc_cap
	melee = 40
	bullet = 65
	laser = 30
	energy = 25
	bomb = 25
	fire = 50
	acid = 50
	wound = 10

/obj/item/clothing/head/beret/scp/goc/leader
	name = "\improper Global Occult Coalition officer beret"
	desc = "A Global Occult Coalition beret, in the United Nations dark blue. You see a silver UNGOC logo badge on the front of it, you can feel it's armor padding, while it still keeps the classic soft clothy feel."
	icon_state = "goc_leaderberet"
	greyscale_config = null
	greyscale_config_worn = null
	greyscale_colors = null
	armor_type = /datum/armor/scp_beret_goc_leader
	strip_delay = 10 SECONDS

/datum/armor/scp_beret_goc_leader
	melee = 45
	bullet = 75
	laser = 40
	energy = 35
	bomb = 25
	fire = 50
	acid = 50
	wound = 10

/obj/item/clothing/head/beret/scp/goc
	name = "\improper Global Occult Coalition formal beret"
	desc = "A Global Occult Coalition beret, in the United Nations blue. You see a golden UNGOC logo badge on the front of it, meant for GOC formal occasions."
	icon_state = "goc_formalberet"
	greyscale_config = null
	greyscale_config_worn = null
	greyscale_colors = null
	armor_type = /datum/armor/scp_beret_goc_formal
	strip_delay = 10 SECONDS

/datum/armor/scp_beret_goc_formal
	melee = 15
	bullet = 5
	laser = 15
	energy = 25
	bomb = 10
	fire = 30
	acid = 5
	wound = 4

// SECURITY DEPARTMENT HELMETS
// [SCP]

/obj/item/clothing/head/helmet/toggleable/scp/security
	name = "\improper foundation security helmet"
	desc = "A heavy non-descript helmet with built-in padding, and armor, primarily for riots, but can still take a bullet. It has a yellow poly-carbonate riot visor on it."
	icon_state = "guard_helmet"
	toggle_message = "You pull the visor down on"
	alt_toggle_message = "You push the visor up on"
	armor_type = /datum/armor/scp_security_helmet
	flags_inv = HIDEHAIR|HIDEEARS|HIDEFACE|HIDESNOUT
	strip_delay = 80
	actions_types = list(/datum/action/item_action/toggle)
	visor_flags_inv = HIDEFACE|HIDESNOUT
	flags_cover = HEADCOVERSEYES | HEADCOVERSMOUTH | PEPPERPROOF
	visor_flags_cover = HEADCOVERSEYES | HEADCOVERSMOUTH | PEPPERPROOF
	clothing_traits = list(TRAIT_HEAD_INJURY_BLOCKED)
	sound_vary = TRUE
	equip_sound = 'sound/items/handling/helmet/helmet_equip1.ogg'
	pickup_sound = 'sound/items/handling/helmet/helmet_pickup1.ogg'
	drop_sound = 'sound/items/handling/helmet/helmet_drop1.ogg'
	visor_toggle_up_sound = SFX_VISOR_UP
	visor_toggle_down_sound = SFX_VISOR_DOWN

/obj/item/clothing/head/helmet/toggleable/scp/security/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/adjust_fishing_difficulty, 2)

/datum/armor/scp_security_helmet
	melee = 55
	bullet = 30
	laser = 30
	energy = 35
	bomb = 25
	fire = 50
	acid = 50
	wound = 10

/obj/item/clothing/head/helmet/toggleable/scp/security/medic
	name = "\improper medical foundation security helmet"
	desc = "A heavy non-descript helmet with built-in padding, and armor, primarily for riots, but can still take a bullet, has some sterile defenses. It has a white poly-carbonate riot visor on it along with the red cross known for medics on the helmet."
	icon_state = "med_guard_helmet"
	armor_type = /datum/armor/scp_security_med_helmet

/datum/armor/scp_security_med_helmet
	melee = 55
	bullet = 30
	laser = 30
	energy = 45
	bomb = 25
	bio = 50
	fire = 50
	acid = 50
	wound = 10

/obj/item/clothing/head/helmet/toggleable/scp/security/lieutenant
	name = "\improper medium-plated foundation security helmet"
	desc = "A heavy non-descript helmet with slightly more built-in padding, and armor, primarily for riots, but can still take a bullet. The silver stripe along the helmet incidates the rank of 'Lieutenant', looks sub-par. It has a yellow poly-carbonate riot visor on it."
	icon_state = "lt_guard_helmet"
	armor_type = /datum/armor/scp_security_lt_helmet

/datum/armor/scp_security_lt_helmet
	melee = 60
	bullet = 35
	laser = 35
	energy = 35
	bomb = 30
	fire = 50
	acid = 50
	wound = 10

/obj/item/clothing/head/helmet/toggleable/scp/security/captain
	name = "\improper heavy-plated foundation security helmet"
	desc = "A heavy non-descript helmet with more built-in padding, and armor, primarily for riots, but can still take a bullet. The golden badge on the front of the helmet incidates the rank of 'Captain', looks important. It has a yellow poly-carbonate riot visor on it."
	icon_state = "cpt_guard_helmet"
	armor_type = /datum/armor/scp_security_cpt_helmet

/datum/armor/scp_security_cpt_helmet
	melee = 65
	bullet = 45
	laser = 45
	energy = 40
	bomb = 45
	fire = 50
	acid = 50
	wound = 10

// SECURITY DEPARTMENT HATS/BERETS
// [SCP]

/obj/item/clothing/head/beret/scp/security
	name = "foundation security beret"
	desc = "A padded beret used by Site Security, it has a white Security Department logo on the front of it. It's got standard armor padding. But it isn't as useful as a helmet. The predicament of fashion and defense is always an issue."
	icon_state = "security_beret"
	greyscale_config = null
	greyscale_config_worn = null
	greyscale_colors = null
	armor_type = /datum/armor/scp_security_beret
	strip_delay = 10 SECONDS

/datum/armor/scp_security_beret
	melee = 40
	bullet = 25
	laser = 25
	energy = 30
	bomb = 15
	fire = 50
	acid = 50
	wound = 10

/obj/item/clothing/head/beret/scp/security/sergeant
	name = "foundation security sergeant beret"
	desc = "A padded beret used by Site Security Sergeants, it has a silver Security Department badge on the front of it. It's got standard armor padding. But it isn't as useful as a helmet. The predicament of fashion and defense is always an issue."
	icon_state = "sergeant_beret"
	armor_type = /datum/armor/scp_sergeant_beret

/datum/armor/scp_sergeant_beret
	melee = 45
	bullet = 30
	laser = 30
	energy = 30
	bomb = 20
	fire = 50
	acid = 50
	wound = 10

/obj/item/clothing/head/beret/scp/security/captain
	name = "foundation security captain beret"
	desc = "A padded beret used by Site Security Captains, it has a golden Security Department badge on the front of it. It's got standard armor padding. But it isn't as useful as a helmet. The predicament of fashion and defense is always an issue."
	icon_state = "captain_beret"
	armor_type = /datum/armor/scp_captain_beret

/datum/armor/scp_captain_beret
	melee = 55
	bullet = 40
	laser = 35
	energy = 30
	bomb = 25
	fire = 50
	acid = 50
	wound = 10

// MOBILE TASK FORCE HELMETS
// [SCP]

/obj/item/clothing/head/helmet/toggleable/scp/mtf
	name = "tactical helmet"
	desc = "A heavy ballistic helmet, with goggles that may or may not effect anything, usually worn by SCP Foundation MTF operatives, a simple but defensive approach. Dawned with SCP logos, and Task Force insignia."
	icon_state = "mtf_tactical_helmet"
	toggle_message = "You pull the goggles down on"
	alt_toggle_message = "You push the goggles up on"
	armor_type = /datum/armor/scp_mtf_helmet
	actions_types = list(/datum/action/item_action/toggle)
	strip_delay = 80

/datum/armor/scp_mtf_helmet
	melee = 45
	bullet = 70
	laser = 45
	energy = 30
	bomb = 45
	fire = 50
	acid = 50
	wound = 10

/obj/item/clothing/head/helmet/scp/mtf
	name = "tactical helmet"
	desc = "A heavy ballistic helmet, usually worn by SCP Foundation MTF operatives, a simple but defensive approach. Dawned with SCP logos, and Task Force insignia."
	icon_state = "mtf_helmet"
	armor_type = /datum/armor/scp_mtf_helmet
	strip_delay = 80

/obj/item/clothing/head/beret/scp/mtf
	name = "'Nine Tailed Fox' tactical beret"
	desc = "A heavy padded beret used by MTF Epsilon-11, it's quite armored, more than traditional helmets."
	icon_state = "epsilon11_beret"
	greyscale_config = null
	greyscale_config_worn = null
	greyscale_colors = null
	armor_type = /datum/armor/scp_mtf_beret
	strip_delay = 10 SECONDS

/datum/armor/scp_mtf_beret
	melee = 50
	bullet = 75
	laser = 50
	energy = 35
	bomb = 35
	fire = 50
	acid = 50
	wound = 10

/obj/item/clothing/head/beret/scp/mtf/alpha
	name = "'Red Right Hand' tactical beret"
	desc = "A heavy padded beret used by MTF Alpha-1, it's quite armored, more than traditional helmets."
	icon_state = "alpha1_beret"

/obj/item/clothing/head/beret/scp/mtf/omega
	name = "'Laws Left Hand' tactical beret"
	desc = "A heavy padded beret used by MTF Omega-1, it's quite armored, more than traditional helmets."
	icon_state = "omega1_beret"

// CHAOS INSURGENCY HELMETS
// [SCP]

/obj/item/clothing/head/helmet/scp/chaos
	name = "Chaos Insurgency helmet"
	desc = "A russian type of ballistics helmet usually seen worn by modern russian military forces, this one is colored tan and is used by the Chaos Insurgency."
	icon_state = "ci_helmet"
	armor_type = /datum/armor/scp_chaos_helmet

/datum/armor/scp_chaos_helmet
	melee = 35
	bullet = 70
	laser = 35
	energy = 30
	bomb = 35
	fire = 50
	acid = 50
	wound = 10

/obj/item/clothing/head/helmet/toggleable/scp/chaos
	name = "Chaos Insurgency K6-3 Altyn helmet"
	desc = "A heavy russian type of helmet usually seen worn by modern russian military forces, this one has a face shield and is used by heavy soldiers, colored tan and is used by the Chaos Insurgency."
	icon_state = "ci_heavy_helmet"
	toggle_message = "You pull the visor down on"
	alt_toggle_message = "You push the visor up on"
	strip_delay = 80
	armor_type = /datum/armor/scp_chaos_heavy_helmet
	flags_inv = HIDEHAIR|HIDEEARS|HIDEFACE|HIDESNOUT
	actions_types = list(/datum/action/item_action/toggle)
	visor_flags_inv = HIDEFACE|HIDESNOUT
	flags_cover = HEADCOVERSEYES | HEADCOVERSMOUTH | PEPPERPROOF
	visor_flags_cover = HEADCOVERSEYES | HEADCOVERSMOUTH | PEPPERPROOF
	clothing_traits = list(TRAIT_HEAD_INJURY_BLOCKED)

/datum/armor/scp_chaos_heavy_helmet
	melee = 45
	bullet = 75
	laser = 40
	energy = 25
	bomb = 45
	fire = 50
	acid = 50
	wound = 10

/obj/item/clothing/head/hats/scp/chaos
	name = "Chaos Insurgency field cap"
	desc = "A durable, unquestionably bulletproof russian type of field cap used by mainly officers of the russian military forces, but is repurposed by the Chaos Insurgency for their cell leaders."
	icon_state = "ci_officer"
	armor_type = /datum/armor/scp_chaos_officer

/datum/armor/scp_chaos_officer
	melee = 45
	bullet = 65
	laser = 30
	energy = 25
	bomb = 25
	fire = 50
	acid = 50
	wound = 10

/obj/item/clothing/head/helmet/scp/chaos/light
	name = "Chaos Insurgency light helmet"
	desc = "A light helmet worn by pilots, scouts, and infiltrators usually wanting the utmost defense while having manueverability. Usually seen worn by modern russian military forces, this one is colored tan with a red visor and is used by the Chaos Insurgency."
	icon_state = "ci_light_helmet"
	armor_type = /datum/armor/head_helmet
