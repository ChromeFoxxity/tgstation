/obj/item/clothing/head/helmet/toggleable/scp
	icon = 'modular_f19/icons/obj/clothing/head/helmet.dmi'
	worn_icon = 'modular_f19/icons/mob/clothing/head/helmet.dmi'

/obj/item/clothing/head/helmet/scp
	icon = 'modular_f19/icons/obj/clothing/head/helmet.dmi'
	worn_icon = 'modular_f19/icons/mob/clothing/head/helmet.dmi'

/obj/item/clothing/head/helmet/toggleable/scp/security
	name = "\improper foundation security helmet"
	desc = "A heavy non-descript helmet with built-in padding, and armor. It has a poly-carbonate yellow riot visor on it."
	icon_state = "guard_helm"
	armor_type = /datum/armor/scp/security_helmet

/datum/armor/scp/security_helmet
	melee = 50
	bullet = 35
	laser = 40
	energy = 25
	bomb = 30
	fire = 50
	acid = 50
	wound = 10

/obj/item/clothing/head/helmet/scp/security
	name = "\improper foundation security trainee helmet"
	desc = "A light non-descript helmet given to Security Department cadets, with barely any built-in armor plating, nothing special really."
	icon_state = "cadet_helm"
	armor_type = /datum/armor/scp/security_cad_helmet

/datum/armor/scp/security_cad_helmet
	melee = 25
	bullet = 15
	laser = 15
	energy = 15
	bomb = 15
	fire = 50
	acid = 50
	wound = 10

/obj/item/clothing/head/helmet/scp/security/ruined
	name = "\improper ruined foundation security helmet"
	desc = "A heavy non-descript helmet with built-in padding, and armor, however age has deminished it's quality, scratching the paint off. It has a cracked, and shattered poly-carbonate yellow riot visor on it, devestating blow to it's previous owner."
	icon_state = "forgotten_guard_helm"
	armor_type = /datum/armor/scp/security_bad_helmet

/datum/armor/scp/security_bad_helmet
	melee = 30
	bullet = 15
	laser = 20
	energy = 5
	bomb = 15
	fire = 25
	acid = 25
	wound = 5

/obj/item/clothing/head/helmet/scp/security/medic
	name = "\improper foundation security medical helmet"
	desc = "A light non-descript helmet with built-in padding, and armor. It has a red cross on the front, and a red visor. Durability lessened to cope with faster response."
	icon_state = "medic_guard_helm"
	armor_type = /datum/armor/scp/security_med_helmet

/datum/armor/scp/security_med_helmet
	melee = 35
	bullet = 40
	laser = 40
	energy = 45
	bomb = 15
	fire = 50
	acid = 50
	wound = 10

/obj/item/clothing/head/helmet/scp/security/recontain
	name = "\improper foundation security response helmet"
	desc = "A heavy non-descript helmet with extra built-in padding, and armor. The massive amount of armor makes the helmet look thicker, it has a cyan visor."
	icon_state = "recontain_guard_helm"
	armor_type = /datum/armor/scp/security_rec_helmet

/datum/armor/scp/security_rec_helmet
	melee = 35
	bullet = 50
	laser = 45
	energy = 25
	bomb = 30
	fire = 50
	acid = 50
	wound = 10

/obj/item/clothing/head/helmet/toggleable/scp/security/riot
	name = "\improper foundation security riot helmet"
	desc = "A heavy non-descript helmet with a heavy durathread armor plating in the helmet, giving it a massive defense against melee. It has a poly-carbonate modernized white riot visor on it."
	icon_state = "riot_guard_helm"
	armor_type = /datum/armor/scp/security_riot_helmet

/datum/armor/scp/security_riot_helmet
	melee = 70
	bullet = 15
	laser = 25
	energy = 25
	bomb = 50
	fire = 50
	acid = 50
	wound = 10

/obj/item/clothing/head/helmet/toggleable/scp/security/commander
	name = "\improper heavy-plated foundation security helmet"
	desc = "A heavy non-descript helmet with more built-in padding, and armor. The golden badge on the front of the helmet incidates the rank of 'Lieutenant', looks important. It has a poly-carbonate yellow riot visor on it."
	icon_state = "heavy_guard_helm"
	armor_type = /datum/armor/scp/security_com_helmet

/datum/armor/scp/security_com_helmet
	melee = 55
	bullet = 45
	laser = 45
	energy = 30
	bomb = 30
	fire = 50
	acid = 50
	wound = 10

/obj/item/clothing/head/helmet/toggleable/scp/mtf
	name = "tactical helmet"
	desc = "An armored helmet usually worn by Mobile Task Forces, dawned with SCP logos, and insignia."
	icon_state = "mtf_tactical_helmet"
	toggle_message = "You pull the goggles down on"
	alt_toggle_message = "You push the goggles up on"
	armor_type = /datum/armor/scp/mtf_helmet

/datum/armor/scp/mtf_helmet
	melee = 60
	bullet = 80
	laser = 65
	energy = 30
	bomb = 60
	fire = 50
	acid = 50
	wound = 10

/obj/item/clothing/head/helmet/scp/mtf
	name = "tactical helmet"
	desc = "An armored helmet usually worn by Mobile Task Forces, dawned with SCP logos, and insignia."
	icon_state = "mtf_bland_helmet"
	armor_type = /datum/armor/scp/mtf_helmet
