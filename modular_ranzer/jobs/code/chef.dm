/*
* it's the chef
*/

/datum/job/ranzer/chef
	title = JOB_COOK
	description = "A culinary specialist employed under contract to keep the cantina stocked."
	department_head = list()
	faction = FACTION_STATION
	total_positions = 1
	spawn_positions = 1
	supervisors = "the Faculty Liason"
	exp_granted_type = EXP_TYPE_CREW
	config_tag = "CHEF"

	outfit = /datum/outfit/job/chef
	plasmaman_outfit = /datum/outfit/plasmaman

	paycheck = PAYCHECK_CREW
	paycheck_department = ACCOUNT_SRV

	mind_traits = list(TRAIT_DESENSITIZED)
	liver_traits = list(TRAIT_CULINARY_METABOLISM)

	display_order = JOB_DISPLAY_ORDER_COOK
	bounty_types = CIV_JOB_CHEF
	departments_list = list(
		/datum/job_department/service,
		)

	rpg_title = "Tavern Chef"
	job_flags = STATION_JOB_FLAGS
	alt_titles = list(
		JOB_COOK,
		"Chef",
		"Line Cook",
		"Culinary Specialist",
	)

/datum/outfit/job/chef
	name = "Chef"
	jobtype = /datum/job/ranzer/chef

	id_trim = /datum/id_trim/job/cook/chef
	uniform = /obj/item/clothing/under/costume/buttondown/slacks/service
	suit = /obj/item/clothing/suit/toggle/chef
	backpack_contents = list(
		/obj/item/sharpener = 1,
	)
	belt = /obj/item/modular_computer/pda/cook
	ears = /obj/item/radio/headset/headset_frontier_colonist
	head = /obj/item/clothing/head/utility/chefhat

	skillchips = list(/obj/item/skillchip/job/chef)
