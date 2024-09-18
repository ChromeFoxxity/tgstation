/obj/item/clothing/mask/gas/scp
	icon = 'modular_f19/icons/obj/clothing/masks.dmi'
	worn_icon = 'modular_f19/icons/mob/clothing/masks.dmi'

/obj/item/clothing/mask/gas/scp/mtf
	name = "tactical coifed gas mask"
	desc = "A top-grade tactical clear gasmask above an added balaclava, it has a bit of melee-padding in it, along with some heavy bulletproof glass on it. Can be connected to an air supply."
	icon_state = "gasmask_alt_cover"
	body_parts_covered = HEAD
	resistance_flags = FIRE_PROOF | ACID_PROOF
	flags_inv = HIDEEARS | HIDEHAIR
	visor_flags_inv = 0
	flags_cover = MASKCOVERSMOUTH | MASKCOVERSEYES | PEPPERPROOF
	visor_flags_cover = MASKCOVERSMOUTH | MASKCOVERSEYES | PEPPERPROOF
	armor_type = /datum/armor/scp/mtf_mask

/datum/armor/scp/mtf_mask
	melee = 15
	bullet = 30
	bio = 100
	fire = 20
	acid = 10
