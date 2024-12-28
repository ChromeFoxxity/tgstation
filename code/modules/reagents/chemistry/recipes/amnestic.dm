/datum/chemical_reaction/amnestics/classa
	results = list(/datum/reagent/amnestics/classa = 3)
	required_reagents = list(/datum/reagent/toxin/mindbreaker = 1, /datum/reagent/medicine/mannitol = 1, /datum/reagent/impedrezene = 1)
	reaction_tags = REACTION_TAG_MODERATE | REACTION_TAG_DRUG | REACTION_TAG_OTHER

/datum/chemical_reaction/amnestics/classb
	results = list(/datum/reagent/amnestics/classb = 3)
	required_reagents = list(/datum/reagent/amnestics/classa = 1, /datum/reagent/uranium/radium = 1, /datum/reagent/toxin/mindbreaker = 1)
	reaction_tags = REACTION_TAG_MODERATE | REACTION_TAG_DRUG | REACTION_TAG_OTHER

/datum/chemical_reaction/amnestics/classc
	results = list(/datum/reagent/amnestics/classc = 3)
	required_reagents = list(/datum/reagent/amnestics/classb = 1, /datum/reagent/medicine/mannitol = 1, /datum/reagent/toxin/mindbreaker = 1)
	reaction_tags = REACTION_TAG_MODERATE | REACTION_TAG_DRUG | REACTION_TAG_OTHER
