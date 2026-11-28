/*
* handles personnel stuff to reduce the operator's workload
*/

/datum/job/ranzer/liason
	title = JOB_LIASON
	description = "Alter access on ID cards, manage the service department, \
		protect Ian, run the station when the captain dies."
	auto_deadmin_role_flags = DEADMIN_POSITION_HEAD
	department_head = list("Board of Directors")
	head_announce = list(RADIO_CHANNEL_SERVICE)
	faction = FACTION_STATION
	total_positions = 1
	spawn_positions = 1
	supervisors = "the Chief Operator and the Corp's Board of Directors"
	minimal_player_age = 10
	exp_requirements = 180
	exp_required_type = EXP_TYPE_CREW
	exp_required_type_department = EXP_TYPE_SERVICE
	exp_granted_type = EXP_TYPE_CREW
	config_tag = "LIASON"

	outfit = /datum/outfit/job/liason
	plasmaman_outfit = /datum/outfit/plasmaman
	departments_list = list(
		/datum/job_department/service,
		/datum/job_department/command,
		)

	paycheck = PAYCHECK_COMMAND
	paycheck_department = ACCOUNT_SRV
	bounty_types = CIV_JOB_RANDOM

	mind_traits = list(HEAD_OF_STAFF_MIND_TRAITS)
	liver_traits = list(TRAIT_ROYAL_METABOLISM)

	display_order = JOB_DISPLAY_ORDER_HEAD_OF_PERSONNEL

	rpg_title = "Guild Questgiver"
	job_flags = STATION_JOB_FLAGS | HEAD_OF_STAFF_JOB_FLAGS
	alt_titles = list(
		JOB_LIASON,
		"Sophont Resources",
		"Administrator",
	)

/datum/outfit/job/liason
	name = "Faculty Liason"
	jobtype = /datum/job/ranzer/liason

	id = /obj/item/card/id/advanced/platinum
	id_trim = /datum/id_trim/job/liason
	uniform = /obj/item/clothing/under/collared_shirt
	belt = /obj/item/modular_computer/pda/heads/hop
	ears = /obj/item/radio/headset/heads/hop
	shoes = /obj/item/clothing/shoes/laceup
	suit = /obj/item/clothing/suit/jacket/doppler/short_suit_jacket

/datum/id_trim/job/liason
	assignment = JOB_LIASON
	intern_alt_name = "Faculty Liason-in-Training"
	trim_state = "trim_headofpersonnel"
	department_color = COLOR_COMMAND_BLUE
	subdepartment_color = COLOR_SERVICE_LIME
	department_state = "departmenthead"
	sechud_icon_state = SECHUD_HEAD_OF_PERSONNEL
	minimal_access = list(
		ACCESS_AI_UPLOAD,
		ACCESS_ALL_PERSONAL_LOCKERS,
		ACCESS_AUX_BASE,
		ACCESS_BAR,
		ACCESS_BRIG_ENTRANCE,
		ACCESS_CARGO,
		ACCESS_CHAPEL_OFFICE,
		ACCESS_CHANGE_IDS,
		ACCESS_CREMATORIUM,
		ACCESS_COMMAND,
		ACCESS_COURT,
		ACCESS_ENGINEERING,
		ACCESS_EVA,
		ACCESS_GATEWAY,
		ACCESS_HYDROPONICS,
		ACCESS_JANITOR,
		ACCESS_KEYCARD_AUTH,
		ACCESS_KITCHEN,
		ACCESS_LAWYER,
		ACCESS_LIBRARY,
		ACCESS_MAINT_TUNNELS,
		ACCESS_MEDICAL,
		ACCESS_MINERAL_STOREROOM,
		ACCESS_MORGUE,
		ACCESS_MORGUE_SECURE,
		ACCESS_PSYCHOLOGY,
		ACCESS_RC_ANNOUNCE,
		ACCESS_SCIENCE,
		ACCESS_SERVICE,
		ACCESS_TELEPORTER,
		ACCESS_THEATRE,
		ACCESS_WEAPONS,
	)
	minimal_wildcard_access = list(
		ACCESS_HOP,
	)
	extra_access = list()
	extra_wildcard_access = list()
	template_access = list(
		ACCESS_CAPTAIN,
		ACCESS_CHANGE_IDS,
	)
	job = /datum/job/head_of_personnel
	big_pointer = TRUE
	pointer_color = COLOR_SERVICE_LIME
