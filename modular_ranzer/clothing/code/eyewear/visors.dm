// pilot flavor stealHUD without further mechanical purpose for now

/obj/item/clothing/glasses/neurovisor
	name = "\improper 'Betrachter' neural interface visor"
	desc = ""
	icon = 'icons/map_icons/clothing/mask.dmi'
	icon_state = "/obj/item/clothing/glasses/neurovisor"
	worn_icon = 'modular_ranzer/clothing/icons/mob/eyewear/visors.dmi'
	post_init_icon_state = "neural_visor"
	supported_bodyshapes = null
	bodyshape_icon_files = null
	greyscale_config = /datum/greyscale_config/neural_visor
	greyscale_config_worn = /datum/greyscale_config/neural_visor/worn
	greyscale_colors = "#cfd1d4#D5D5B9"
	flags_1 = IS_PLAYER_COLORABLE_1


/obj/item/clothing/glasses/neurovisor/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/glasses_stats_thief)
