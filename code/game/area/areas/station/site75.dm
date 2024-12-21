/area/station/site75 // Base area, Do Not Use
	name = "Station Areas"
	icon = 'icons/area/areas_station.dmi'
	icon_state = "station"

/area/station/site75/commons
	name = "Commons"
	icon_state = "commons"
	sound_environment = SOUND_AREA_STANDARD_STATION
	area_flags = BLOBS_ALLOWED | UNIQUE_AREA | CULT_PERMITTED

/area/station/site75/commons/hub
	name = "\improper Central Hub"
	icon_state = "commons"

/area/station/site75/commons/restroom
	name = "\improper Restroom"
	icon_state = "commons"

/area/station/site75/service // Base area, Do Not Use
	name = "Service"
	icon_state = "commons"
	airlock_wires = /datum/wires/airlock/service
	sound_environment = SOUND_AREA_STANDARD_STATION

/area/station/site75/service/plaza
	name = "\improper Service Plaza"
	icon_state = "commons"

/area/station/site75/service/plaza/upper
	name = "\improper Upper Service Plaza"
	icon_state = "commons"

/area/station/site75/service/coffee
	name = "\improper Coffee Shop"
	icon_state = "commons"

/area/station/site75/service/office
	name = "\improper Service Office"
	icon_state = "hall_service"

/area/station/site75/service/kitchen
	name = "\improper Kitchen"
	icon_state = "kitchen"

/area/station/site75/service/kitchen/freezer
	name = "\improper Kitchen Freezer"
	icon_state = "kitchen_cold"
	sound_environment = SOUND_AREA_SMALL_ENCLOSED

/area/station/site75/service/bar
	name = "\improper Bar"
	icon_state = "bar"
	mood_bonus = 5
	mood_message = "I love being in the bar!"
	mood_trait = TRAIT_EXTROVERT
	sound_environment = SOUND_AREA_WOODFLOOR

/area/station/site75/service/bar/backroom
	name = "\improper Bar Backroom"
	icon_state = "bar_backroom"

/area/station/site75/service/library
	name = "\improper Library"
	icon_state = "library"
	mood_bonus = 5
	mood_message = "I love being in the library!"
	mood_trait = TRAIT_INTROVERT
	area_flags = CULT_PERMITTED | BLOBS_ALLOWED | UNIQUE_AREA
	sound_environment = SOUND_AREA_LARGE_SOFTFLOOR

/area/station/site75/service/library/private
	name = "\improper Library Private Study"
	icon_state = "library_gallery_private"

/area/station/site75/service/chapel
	name = "\improper Chapel"
	icon_state = "chapel"
	mood_bonus = 5
	mood_message = "Being in the chapel brings me peace."
	mood_trait = TRAIT_SPIRITUAL
	ambience_index = AMBIENCE_HOLY
	flags_1 = NONE
	sound_environment = SOUND_AREA_LARGE_ENCLOSED

/area/station/site75/service/chapel/office
	name = "\improper Chapel Office"
	icon_state = "chapeloffice"

/area/station/site75/service/greenhouse
	name = "Greenhouse"
	icon_state = "hydro"

/area/station/site75/service/greenhouse/backroom
	name = "Greenhouse Backroom"
	icon_state = "hydro"

/area/station/site75/service/theater
	name = "\improper Theater"
	icon_state = "theatre"
	sound_environment = SOUND_AREA_WOODFLOOR

/area/station/site75/lcz
	name = "\improper Light Containment Zone"
	icon_state = "commons"
	airlock_wires = /datum/wires/airlock/lcz
	sound_environment = SOUND_AREA_STANDARD_STATION

/area/station/site75/logistics // Base area, Do Not Use
	name = "Logistics"
	icon_state = "cargo_bay"
	airlock_wires = /datum/wires/airlock/cargo
	sound_environment = SOUND_AREA_STANDARD_STATION

/area/station/site75/logistics/office
	name = "\improper Logistics office"
	icon_state = "cargo_office"

/area/station/site75/logistics/storage
	name = "\improper Logistics Storage Bay"
	icon_state = "cargo_bay"
	sound_environment = SOUND_AREA_LARGE_ENCLOSED

/area/station/site75/logistics/storage/upper
	name = "\improper Upper Logistics"

/area/station/site75/logistics/disposal
	name = "\improper Logistics Disposal Center"
	icon_state = "cargo_delivery"

/area/station/site75/logistics/refinery
	name = "\improper Logistics Refinery"
	icon_state = "cargo_delivery"

/area/station/site75/logistics/warehouse
	name = "\improper Logistics Warehouse"
	icon_state = "cargo_warehouse"
	sound_environment = SOUND_AREA_LARGE_ENCLOSED

/area/station/site75/logistics/lo
	name = "\improper Logistics Officer's Office"
	icon_state = "qm_office"
	airlock_wires = /datum/wires/airlock/command

/area/station/site75/logistics/vault
	name = "\improper Secure Vault"
	icon_state = "cargo_bay"
	airlock_wires = /datum/wires/airlock/command
