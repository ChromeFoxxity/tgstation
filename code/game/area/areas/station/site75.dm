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

/area/station/site75/commons/medsci
	name = "\improper Med-Sci Hallway"
	icon_state = "commons"

/area/station/site75/commons/office
	name = "\improper Office"
	icon_state = "commons"

/area/station/site75/commons/entrance
	name = "\improper Entrance Hallway"
	icon_state = "commons"

/area/station/site75/commons/restroom
	name = "\improper Restroom"
	icon_state = "commons"

/area/station/site75/commons/tram
	name = "\improper Central Hub Tram Station"
	icon_state = "commons"

/area/station/site75/security // Base area, Do Not Use
	name = "Security"
	icon_state = "security"
	ambience_index = AMBIENCE_DANGER
	airlock_wires = /datum/wires/airlock/security
	sound_environment = SOUND_AREA_STANDARD_STATION

/area/station/site75/security/lobby
	name = "\improper Security Center Lobby"
	icon_state = "security"

/area/station/site75/security/office
	name = "\improper Security Center Conference Room"
	icon_state = "security"

/area/station/site75/security/hallway
	name = "\improper Security Center Hallway"
	icon_state = "security"

/area/station/site75/security/sergeant1
	name = "\improper Security Sergeant Office #1"
	icon_state = "security"

/area/station/site75/security/sergeant2
	name = "\improper Security Sergeant Office #2"
	icon_state = "security"

/area/station/site75/security/lockers
	name = "\improper Security Center Locker Room"
	icon_state = "securitylockerroom"

/area/station/site75/security/infirmary
	name = "\improper Security Center Infirmary"
	icon_state = "security_medical"

/area/station/site75/security/termination
	name = "\improper Security Center Termination Room"
	icon_state = "holding_cell"

/area/station/site75/security/cells
	name = "\improper Security Center Containment Cells"
	icon_state = "holding_cell"

/area/station/site75/security/armory
	name = "\improper Security Center Armory"
	icon_state = "armory"

/area/station/site75/security/armory/secure
	name = "\improper Security Center Secure Armory"
	icon_state = "armory"

/area/station/site75/security/captain
	name = "\improper Security Captain's Office"
	icon_state = "hos_office"

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

/area/station/site75/medical // Base area, Do Not Use
	name = "Medical"
	icon_state = "medbay"
	ambience_index = AMBIENCE_MEDICAL
	airlock_wires = /datum/wires/airlock/medbay
	sound_environment = SOUND_AREA_STANDARD_STATION
	min_ambience_cooldown = 90 SECONDS
	max_ambience_cooldown = 180 SECONDS

/area/station/site75/medical/lobby
	name = "\improper Medical Lobby"
	icon_state = "med_lobby"

/area/station/site75/lcz // Base area, Do Not Use
	name = "\improper Light Containment Zone"
	icon_state = "primaryhall"
	airlock_wires = /datum/wires/airlock/lcz
	sound_environment = SOUND_AREA_STANDARD_STATION

/area/station/site75/lcz/hallway
	name = "LCZ Corridors"
	icon_state = "primaryhall"

/area/station/site75/lcz/hallway/entrance
	name = "LCZ Entrance Hall"
	icon_state = "primaryhall"

/area/station/site75/lcz/security // Base area, Do Not Use
	name = "LCZ Security"
	icon_state = "security"
	ambience_index = AMBIENCE_DANGER
	airlock_wires = /datum/wires/airlock/security
	sound_environment = SOUND_AREA_STANDARD_STATION

/area/station/site75/lcz/security/center
	name = "LCZ Security Center"
	icon_state = "brig"

/area/station/site75/lcz/security/check
	name = "LCZ Security Checkpoint"
	icon_state = "security"

/area/station/site75/lcz/security/check
	name = "LCZ Security Checkpoint"
	icon_state = "security"

/area/station/site75/lcz/security/office
	name = "LCZ Security Office"
	icon_state = "securitylockerroom"

/area/station/site75/hcz
	name = "\improper Heavy Containment Zone"
	icon_state = "primaryhall"
	airlock_wires = /datum/wires/airlock/hcz
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

/area/station/site75/engineering // Base area, Do Not Use
	name = "Engineering"
	icon_state = "engie"
	ambience_index = AMBIENCE_ENGI
	airlock_wires = /datum/wires/airlock/engineering
	sound_environment = SOUND_AREA_LARGE_ENCLOSED

/area/station/site75/engineering/office
	name = "\improper Engineering Office"
	icon_state = "engine"

/area/station/site75/engineering/hub
	name = "\improper Engineering Hub"
	icon_state = "engine_hallway"

/area/station/site75/engineering/engine_smes
	name = "\improper Engineering Power Storage"
	icon_state = "engine_smes"

/area/station/site75/engineering/supermatter
	name = "\improper Supermatter Engine"
	icon_state = "engine_sm"
	area_flags = BLOBS_ALLOWED | UNIQUE_AREA | CULT_PERMITTED
	sound_environment = SOUND_AREA_SMALL_ENCLOSED

/area/station/site75/engineering/supermatter/room
	name = "\improper Supermatter Engine Room"
	icon_state = "engine_sm_room"
	sound_environment = SOUND_AREA_LARGE_ENCLOSED

/area/station/site75/engineering/break_room
	name = "\improper Engineering Foyer"
	icon_state = "engine_break"
	sound_environment = SOUND_AREA_SMALL_ENCLOSED

/area/station/site75/engineering/storage
	name = "Engineering Storage"
	icon_state = "engine_storage"
	sound_environment = SOUND_AREA_SMALL_ENCLOSED

/area/station/site75/engineering/atmos
	name = "\improper Facility Atmospherics"
	icon_state = "atmos"

/area/station/site75/engineering/atmos/office
	name = "\improper Facility Atmospherics Monitoring"
	icon_state = "atmos_office"

/area/station/site75/engineering/atmos/storage
	name = "\improper Facility Atmospherics Storage"
	icon_state = "atmos_storage"

/area/station/site75/engineering/ed
	name = "\improper Engineering Director's Office"
	icon_state = "ce_office"
	airlock_wires = /datum/wires/airlock/command
