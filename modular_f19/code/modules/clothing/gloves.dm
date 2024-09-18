/obj/item/clothing/gloves/color/black/security/scp
	name = "tactical gloves"
	desc = "These black tactical gloves are made from a durable synthetic, and have hardened knuckles."
	icon = 'modular_f19/icons/obj/clothing/gloves.dmi'
	worn_icon = 'modular_f19/icons/mob/clothing/gloves.dmi'
	icon_state = "scpgloves"
	armor_type = /datum/armor/scp/scp_gloves

/datum/armor/scp/scp_gloves
	melee = 15
	bio = 90
	fire = 70
	acid = 50

/obj/item/clothing/gloves/tackler/combat/scp
	name = "combat riot gloves"
	desc = "These black heavy tactical gloves are made from a durable fabric, woven with durathread alloy, and have hardened knuckles. Extremely resistant to impacts."
	icon_state = "lczgloves"
	armor_type = /datum/armor/scp/riot_gloves

/datum/armor/scp/riot_gloves
	melee = 80
	bio = 90
	fire = 70
	acid = 50

/obj/item/clothing/gloves/tackler/combat/scp/nitrile
	name = "combat nitrile gloves"
	desc = "Premium quality nitrile gloves, heavily reinforced to give the user an edge in close combat tackles, though they are more taxing to use than normal gripper gloves. Incredibly sterile to boot!"
	icon_state = "nitrilegloves"
	clothing_traits = list(TRAIT_QUICKER_CARRY, TRAIT_FASTMED, TRAIT_FINGERPRINT_PASSTHROUGH, TRAIT_FAST_CUFFING)
	armor_type = /datum/armor/scp/scp_gloves
