/obj/item/clothing/head/helmet/neurohelmet
	name = ""
	desc = "Standard Security gear. Protects the head from impacts."
	icon = 'icons/obj/clothing/head/helmet.dmi'
	worn_icon = 'icons/mob/clothing/head/helmet.dmi'
	icon_state = "helmet"
	base_icon_state = "helmet"
	inhand_icon_state = "helmet"
	armor_type = /datum/armor/head_helmet
	cold_protection = HEAD
	min_cold_protection_temperature = HELMET_MIN_TEMP_PROTECT
	heat_protection = HEAD
	max_heat_protection_temperature = HELMET_MAX_TEMP_PROTECT
	strip_delay = 6 SECONDS
	clothing_flags = SNUG_FIT | STACKABLE_HELMET_EXEMPT
	flags_cover = HEADCOVERSEYES|EARS_COVERED
	flags_inv = HIDEHAIR
	dog_fashion = /datum/dog_fashion/head/helmet
