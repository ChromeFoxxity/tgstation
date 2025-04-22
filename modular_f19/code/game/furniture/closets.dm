/obj/structure/closet/secure_closet/scp
	icon = 'icons/obj/storage/scp_closet.dmi'

/obj/structure/closet/secure_closet/scp/guard
	name = "security guard's locker"
	icon_state = "lcz"
	icon_door = "lcz_guard"
	req_access = list(ACCESS_BRIG)

/obj/structure/closet/secure_closet/scp/guard/PopulateContents()
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
	icon_state = "lcz"
	icon_door = "lcz_sgt"
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
	icon_state = "lcz"
	icon_door = "lcz_cap"
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

/obj/structure/closet/secure_closet/lethal_shotgun
	name = "lethal shotgun locker"
	icon_state = "tac"
	req_access = list(ACCESS_ARMORY)

/obj/structure/closet/secure_closet/lethal_shotgun/PopulateContents()
	..()
	new /obj/item/gun/ballistic/shotgun/winchester_sxp(src)
	new /obj/item/ammo_box/packet/shotgun(src)
	new /obj/item/ammo_box/packet/shotgun/buckshot(src)
	new /obj/item/storage/belt/bandolier(src)

/obj/structure/closet/secure_closet/riot_shotgun
	name = "riot shotgun locker"
	icon_state = "tac"
	req_access = list(ACCESS_ARMORY)

/obj/structure/closet/secure_closet/riot_shotgun/PopulateContents()
	..()
	new /obj/item/gun/ballistic/shotgun/mossberg_590(src)
	new /obj/item/ammo_box/packet/shotgun/beanbag(src)
	new /obj/item/ammo_box/packet/shotgun/rubbershot(src)
	new /obj/item/storage/belt/bandolier(src)
