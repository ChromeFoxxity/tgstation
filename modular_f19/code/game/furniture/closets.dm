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

/obj/structure/closet/secure_closet/scp/itdo
	name = "internal tribunal officer's locker"
	icon_state = "itdo"
	req_access = list()

/obj/structure/closet/secure_closet/scp/gocrep
	name = "global occult coalition representative's locker"
	icon_state = "goc"
	req_access = list()

/obj/structure/closet/secure_closet/scp/uiurep
	name = "unusual incidents unit representative's locker"
	icon_state = "uiu"
	req_access = list()

/obj/structure/closet/secure_closet/scp/is
	name = "intake specialist's locker"
	icon_state = "is"
	req_access = list()

/obj/structure/closet/secure_closet/scp/science_director
	name = "scientific director's locker"
	icon_state = "scd_dir"
	req_access = list()

/obj/structure/closet/secure_closet/scp/science_director/PopulateContents()
	..()

	new /obj/item/clothing/suit/bio_suit/scientist(src)
	new /obj/item/clothing/head/bio_hood/scientist(src)
	new /obj/item/storage/bag/garment/research_director(src)
	new /obj/item/computer_disk/command/rd(src)
	new /obj/item/radio/headset/heads/rd(src)
	new /obj/item/megaphone/command(src)
	new /obj/item/storage/lockbox/medal/sci(src)
	new /obj/item/assembly/flash/handheld(src)
	new /obj/item/door_remote/research_director(src)
	new /obj/item/circuitboard/machine/techfab/department/science(src)
	new /obj/item/storage/photo_album/rd(src)
	new /obj/item/storage/box/skillchips/science(src)

/obj/structure/closet/secure_closet/scp/science_director/populate_contents_immediate()
	. = ..()

	// Traitor steal objectives
	new /obj/item/clothing/suit/armor/reactive/teleport(src)
	new /obj/item/laser_pointer(src)

/obj/structure/closet/secure_closet/scp/logistics_officer
	name = "logistics officer's locker"
	req_access = list()
	icon_state = "lo"

/obj/structure/closet/secure_closet/scp/logistics_officer/PopulateContents()
	..()
	new /obj/item/storage/lockbox/medal/cargo(src)
	new /obj/item/radio/weather_monitor (src)
	new /obj/item/radio/headset/heads/qm(src)
	new /obj/item/megaphone/cargo(src)
	new /obj/item/tank/internals/emergency_oxygen(src)
	new /obj/item/universal_scanner(src)
	new /obj/item/door_remote/quartermaster(src)
	new /obj/item/circuitboard/machine/techfab/department/cargo(src)
	new /obj/item/storage/photo_album/qm(src)
	new /obj/item/circuitboard/machine/ore_silo(src)
	new /obj/item/storage/bag/garment/quartermaster(src)

/obj/structure/closet/secure_closet/scp/logistics_officer/populate_contents_immediate()
	. = ..()

	// Traitor steal objective
	new /obj/item/card/id/departmental_budget/car(src)
