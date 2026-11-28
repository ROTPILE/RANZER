/*
* a discrete role for actually moving the dropship or cargo freighter. mostly a flavor role but in theory a skilled player could do
* hot drops and extracts, plus it removes some of the workload from the operator.
*/

/datum/job/ranzer/helm
	title = JOB_HELM
	description = "Generalist shuttle operators responsible for operating the dropships and cargo freighters."
	department_head = list(JOB_OPERATOR)
	faction = FACTION_STATION
	total_positions = 2
	spawn_positions = 2
	supervisors = "the Chief Operator and the Faculty Liason"
	exp_granted_type = EXP_TYPE_CREW
	config_tag = "HELM"

	outfit = /datum/outfit/job/helm
	plasmaman_outfit = /datum/outfit/plasmaman

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
		JOB_HELM,
		"Shuttle Pilot",
		"Dropship Pilot",
		"Freighter Pilot",
	)

/datum/outfit/job/helm
	name = "Helm Uniform"
	jobtype = /datum/job/ranzer/helm
	id_trim = /datum/id_trim/job/helm

	uniform = /obj/item/clothing/under/frontier_colonist
	back = /obj/item/storage/backpack/industrial/frontier_colonist
	ears = /obj/item/radio/headset/headset_frontier_colonist/pilot
	shoes = /obj/item/clothing/shoes/jackboots/frontier_colonist
	gloves = /obj/item/clothing/gloves/combat
	belt = /obj/item/storage/belt/utility/frontier_colonist
	r_pocket = /obj/item/modular_computer/pda

/datum/id_trim/job/helm
	assignment = "Helm"
	trim_icon = 'modular_ranzer/items/icons/card.dmi'
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
	job = /datum/job/ranzer/helm
