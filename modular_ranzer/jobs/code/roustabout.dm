/*
* like the vanilla doppler role, they fill in where needed and keep the roles list tidy. we reproduce the doppler job
* because /datum/job/ranzer is what we populate the roles list from. outfits, trim, etc don't require duplication
*/

/*/datum/job/ranzer/roustabout
	title = JOB_ROUSTABOUT
	description = "Work for anyone who asks you, give your position a bad rep starting fights in the bar, and find an in with crew higher \
		up on the ladder than you for a better position."
	faction = FACTION_STATION
	total_positions = 10
	spawn_positions = 10
	supervisors = "anyone who needs you"
	config_tag = "ROUSTABOUT"
	paycheck = PAYCHECK_CREW
	paycheck_department = ACCOUNT_CIV
	outfit = /datum/outfit/job/roustabout
	plasmaman_outfit = /datum/outfit/plasmaman
	display_order = JOB_DISPLAY_ORDER_ROUSTABOUT
	bounty_types = CIV_JOB_BASIC
	allow_bureaucratic_error = FALSE
	department_for_prefs = /datum/job_department/assistant
	family_heirlooms = list(
		/obj/item/crowbar/red/caravan,
		/obj/item/wrench/caravan,
		/obj/item/tethergun,
	)
	mail_goodies = list(
		/obj/effect/spawner/random/entertainment/cigarette_pack = 3,
		/obj/item/stack/spacecash/c100 = 3,
		/obj/item/trench_tool = 2,
		/obj/item/clothing/gloves/color/yellow = 2,
		/obj/item/crowbar/red/caravan = 2,
		/obj/item/wrench/caravan = 2,
		/obj/item/tethergun = 2,
	)
	job_flags = STATION_JOB_FLAGS
	rpg_title = "Laborer"
*/
