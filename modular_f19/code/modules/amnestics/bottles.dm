/obj/item/storage/pill_bottle/classa
	name = "Class-A Amnestic bottle"
	desc = "The bottle has the label, \"Class A, General Retrograde - For erasing recent and/or specific episodic memories.\"."
	icon_state = "pill_canister_classa"
	icon = 'icons/obj/medical/amnestics.dmi'

/obj/item/storage/pill_bottle/classa/PopulateContents()
	for(var/i in 1 to 5)
		new /obj/item/reagent_containers/applicator/pill/classa(src)

/obj/item/storage/pill_bottle/classb
	name = "Class-B Amnestic bottle"
	desc = "The bottle has the label, \"Class B, Regressive Retrograde - For the incremental erasure of recent memories.\"."
	icon_state = "pill_canister_classb"
	icon = 'icons/obj/medical/amnestics.dmi'

/obj/item/storage/pill_bottle/classb/PopulateContents()
	for(var/i in 1 to 5)
		new /obj/item/reagent_containers/applicator/pill/classb(src)

/obj/item/storage/pill_bottle/classc
	name = "Class-C Amnestic bottle"
	desc = "The bottle has the label, \"Class C, Targeted Retrograde - For the removal of specific memories from any point in the subject's life.\"."
	icon_state = "pill_canister_classc"
	icon = 'icons/obj/medical/amnestics.dmi'

/obj/item/storage/pill_bottle/classc/PopulateContents()
	for(var/i in 1 to 5)
		new /obj/item/reagent_containers/applicator/pill/classc(src)

/obj/item/storage/pill_bottle/classd
	name = "Class-D Amnestic bottle"
	desc = "The bottle has the label, \"Class D, Progressive Retrograde - For the removal of early memories.\"."
	icon_state = "pill_canister_classd"
	icon = 'icons/obj/medical/amnestics.dmi'

/obj/item/storage/pill_bottle/classd/PopulateContents()
	for(var/i in 1 to 5)
		new /obj/item/reagent_containers/applicator/pill/classd(src)

/obj/item/storage/pill_bottle/classe
	name = "Class-E Amnestic bottle"
	desc = "The bottle has the label, \"Class E, Ennui - To induce psychological complacency with the anomalous.\"."
	icon_state = "pill_canister_classe"
	icon = 'icons/obj/medical/amnestics.dmi'

/obj/item/storage/pill_bottle/classe/PopulateContents()
	for(var/i in 1 to 5)
		new /obj/item/reagent_containers/applicator/pill/classe(src)

/obj/item/storage/pill_bottle/classh
	name = "Class-H Amnestic bottle"
	desc = "The bottle has the label, \"Class H, Anterograde - To prevent the formation of new memories.\"."
	icon_state = "pill_canister_classh"
	icon = 'icons/obj/medical/amnestics.dmi'

/obj/item/storage/pill_bottle/classh/PopulateContents()
	for(var/i in 1 to 5)
		new /obj/item/reagent_containers/applicator/pill/classh(src)

/obj/item/storage/pill_bottle/classg
	name = "Class-G Amnestic bottle"
	desc = "The bottle has the label, \"Class G, Gaslighting - To cause subjects to doubt the authenticity of their memories.\"."
	icon_state = "pill_canister_classg"
	icon = 'icons/obj/medical/amnestics.dmi'

/obj/item/storage/pill_bottle/classg/PopulateContents()
	for(var/i in 1 to 5)
		new /obj/item/reagent_containers/applicator/pill/classg(src)

/obj/item/storage/pill_bottle/classy
	name = "Class-Y Amnestic bottle"
	desc = "The bottle has the label, \"Class Y, Mnestics - Grants the subject perfect recall for any memories gained during its period of effect.\"."
	icon_state = "pill_canister_classy"
	icon = 'icons/obj/medical/amnestics.dmi'

/obj/item/storage/pill_bottle/classy/PopulateContents()
	for(var/i in 1 to 5)
		new /obj/item/reagent_containers/applicator/pill/classy(src)

/obj/item/storage/pill_bottle/classz
	name = "Class-Z Amnestic bottle"
	desc = "The bottle has the label, \"Class Z, Mnestics - To make the subject biochemically incapable of forgetting anything for the remainder of their lives.\", it also has an additional warning. \"WARNING!! FATAL!\"."
	icon_state = "pill_canister_classz"
	icon = 'icons/obj/medical/amnestics.dmi'

/obj/item/storage/pill_bottle/classz/PopulateContents()
	for(var/i in 1 to 5)
		new /obj/item/reagent_containers/applicator/pill/classz(src)
