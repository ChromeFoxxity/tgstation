/datum/job/security_guard
	title = JOB_SECURITY_GUARD
	description = "Protect company assets, follow the Standard Operating \
		Procedure, eat donuts."
	auto_deadmin_role_flags = DEADMIN_POSITION_SECURITY
	department_head = list(JOB_SECURITY_CAPTAIN)
	faction = FACTION_STATION
	total_positions = 12 //Handled in /datum/controller/occupations/proc/setup_officer_positions()
	spawn_positions = 12 //Handled in /datum/controller/occupations/proc/setup_officer_positions()
	supervisors = "the Security Captain, Security Lieutenant, and Security Sergeant"
	minimal_player_age = 7
	exp_requirements = 300
	exp_required_type = EXP_TYPE_CREW
	exp_granted_type = EXP_TYPE_CREW
	config_tag = "SECURITY_GUARD"

	outfit = /datum/outfit/job/security
	plasmaman_outfit = /datum/outfit/plasmaman/security

	paycheck = PAYCHECK_CREW
	paycheck_department = ACCOUNT_SEC

	liver_traits = list(TRAIT_LAW_ENFORCEMENT_METABOLISM)

	display_order = JOB_DISPLAY_ORDER_SECURITY_OFFICER
	bounty_types = CIV_JOB_SEC
	departments_list = list(
		/datum/job_department/security,
		)

	family_heirlooms = list(/obj/item/book/manual/wiki/security_space_law, /obj/item/clothing/head/beret/scp/security)

	mail_goodies = list(
		/obj/item/food/donut/caramel = 10,
		/obj/item/food/donut/matcha = 10,
		/obj/item/food/donut/blumpkin = 5,
		/obj/item/clothing/mask/whistle = 5,
		/obj/item/melee/baton/security/boomerang/loaded = 1
	)
	rpg_title = "Guard"

	job_flags = STATION_JOB_FLAGS

/datum/job/security_officer/proc/announce_latejoin(
	mob/officer,
	department,
	distribution,
)
	var/obj/machinery/announcement_system/announcement_system = get_announcement_system(/datum/aas_config_entry/announce_officer)
	if (isnull(announcement_system))
		return

	announcement_system.announce(/datum/aas_config_entry/announce_officer, list(
		"OFFICER" = officer.real_name,
		"DEPARTMENT" = department,
	), list(RADIO_CHANNEL_SECURITY))

	var/list/targets = list()

	var/list/partners = list()
	for (var/officer_ref in distribution)
		var/mob/partner = locate(officer_ref)
		if (!istype(partner) || distribution[officer_ref] != department)
			continue
		partners += partner.real_name

	if (partners.len)
		for(var/messenger_ref in GLOB.pda_messengers)
			var/datum/computer_file/program/messenger/messenger = GLOB.pda_messengers[messenger_ref]
			if(!(messenger.computer?.saved_identification in partners))
				continue
			targets += messenger

	if (!targets.len)
		return

	// I thought it would be great, if AAS also modifies PDA messages. Especially because it's AASs message.
	var/datum/signal/subspace/messaging/tablet_message/signal = new(announcement_system, list(
		"fakename" = "Security Department Update",
		"fakejob" = "Automated Announcement System",
		"message" = announcement_system.compile_config_message(/datum/aas_config_entry/announce_officer, list(
			"OFFICER" = officer.real_name,
			"DEPARTMENT" = department,
		)),
		"targets" = targets,
		"automated" = TRUE,
	))

	signal.send_to_receivers()

/datum/outfit/job/security
	name = "Security Guard"
	jobtype = /datum/job/security_guard

	id_trim = /datum/id_trim/job/security_officer
	uniform = /obj/item/clothing/under/rank/scp/security
	suit = /obj/item/clothing/suit/armor/vest/scp/security
	suit_store = /obj/item/gun/energy/taser
	backpack_contents = list(
		/obj/item/evidencebag = 1,
		)
	belt = /obj/item/modular_computer/pda/security
	ears = /obj/item/radio/headset/headset_sec/alt
	gloves = /obj/item/clothing/gloves/tackler/scp/tactical
	head = /obj/item/clothing/head/helmet/toggleable/scp/security
	mask = /obj/item/clothing/mask/balaclava
	shoes = /obj/item/clothing/shoes/combat/scp/tactical
	l_pocket = /obj/item/restraints/handcuffs
	r_pocket = /obj/item/melee/baton/telescopic

	backpack = /obj/item/storage/backpack/security
	satchel = /obj/item/storage/backpack/satchel/sec
	duffelbag = /obj/item/storage/backpack/duffelbag/sec
	messenger = /obj/item/storage/backpack/messenger/sec

	box = /obj/item/storage/box/survival/security
	chameleon_extras = list(
		/obj/item/clothing/glasses/hud/security/sunglasses,
		/obj/item/clothing/head/helmet,
		/obj/item/gun/energy/disabler,
		)
		//The helmet is necessary because /obj/item/clothing/head/helmet/sec is overwritten in the chameleon list by the standard helmet, which has the same name and icon state
	implants = list(/obj/item/implant/mindshield)

/datum/outfit/job/security/mod
	name = "Security Officer (MODsuit)"

	suit_store = /obj/item/tank/internals/oxygen
	back = /obj/item/mod/control/pre_equipped/security
	suit = null
	head = null
	mask = /obj/item/clothing/mask/gas/sechailer
	internals_slot = ITEM_SLOT_SUITSTORE
