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

/obj/structure/closet/secure_closet/scp/combatmedic
	name = "security combat medic's locker"
	icon_state = "lcz"
	icon_door = "lcz_med"
	req_access = list(ACCESS_BRIG)

/obj/structure/closet/secure_closet/scp/combatmedic/PopulateContents()
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

/obj/structure/closet/secure_closet/scp/lieutenant
	name = "security lieutenant's locker"
	icon_state = "lcz"
	icon_door = "lcz_cap"
	req_access = list(ACCESS_BRIG)

/obj/structure/closet/secure_closet/scp/lieutenant/PopulateContents()
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
	icon_state = "sec_dir"
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
	icon_door = "armory_shotgun"
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
	icon_door = "armory_shotgun"
	req_access = list(ACCESS_ARMORY)

/obj/structure/closet/secure_closet/riot_shotgun/PopulateContents()
	..()
	new /obj/item/gun/ballistic/shotgun/mossberg_590(src)
	new /obj/item/ammo_box/packet/shotgun/beanbag(src)
	new /obj/item/ammo_box/packet/shotgun/rubbershot(src)
	new /obj/item/storage/belt/bandolier(src)

/obj/structure/closet/secure_closet/rcu_gear
	name = "riot control unit locker"
	icon_state = "tac"
	req_access = list(ACCESS_ARMORY)

/obj/structure/closet/secure_closet/lethal_shotgun/PopulateContents()
	..()
	new /obj/item/gun/ballistic/shotgun/winchester_sxp(src)
	new /obj/item/ammo_box/packet/shotgun(src)
	new /obj/item/ammo_box/packet/shotgun/buckshot(src)
	new /obj/item/storage/belt/bandolier(src)

/obj/structure/closet/secure_closet/scp/ecl
	name = "ethics committee liaison's locker"
	icon_state = "ecl"
	req_access = list()

/obj/structure/closet/secure_closet/scp/ecl/PopulateContents()
	..()
	new /obj/item/gun/ballistic/shotgun/winchester_sxp(src)

/obj/structure/closet/secure_closet/scp/itdo
	name = "internal tribunal officer's locker"
	icon_state = "itdo"
	req_access = list()

/obj/structure/closet/secure_closet/scp/itdo/PopulateContents()
	..()
	new /obj/item/gun/ballistic/shotgun/winchester_sxp(src)

/obj/structure/closet/secure_closet/scp/gocrep
	name = "global occult coalition representative's locker"
	icon_state = "goc"
	req_access = list()

/obj/structure/closet/secure_closet/scp/gocrep/PopulateContents()
	..()
	new /obj/item/gun/ballistic/shotgun/winchester_sxp(src)
