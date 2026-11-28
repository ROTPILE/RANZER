/*
* it's the quartermaster. this is a slightly different job here because we don't farm our own materials with mining, but allocate
* our capital resources to purchase materials, equipment, etc
*/

/datum/job/ranzer/manciple
	title = JOB_MANCIPLE
	description = "The premier specialist in turning budgetary finances into hard materiel."
	department_head = list(JOB_OPERATOR, JOB_LIASON)
	faction = FACTION_STATION
	total_positions = 1
	spawn_positions = 1
	minimal_player_age = 7
	supervisors = "the Faculty Liason and the Chief Operator"
	exp_required_type_department = EXP_TYPE_SUPPLY
	exp_granted_type = EXP_TYPE_CREW
	config_tag = "MANCIPLE"

	outfit = /datum/outfit/job/manciple
	plasmaman_outfit = /datum/outfit/plasmaman

	paycheck = PAYCHECK_COMMAND
	paycheck_department = ACCOUNT_CAR

	display_order = JOB_DISPLAY_ORDER_QUARTERMASTER
	bounty_types = CIV_JOB_RANDOM
	departments_list = list(
		/datum/job_department/cargo,
		)
	rpg_title = "Steward"
	job_flags = STATION_JOB_FLAGS

/datum/outfit/job/manciple
	name = "Manciple"
	jobtype = /datum/job/ranzer/manciple
	backpack_contents = list(
	)
	id_trim = /datum/id_trim/job/quartermaster
	id = /obj/item/card/id/advanced/silver
	uniform = /obj/item/clothing/under/collared_shirt
	belt = /obj/item/modular_computer/pda/heads/quartermaster
	suit = /obj/item/clothing/suit/jacket/quartermaster
	ears = /obj/item/radio/headset/headset_frontier_colonist/supply
	glasses = /obj/item/clothing/glasses/sunglasses
	shoes = /obj/item/clothing/shoes/laceup
	l_hand = /obj/item/clipboard

	chameleon_extras = /obj/item/stamp/head/qm

/datum/id_trim/job/manciple
	assignment = JOB_MANCIPLE
	intern_alt_name = "Manciple-in-Training"
	trim_state = "trim_cargotechnician"
	department_color = COLOR_COMMAND_BLUE
	subdepartment_color = COLOR_CARGO_BROWN
	department_state = "departmenthead"
	sechud_icon_state = SECHUD_QUARTERMASTER
	minimal_access = list(
		ACCESS_AUX_BASE,
		ACCESS_BIT_DEN,
		ACCESS_CARGO,
		ACCESS_MAINT_TUNNELS,
		ACCESS_MECH_MINING,
		ACCESS_MINING_STATION,
		ACCESS_MINERAL_STOREROOM,
		ACCESS_MINING,
		ACCESS_QM,
		ACCESS_RC_ANNOUNCE,
		ACCESS_SHIPPING,
		ACCESS_VAULT,
		ACCESS_KEYCARD_AUTH,
		ACCESS_COMMAND,
		ACCESS_EVA,
		ACCESS_BRIG_ENTRANCE,
		ACCESS_WEAPONS,
		)
	extra_access = list(
		ACCESS_TELEPORTER,
		)
	minimal_wildcard_access = list(
		ACCESS_QM,
	)
	template_access = list(
		ACCESS_CAPTAIN,
		ACCESS_CHANGE_IDS,
	)
	job = /datum/job/ranzer/manciple
	big_pointer = TRUE
	pointer_color = COLOR_CARGO_BROWN
	honorifics = list("Manager")
	honorific_positions = HONORIFIC_POSITION_FIRST | HONORIFIC_POSITION_LAST | HONORIFIC_POSITION_FIRST_FULL | HONORIFIC_POSITION_NONE
