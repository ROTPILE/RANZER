/*
* as in chief operator, this is the person in charge of the ops for the round.
*/

/datum/job/ranzer/chief_operator
	title = JOB_OPERATOR
	description = "Command your ranzer pilots, broker work for the maniple, and keep everyone alive to do it again tomorrow."
	auto_deadmin_role_flags = DEADMIN_POSITION_HEAD|DEADMIN_POSITION_SECURITY
	department_head = list("Board of Directors")
	faction = FACTION_STATION
	total_positions = 1
	spawn_positions = 1
	supervisors = "the Corp's Board of Directors"
	minimal_player_age = 14
	exp_requirements = 180
	exp_required_type = EXP_TYPE_CREW
	exp_required_type_department = EXP_TYPE_COMMAND
	exp_granted_type = EXP_TYPE_CREW
	config_tag = "OPERATOR"

	outfit = /datum/outfit/job/chief_operator
	plasmaman_outfit = /datum/outfit/plasmaman/

	paycheck = PAYCHECK_COMMAND
	paycheck_department = ACCOUNT_SEC

	mind_traits = list(HEAD_OF_STAFF_MIND_TRAITS, TRAIT_DESENSITIZED)
	liver_traits = list(TRAIT_ROYAL_METABOLISM)

	display_order = JOB_DISPLAY_ORDER_CAPTAIN
	department_for_prefs = /datum/job_department/captain
	departments_list = list(
		/datum/job_department/command,
	)

	job_flags = STATION_JOB_FLAGS | HEAD_OF_STAFF_JOB_FLAGS | JOB_ANTAG_PROTECTED
	rpg_title = "Star Duke"


/datum/job/ranzer/chief_operator/get_captaincy_announcement(mob/living/captain)
	return "Operator [captain.real_name] on deck!"

/datum/job/ranzer/chief_operator/get_radio_information()
	. = ..()
	. += "\nYou have access to all radio channels, but they are not automatically tuned. Check your radio for more information."

/datum/outfit/job/chief_operator
	name = "Chief Operator"
	jobtype = /datum/job/ranzer/chief_operator

	id = /obj/item/card/id/advanced/ranzer_command
	id_trim = /datum/id_trim/job/chief_operator
	uniform = /obj/item/clothing/under/cowl_neck_shirt
	suit = /obj/item/clothing/suit/jacket/officer/doppler/ps_d1
	ears = /obj/item/radio/headset/headset_frontier_colonist/chief_operator
	glasses = /obj/item/clothing/glasses/hud/security/sunglasses
	gloves = /obj/item/clothing/gloves/doppler_cargo/gauntlets
	shoes = /obj/item/clothing/shoes/laceup


	backpack = /obj/item/storage/backpack/security
	satchel = /obj/item/storage/backpack/satchel/sec
	duffelbag = /obj/item/storage/backpack/duffelbag/sec
	messenger = /obj/item/storage/backpack/messenger/sec

	implants = list(/obj/item/implant/mindshield)

/datum/id_trim/job/chief_operator
	assignment = JOB_CAPTAIN
	intern_alt_name = "Captain-in-Training"
	trim_state = "trim_captain"
	department_color = COLOR_COMMAND_BLUE
	subdepartment_color = COLOR_COMMAND_BLUE
	department_state = "departmenthead"
	sechud_icon_state = SECHUD_CAPTAIN
	template_access = list(
		ACCESS_CAPTAIN,
		ACCESS_CHANGE_IDS,
		)
	job = /datum/job/ranzer/chief_operator
	big_pointer = TRUE
	pointer_color = COLOR_COMMAND_BLUE
	honorifics = list("Captain", "Cpt.")
	honorific_positions = HONORIFIC_POSITION_FIRST | HONORIFIC_POSITION_LAST | HONORIFIC_POSITION_FIRST_FULL | HONORIFIC_POSITION_NONE

/datum/id_trim/job/chief_operator/New()
	extra_access |= (SSid_access.get_flag_access_list(ACCESS_FLAG_COMMON) + SSid_access.get_flag_access_list(ACCESS_FLAG_COMMAND))
	extra_wildcard_access |= (SSid_access.get_flag_access_list(ACCESS_FLAG_PRV_COMMAND) + SSid_access.get_flag_access_list(ACCESS_FLAG_CAPTAIN))
	minimal_access |= (SSid_access.get_flag_access_list(ACCESS_FLAG_COMMON) + SSid_access.get_flag_access_list(ACCESS_FLAG_COMMAND))
	minimal_wildcard_access |= (SSid_access.get_flag_access_list(ACCESS_FLAG_PRV_COMMAND) + SSid_access.get_flag_access_list(ACCESS_FLAG_CAPTAIN))

	return ..()
