/obj/structure/closet/secure_closet/scp/agent
	name = "security agent's locker"
	icon_state = "agent"
	req_access = list(ACCESS_BRIG)

/obj/structure/closet/secure_closet/scp/agent/PopulateContents()
	..()
	new /obj/item/clothing/suit/armor/vest/alt/sec(src)
	new /obj/item/clothing/head/helmet/sec(src)
	new /obj/item/radio/headset/headset_sec(src)
	new /obj/item/radio/headset/headset_sec/alt(src)
	new /obj/item/clothing/glasses/hud/security/sunglasses(src)
	new /obj/item/flashlight/seclite(src)
	new /obj/item/clothing/gloves/tackler(src)

/obj/structure/closet/secure_closet/scp/sergeant
	name = "security sergeant's locker"
	icon_state = "sgt"
	req_access = list(ACCESS_BRIG)

/obj/structure/closet/secure_closet/scp/sergeant/PopulateContents()
	..()
	new /obj/item/clothing/suit/armor/vest/alt/sec(src)
	new /obj/item/clothing/head/helmet/sec(src)
	new /obj/item/radio/headset/headset_sec(src)
	new /obj/item/radio/headset/headset_sec/alt(src)
	new /obj/item/clothing/glasses/hud/security/sunglasses(src)
	new /obj/item/flashlight/seclite(src)
	new /obj/item/clothing/gloves/tackler(src)

/obj/structure/closet/secure_closet/scp/captain
	name = "security captain's locker"
	icon_state = "cpt"
	req_access = list(ACCESS_BRIG)

/obj/structure/closet/secure_closet/scp/captain/PopulateContents()
	..()
	new /obj/item/clothing/suit/armor/vest/alt/sec(src)
	new /obj/item/clothing/head/helmet/sec(src)
	new /obj/item/radio/headset/headset_sec(src)
	new /obj/item/radio/headset/headset_sec/alt(src)
	new /obj/item/clothing/glasses/hud/security/sunglasses(src)
	new /obj/item/flashlight/seclite(src)
	new /obj/item/clothing/gloves/tackler(src)
