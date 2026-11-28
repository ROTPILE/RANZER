// contains all the special ranzer radios

/obj/item/radio/headset/headset_frontier_colonist/pilot
	keyslot = /obj/item/encryptionkey/headset_pilot

/obj/item/radio/headset/headset_frontier_colonist/lead_pilot
	keyslot = /obj/item/encryptionkey/heads/lead_pilot

/obj/item/radio/headset/headset_frontier_colonist/chief_operator
	keyslot = /obj/item/encryptionkey/heads/chief_operator

/obj/item/radio/headset/headset_frontier_colonist/liason
	keyslot = /obj/item/encryptionkey/heads/liason

/obj/item/radio/headset/headset_frontier_colonist/mechanic
	keyslot = /obj/item/encryptionkey/headset_eng

/obj/item/radio/headset/headset_frontier_colonist/supply
	keyslot = /obj/item/encryptionkey/headset_cargo

/obj/item/radio/headset/headset_frontier_colonist/medical
	keyslot = /obj/item/encryptionkey/headset_trauma

// da comms keys

/obj/item/encryptionkey/headset_pilot
	name = "pilot comms key"
	icon = 'icons/map_icons/items/encryptionkey.dmi'
	icon_state = "/obj/item/encryptionkey/headset_sec"
	post_init_icon_state = "cypherkey_security"
	channels = list(
		RADIO_CHANNEL_SECURITY = 1,
		RADIO_CHANNEL_TRAFFIC_CONTROL = 1,
		)
	greyscale_config = /datum/greyscale_config/encryptionkey_security
	greyscale_colors = "#820a16#280b1a"

/obj/item/encryptionkey/heads/lead_pilot
	name = "lead pilot comms key"
	icon = 'icons/map_icons/items/encryptionkey.dmi'
	icon_state = "/obj/item/encryptionkey/headset_sec"
	post_init_icon_state = "cypherkey_security"
	channels = list(
		RADIO_CHANNEL_SECURITY = 1,
		RADIO_CHANNEL_TRAFFIC_CONTROL = 1,
		RADIO_CHANNEL_COMMAND = 1,
		)
	greyscale_config = /datum/greyscale_config/encryptionkey_security
	greyscale_colors = "#280b1a#820a16"

/obj/item/encryptionkey/helm
	name = "helm comms key"
	icon = 'icons/map_icons/items/encryptionkey.dmi'
	icon_state = "/obj/item/encryptionkey/headset_sec"
	post_init_icon_state = "cypherkey_security"
	channels = list(
		RADIO_CHANNEL_SECURITY = 1,
		RADIO_CHANNEL_TRAFFIC_CONTROL = 1,
		RADIO_CHANNEL_SUPPLY = 1,
		)
	greyscale_config = /datum/greyscale_config/encryptionkey_security
	greyscale_colors = "#820a16#280b1a"

/obj/item/encryptionkey/heads/chief_operator
	name = "chief operator encryption key"
	icon = 'icons/map_icons/items/encryptionkey.dmi'
	icon_state = "/obj/item/encryptionkey/heads/captain"
	post_init_icon_state = "cypherkey_cube"
	channels = list(
		RADIO_CHANNEL_COMMAND = 1,
		RADIO_CHANNEL_SECURITY = 1,
		RADIO_CHANNEL_TRAFFIC_CONTROL = 1,
		RADIO_CHANNEL_ENGINEERING = 0,
		RADIO_CHANNEL_MEDICAL = 0,
		RADIO_CHANNEL_SUPPLY = 0,
		)
	greyscale_config = /datum/greyscale_config/encryptionkey_cube
	greyscale_colors = "#2b2793#dca01b"

/obj/item/encryptionkey/heads/liason
	name = "liason encryption key"
	icon = 'icons/map_icons/items/encryptionkey.dmi'
	icon_state = "/obj/item/encryptionkey/heads/hop"
	post_init_icon_state = "cypherkey_cube"
	channels = list(
		RADIO_CHANNEL_COMMAND = 1,
		RADIO_CHANNEL_TRAFFIC_CONTROL = 1,
		RADIO_CHANNEL_SUPPLY = 0,
		RADIO_CHANNEL_ENGINEERING = 0,
		RADIO_CHANNEL_MEDICAL = 0,
		)
	greyscale_config = /datum/greyscale_config/encryptionkey_cube
	greyscale_colors = "#2b2793#c2c1c9"

/obj/item/encryptionkey/headset_trauma
	name = "trauma team radio encryption key"
	icon = 'icons/map_icons/items/encryptionkey.dmi'
	icon_state = "/obj/item/encryptionkey/headset_med"
	post_init_icon_state = "cypherkey_medical"
	channels = list(
		RADIO_CHANNEL_MEDICAL = 1,
		RADIO_CHANNEL_TRAFFIC_CONTROL = 0,
		)
	greyscale_config = /datum/greyscale_config/encryptionkey_medical
	greyscale_colors = "#ebebeb#69abd1"
