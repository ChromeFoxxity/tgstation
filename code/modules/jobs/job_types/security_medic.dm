/datum/job/security_medic
	title = JOB_SECURITY_MEDIC
	description = "Be the field medic in the frontlines of combat against \
		D-Class Riots, and infiltration defenses."
	auto_deadmin_role_flags = DEADMIN_POSITION_SECURITY
	department_head = list(JOB_HEAD_OF_SECURITY)
	faction = FACTION_STATION
	total_positions = 2
	spawn_positions = 2
	supervisors = "the Security Director and Security Captain"
	minimal_player_age = 7
	exp_requirements = 300
	exp_required_type = EXP_TYPE_CREW
	exp_granted_type = EXP_TYPE_CREW
	config_tag = "SERGEANT"

	outfit = /datum/outfit/job/security_medic
	plasmaman_outfit = /datum/outfit/plasmaman/warden

	paycheck = PAYCHECK_CREW
	paycheck_department = ACCOUNT_SEC

	liver_traits = list(TRAIT_LAW_ENFORCEMENT_METABOLISM, TRAIT_PRETENDER_ROYAL_METABOLISM)

	display_order = JOB_DISPLAY_ORDER_SERGEANT
	bounty_types = CIV_JOB_SEC
	departments_list = list(
		/datum/job_department/security,
		)

	family_heirlooms = list(/obj/item/book/manual/wiki/security_space_law)

	mail_goodies = list(
		/obj/item/food/donut/caramel = 10,
		/obj/item/food/donut/matcha = 10,
		/obj/item/food/donut/blumpkin = 5,
		/obj/item/clothing/mask/whistle = 5,
		/obj/item/melee/baton/security/boomerang/loaded = 1
	)
	rpg_title = "Jailor"
	job_flags = STATION_JOB_FLAGS | JOB_BOLD_SELECT_TEXT

/datum/outfit/job/security_medic
	name = "Security Combat Medic"
	jobtype = /datum/job/security_medic

	id_trim = /datum/id_trim/job/warden
	uniform = /obj/item/clothing/under/rank/scp/security/medic
	suit = /obj/item/clothing/suit/armor/vest/scp/security/medic
	backpack_contents = list(
		/obj/item/evidencebag = 1,
		)
	belt = /obj/item/storage/belt/security/full
	ears = /obj/item/radio/headset/headset_sec/alt
	glasses = /obj/item/clothing/glasses/hud/health/sunglasses
	gloves = /obj/item/clothing/gloves/color/scp/tactical/nitrile
	head = /obj/item/clothing/head/helmet/toggleable/scp/security/medic
	mask = /obj/item/clothing/mask/balaclava
	shoes = /obj/item/clothing/shoes/combat/scp/tactical
	l_pocket = /obj/item/modular_computer/pda/warden
	r_pocket = /obj/item/melee/baton/telescopic

	backpack = /obj/item/storage/backpack/security
	satchel = /obj/item/storage/backpack/satchel/sec
	duffelbag = /obj/item/storage/backpack/duffelbag/sec
	messenger = /obj/item/storage/backpack/messenger/sec

	box = /obj/item/storage/box/survival/security
	implants = list(/obj/item/implant/mindshield)
