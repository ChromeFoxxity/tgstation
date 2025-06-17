/obj/item/clothing/gloves/color/scp
	cold_protection = HANDS
	min_cold_protection_temperature = GLOVES_MIN_TEMP_PROTECT
	heat_protection = HANDS
	max_heat_protection_temperature = GLOVES_MAX_TEMP_PROTECT
	resistance_flags = NONE

/obj/item/clothing/gloves/color/scp/tactical
	name = "tactical gloves"
	desc = "These tactical combat gloves come with microchips that help the user quickly restrain suspects."
	icon_state = "scpgloves"
	icon = 'modular_f19/icons/obj/clothing/scp_gloves.dmi'
	worn_icon = 'modular_f19/icons/mob/clothing/scp_hands.dmi'
	clothing_traits = list(TRAIT_FAST_CUFFING)

/obj/item/clothing/gloves/color/scp/tactical/nitrile
	name = "tactical nitrile gloves"
	desc = "Tactical combat gloves with the additional sterile coating. Excellent grip ensures very fast carrying of patients along with the faster use time of various chemical related items, while also still allowing the user to quickly restrain suspects."
	icon_state = "armorednitrile"
	icon = 'modular_f19/icons/obj/clothing/scp_gloves.dmi'
	worn_icon = 'modular_f19/icons/mob/clothing/scp_hands.dmi'
	clothing_traits = list(TRAIT_FAST_CUFFING, TRAIT_QUICKER_CARRY, TRAIT_FASTMED)

/obj/item/clothing/gloves/tackler/scp/tactical
	name = "tactical riot gloves"
	desc = "Premium quality combative gloves, heavily reinforced to defend the user's hands from melee, and to give the user an edge in close combat tackles. Fireproof to boot!"
	icon_state = "lcz_gloves"
	icon = 'modular_f19/icons/obj/clothing/scp_gloves.dmi'
	worn_icon = 'modular_f19/icons/mob/clothing/scp_hands.dmi'
	inhand_icon_state = null

	tackle_stam_cost = 25
	base_knockdown = 1.25 SECONDS
	tackle_range = 5
	skill_mod = 2
	siemens_coefficient = 0
	armor_type = /datum/armor/riot_gloves

	cold_protection = HANDS
	min_cold_protection_temperature = GLOVES_MIN_TEMP_PROTECT
	heat_protection = HANDS
	max_heat_protection_temperature = GLOVES_MAX_TEMP_PROTECT
	resistance_flags = NONE

/datum/armor/riot_gloves
	melee = 50
	bio = 50
