/datum/outfit/central
	name = "Central Office Base"

/datum/outfit/central/post_equip(mob/living/carbon/human/central_member, visualsOnly = FALSE)
	if(visualsOnly)
		return
	var/obj/item/implant/mindshield/mindshield = new /obj/item/implant/mindshield(central_member)//hmm lets have centcom officials become revs
	mindshield.implant(central_member, null, silent = TRUE)

/datum/outfit/central/mtf
	name = "MTF Common"

	uniform = /obj/item/clothing/under/rank/scp/mtf
	ears = /obj/item/radio/headset/headset_cent/alt
	gloves = /obj/item/clothing/gloves/color/scp/tactical
	mask = /obj/item/clothing/mask/gas/sechailer
	shoes = /obj/item/clothing/shoes/combat/scp/tactical
	var/additional_radio

/datum/outfit/central/mtf/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	if(visualsOnly)
		return

	var/obj/item/radio/headset/R = H.ears
	R.set_frequency(FREQ_CENTCOM)
	R.freqlock = RADIO_FREQENCY_LOCKED
	if(additional_radio)
		R.keyslot2 = new additional_radio()
		R.recalculateChannels()

	var/obj/item/card/id/W = H.wear_id
	if(W)
		W.registered_name = H.real_name
		W.update_label()
		W.update_icon()
	return ..()

/datum/outfit/central/mtf/leader
	name = "Epsilon-11 Team Leader"

	id = /obj/item/card/id/advanced/centcom/ert
	back = /obj/item/mod/control/pre_equipped/responsory/commander
	l_hand = /obj/item/gun/energy/e_gun
	box = /obj/item/storage/box/survival/centcom
	backpack_contents = list(
		/obj/item/melee/baton/security/loaded = 1,
	)
	belt = /obj/item/storage/belt/security/full
	glasses = /obj/item/clothing/glasses/hud/security/sunglasses
	l_pocket = /obj/item/switchblade
	additional_radio = /obj/item/encryptionkey/heads/captain
