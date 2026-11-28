/*
* extract and revive dead ranzer pilots
*/

/datum/job/ranzer/trauma_team
	title = JOB_TRAUMA_TEAM
	description = "Medical professionals trained to extract and treat ranzer pilots in critical condition."
	department_head = list(JOB_LIASON)
	faction = FACTION_STATION
	total_positions = 2
	spawn_positions = 2
	supervisors = "the Faculty Liason and the Chief Operator"
	exp_granted_type = EXP_TYPE_CREW
	config_tag = "TRAUMA"

	outfit = /datum/outfit/job/trauma_team
	plasmaman_outfit = /datum/outfit/plasmaman/paramedic

	paycheck = PAYCHECK_CREW
	paycheck_department = ACCOUNT_MED

	mind_traits = list(MEDICAL_MIND_TRAITS)
	liver_traits = list(TRAIT_MEDICAL_METABOLISM)

	display_order = JOB_DISPLAY_ORDER_PARAMEDIC
	bounty_types = CIV_JOB_MED
	departments_list = list(
		/datum/job_department/medical,
		)

	family_heirlooms = list(
		/obj/item/storage/medkit/ancient/heirloom,
		/obj/item/fishing_hook/rescue,
		)

	mail_goodies = list(
		/obj/item/reagent_containers/hypospray/medipen = 20,
		/obj/item/reagent_containers/hypospray/medipen/oxandrolone = 10,
		/obj/item/reagent_containers/hypospray/medipen/salacid = 10,
		/obj/item/reagent_containers/hypospray/medipen/salbutamol = 10,
		/obj/item/reagent_containers/hypospray/medipen/penacid = 10,
		/obj/item/reagent_containers/hypospray/medipen/survival/luxury = 5,
		/obj/item/storage/box/bandages = 5,
	)
	rpg_title = "Corpse Runner"
	job_flags = STATION_JOB_FLAGS


/datum/outfit/job/trauma_team
	name = "Trauma Medic"
	jobtype = /datum/job/ranzer/trauma_team

	id = /obj/item/card/id/advanced
	id_trim = /datum/id_trim/job/trauma_team
	uniform = /obj/item/clothing/under/rank/medical/paramedic
	suit = /obj/item/clothing/suit/toggle/labcoat/paramedic
	suit_store = /obj/item/flashlight/pen/paramedic
	backpack_contents = list(
		/obj/item/emergency_bed = 1,
		)
	belt = /obj/item/storage/belt/medical/paramedic
	ears = /obj/item/radio/headset/headset_frontier_colonist/medical
	head = /obj/item/clothing/head/soft/paramedic
	gloves = /obj/item/clothing/gloves/latex/nitrile
	shoes = /obj/item/clothing/shoes/workboots/black
	l_pocket = /obj/item/modular_computer/pda/medical/paramedic
	r_pocket = /obj/item/storage/box/bandages

	backpack = /obj/item/storage/backpack/medic
	satchel = /obj/item/storage/backpack/satchel/med
	duffelbag = /obj/item/storage/backpack/duffelbag/med
	messenger = /obj/item/storage/backpack/messenger/med

	box = /obj/item/storage/box/survival/medical
	chameleon_extras = /obj/item/gun/syringe
	pda_slot = ITEM_SLOT_LPOCKET

/datum/id_trim/job/trauma_team
	assignment = JOB_TRAUMA_TEAM
	trim_state = "trim_paramedic"
	department_color = COLOR_MEDICAL_BLUE
	subdepartment_color = COLOR_MEDICAL_BLUE
	sechud_icon_state = SECHUD_PARAMEDIC
	minimal_access = list(
		ACCESS_EXTERNAL_AIRLOCKS,
		ACCESS_MEDICAL,
		ACCESS_MAINT_TUNNELS,
		ACCESS_MORGUE,
		ACCESS_MECH_MEDICAL,
		ACCESS_PARAMEDIC,
		)
	extra_access = list(
		ACCESS_BIT_DEN,
		ACCESS_CARGO,
		ACCESS_CONSTRUCTION,
		ACCESS_HYDROPONICS,
		ACCESS_SURGERY,
		ACCESS_VIROLOGY,
		ACCESS_PHARMACY,
		ACCESS_MINERAL_STOREROOM,
		ACCESS_MINING,
		ACCESS_MINING_STATION,
		ACCESS_SCIENCE,
		ACCESS_SERVICE,
		)
	template_access = list(
		ACCESS_CAPTAIN,
		ACCESS_CHANGE_IDS,
		ACCESS_CMO,
		)
	job = /datum/job/ranzer/trauma_team
	honorifics = list("EMT")
	honorific_positions = HONORIFIC_POSITION_FIRST | HONORIFIC_POSITION_LAST | HONORIFIC_POSITION_FIRST_FULL | HONORIFIC_POSITION_NONE
