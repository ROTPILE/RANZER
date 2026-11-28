/*
* this is actually just pilot again but exists as a discrete role for flavor and to clarify the chain of command
*/

/datum/job/ranzer/lead_pilot
	title = JOB_LEAD_PILOT
	description = ""
	department_head = list()
	faction = FACTION_STATION
	total_positions = 1
	spawn_positions = 1
	supervisors = "the Chief Operator"
	exp_granted_type = EXP_TYPE_CREW
	config_tag = "LEAD_PILOT"

	outfit = /datum/outfit/job/lead_pilot
	plasmaman_outfit = /datum/outfit/plasmaman/

	paycheck = PAYCHECK_CREW
	paycheck_department = ACCOUNT_SEC
	bounty_types = CIV_JOB_SEC

	display_order = JOB_DISPLAY_ORDER_SECURITY_OFFICER
	department_for_prefs = /datum/job_department/security
	departments_list = list(
		/datum/job_department/security
	)
	job_flags = STATION_JOB_FLAGS
	alt_titles = list(
		JOB_LEAD_PILOT,
		"Ranzer Ace",
		"Lance Captain",
		"Pilot Banneret",
	)

/datum/outfit/job/lead_pilot
	name = "Ranzer Pilot Uniform"
	jobtype = /datum/job/ranzer/lead_pilot
	id_trim = /datum/id_trim/job/lead_pilot

	uniform = /obj/item/clothing/under/frontier_colonist
	back = /obj/item/storage/backpack/industrial/frontier_colonist
	ears = /obj/item/radio/headset/headset_frontier_colonist/lead_pilot
	shoes = /obj/item/clothing/shoes/jackboots/frontier_colonist
	gloves = /obj/item/clothing/gloves/combat
	belt = /obj/item/storage/belt/utility/frontier_colonist
	r_pocket = /obj/item/modular_computer/pda

	backpack = /obj/item/storage/backpack/security
	satchel = /obj/item/storage/backpack/satchel/sec
	duffelbag = /obj/item/storage/backpack/duffelbag/sec
	messenger = /obj/item/storage/backpack/messenger/sec

/datum/id_trim/job/lead_pilot
	assignment = "Ranzer Pilot"
	trim_icon = 'modular_doppler/modular_jobs/icons/card.dmi'
	trim_state = "trim_pilot"
	department_color = COLOR_COMMAND_BLUE
	subdepartment_color = COLOR_SECURITY_RED
	department_state = "departmenthead"
	sechud_icon_state = SECHUD_HEAD_OF_SECURITY
	extra_access = list(ACCESS_TELEPORTER)
	extra_wildcard_access = list()
	minimal_access = list(
		ACCESS_ALL_PERSONAL_LOCKERS,
		ACCESS_ARMORY,
		ACCESS_AUX_BASE,
		ACCESS_BIT_DEN,
		ACCESS_BRIG,
		ACCESS_BRIG_ENTRANCE,
		ACCESS_CARGO,
		ACCESS_COMMAND,
		ACCESS_CONSTRUCTION,
		ACCESS_COURT,
		ACCESS_DETECTIVE,
		ACCESS_ENGINEERING,
		ACCESS_EVA,
		ACCESS_GATEWAY,
		ACCESS_KEYCARD_AUTH,
		ACCESS_MAINT_TUNNELS,
		ACCESS_MECH_SECURITY,
		ACCESS_MEDICAL,
		ACCESS_MINERAL_STOREROOM,
		ACCESS_MINING,
		ACCESS_MORGUE,
		ACCESS_MORGUE_SECURE,
		ACCESS_RC_ANNOUNCE,
		ACCESS_SCIENCE,
		ACCESS_SECURITY,
		ACCESS_SERVICE,
		ACCESS_SHIPPING,
		ACCESS_WEAPONS,
	)
	minimal_wildcard_access = list(
		ACCESS_HOS,
	)
	template_access = list(
		ACCESS_CAPTAIN,
		ACCESS_CHANGE_IDS,
	)
	job = /datum/job/ranzer/lead_pilot
	big_pointer = TRUE
	pointer_color = COLOR_SECURITY_RED
	honorifics = list("Chief Officer", "Chief", "Officer")
	honorific_positions = HONORIFIC_POSITION_FIRST | HONORIFIC_POSITION_LAST | HONORIFIC_POSITION_FIRST_FULL | HONORIFIC_POSITION_NONE
