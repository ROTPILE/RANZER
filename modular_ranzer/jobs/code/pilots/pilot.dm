/*
* basically the main character, these are the people that do away missions in their special playtime robots. we're plucky spheroids here,
* so up to four hapless bodybag warmers can suit up and get blown to bits in a round. three are this basic pilot tier and one is the leader
*/

/datum/job/ranzer/pilot
	title = JOB_PILOT
	description = "Skillful vaqueres in the saddle of RANZERs, a cutting edge mechanized combat vehicle."
	department_head = list(JOB_LEAD_PILOT)
	faction = FACTION_STATION
	total_positions = 3
	spawn_positions = 3
	supervisors = "the Lead Pilot and the Chief Operator"
	exp_granted_type = EXP_TYPE_CREW
	config_tag = "PILOT"

	outfit = /datum/outfit/job/pilot
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
		JOB_PILOT,
		"Lancer",
		"Ranzer Cadet",
	)

/datum/outfit/job/pilot
	name = "Ranzer Pilot Uniform"
	jobtype = /datum/job/ranzer/pilot
	id_trim = /datum/id_trim/job/pilot

	uniform = /obj/item/clothing/under/frontier_colonist
	back = /obj/item/storage/backpack/industrial/frontier_colonist
	ears = /obj/item/radio/headset/headset_frontier_colonist/pilot
	shoes = /obj/item/clothing/shoes/jackboots/frontier_colonist
	gloves = /obj/item/clothing/gloves/combat
	belt = /obj/item/storage/belt/utility/frontier_colonist
	r_pocket = /obj/item/modular_computer/pda

	backpack = /obj/item/storage/backpack/security
	satchel = /obj/item/storage/backpack/satchel/sec
	duffelbag = /obj/item/storage/backpack/duffelbag/sec
	messenger = /obj/item/storage/backpack/messenger/sec

/datum/id_trim/job/pilot
	assignment = "Ranzer Pilot"
	trim_icon = 'modular_doppler/modular_jobs/icons/card.dmi'
	trim_state = "trim_pilot"
	subdepartment_color = COLOR_SECURITY_RED
	sechud_icon_state = ""
	minimal_access = list(
		ACCESS_BRIG,
		ACCESS_BRIG_ENTRANCE,
		ACCESS_COURT,
		ACCESS_MECH_SECURITY,
		ACCESS_MINERAL_STOREROOM,
		ACCESS_SECURITY,
		ACCESS_WEAPONS,
		ACCESS_COMMAND,
		)
	extra_access = list(
		ACCESS_DETECTIVE,
		ACCESS_MAINT_TUNNELS,
		ACCESS_MORGUE,
		)
	template_access = list(
		ACCESS_CAPTAIN,
		ACCESS_CHANGE_IDS,
		ACCESS_HOS,
		)
	job = /datum/job/ranzer/pilot
