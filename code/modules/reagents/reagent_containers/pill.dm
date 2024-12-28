/obj/item/reagent_containers/pill
	name = "pill"
	desc = "A tablet or capsule."
	icon = 'icons/obj/medical/chemical.dmi'
	icon_state = "pill"
	inhand_icon_state = "pill"
	worn_icon_state = "nothing"
	lefthand_file = 'icons/mob/inhands/equipment/medical_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/equipment/medical_righthand.dmi'
	has_variable_transfer_amount = FALSE
	volume = 50
	grind_results = list()
	var/apply_type = INGEST
	var/apply_method = "swallow"
	var/rename_with_volume = FALSE
	var/self_delay = 0 //pills are instant, this is because patches inheret their aplication from pills
	var/dissolvable = TRUE

/obj/item/reagent_containers/pill/Initialize(mapload)
	. = ..()
	if(!icon_state)
		icon_state = "pill[rand(1,20)]"
	if(reagents.total_volume && rename_with_volume)
		name += " ([reagents.total_volume]u)"
	if(apply_type == INGEST)
		AddComponent(/datum/component/germ_sensitive, mapload)

/obj/item/reagent_containers/pill/attack(mob/M, mob/user, def_zone)
	if(!canconsume(M, user))
		return FALSE

	if(M == user)
		M.visible_message(span_notice("[user] attempts to [apply_method] [src]."))
		if(self_delay)
			if(!do_after(user, self_delay, M))
				return FALSE
		to_chat(M, span_notice("You [apply_method] [src]."))

	else
		M.visible_message(span_danger("[user] attempts to force [M] to [apply_method] [src]."), \
							span_userdanger("[user] attempts to force you to [apply_method] [src]."))
		if(!do_after(user, CHEM_INTERACT_DELAY(3 SECONDS, user), M))
			return FALSE
		M.visible_message(span_danger("[user] forces [M] to [apply_method] [src]."), \
							span_userdanger("[user] forces you to [apply_method] [src]."))

	return on_consumption(M, user)

///Runs the consumption code, can be overriden for special effects
/obj/item/reagent_containers/pill/proc/on_consumption(mob/consumer, mob/giver)
	if(icon_state == "pill4" && prob(5)) //you take the red pill - you stay in Wonderland, and I show you how deep the rabbit hole goes
		addtimer(CALLBACK(GLOBAL_PROC, GLOBAL_PROC_REF(to_chat), consumer, span_notice("[pick(strings(REDPILL_FILE, "redpill_questions"))]")), 5 SECONDS)
	if(apply_type == INGEST)
		SEND_SIGNAL(consumer, COMSIG_LIVING_PILL_CONSUMED, src, giver)
		SEND_SIGNAL(src, COMSIG_PILL_CONSUMED, eater = consumer, feeder = giver)
	if(reagents.total_volume)
		reagents.trans_to(consumer, reagents.total_volume, transferred_by = giver, methods = apply_type)
	qdel(src)
	return TRUE


/obj/item/reagent_containers/pill/interact_with_atom(atom/target, mob/living/user, list/modifiers)
	if(!dissolvable || !target.is_refillable())
		return NONE
	if(target.is_drainable() && !target.reagents.total_volume)
		to_chat(user, span_warning("[target] is empty! There's nothing to dissolve [src] in."))
		return ITEM_INTERACT_BLOCKING
	if(target.reagents.holder_full())
		to_chat(user, span_warning("[target] is full."))
		return ITEM_INTERACT_BLOCKING

	user.visible_message(span_warning("[user] slips something into [target]!"), span_notice("You dissolve [src] in [target]."), null, 2)
	reagents.trans_to(target, reagents.total_volume, transferred_by = user)
	qdel(src)
	return ITEM_INTERACT_SUCCESS

/*
 * On accidental consumption, consume the pill
 */
/obj/item/reagent_containers/pill/on_accidental_consumption(mob/living/carbon/victim, mob/living/carbon/user, obj/item/source_item, discover_after = FALSE)
	to_chat(victim, span_warning("You swallow something small. [source_item ? "Was that in [source_item]?" : ""]"))
	reagents?.trans_to(victim, reagents.total_volume, transferred_by = user, methods = INGEST)
	qdel(src)
	return discover_after

/obj/item/reagent_containers/pill/tox
	name = "toxins pill"
	desc = "Highly toxic."
	icon_state = "pill5"
	list_reagents = list(/datum/reagent/toxin = 50)
	rename_with_volume = TRUE

/obj/item/reagent_containers/pill/cyanide
	name = "cyanide pill"
	desc = "Don't swallow this."
	icon_state = "pill5"
	list_reagents = list(/datum/reagent/toxin/cyanide = 50)

/obj/item/reagent_containers/pill/adminordrazine
	name = "adminordrazine pill"
	desc = "It's magic. We don't have to explain it."
	icon_state = "pill16"
	list_reagents = list(/datum/reagent/medicine/adminordrazine = 50)

/obj/item/reagent_containers/pill/morphine
	name = "morphine pill"
	desc = "Commonly used to treat insomnia."
	icon_state = "pill8"
	list_reagents = list(/datum/reagent/medicine/morphine = 30)
	rename_with_volume = TRUE

/obj/item/reagent_containers/pill/stimulant
	name = "stimulant pill"
	desc = "Often taken by overworked employees, athletes, and the inebriated. You'll snap to attention immediately!"
	icon_state = "pill19"
	list_reagents = list(/datum/reagent/medicine/ephedrine = 10, /datum/reagent/medicine/antihol = 10, /datum/reagent/consumable/coffee = 30)

/obj/item/reagent_containers/pill/salbutamol
	name = "salbutamol pill"
	desc = "Used to treat oxygen deprivation."
	icon_state = "pill16"
	list_reagents = list(/datum/reagent/medicine/salbutamol = 30)
	rename_with_volume = TRUE

/obj/item/reagent_containers/pill/multiver
	name = "multiver pill"
	desc = "Neutralizes many common toxins and scales with unique medicine in the system. Diluted with granibitaluri."
	icon_state = "pill17"
	list_reagents = list(/datum/reagent/medicine/c2/multiver = 5, /datum/reagent/medicine/granibitaluri = 5)
	rename_with_volume = TRUE

/obj/item/reagent_containers/pill/epinephrine
	name = "epinephrine pill"
	desc = "Used to stabilize patients."
	icon_state = "pill5"
	list_reagents = list(/datum/reagent/medicine/epinephrine = 15)
	rename_with_volume = TRUE

/obj/item/reagent_containers/pill/mannitol
	name = "mannitol pill"
	desc = "Used to treat brain damage."
	icon_state = "pill17"
	list_reagents = list(/datum/reagent/medicine/mannitol = 15)
	rename_with_volume = TRUE

/obj/item/reagent_containers/pill/sansufentanyl
	name = "sansufentanyl pill"
	desc = "Used to treat Hereditary Manifold Sickness. Temporary side effects include - nausea, dizziness, impaired motor coordination."
	icon_state = "pill19"
	list_reagents = list(/datum/reagent/medicine/sansufentanyl = 5)

//Lower quantity mannitol pills (50u pills heal 250 brain damage, 5u pills heal 25)
/obj/item/reagent_containers/pill/mannitol/braintumor
	desc = "Used to treat symptoms for brain tumors."
	list_reagents = list(/datum/reagent/medicine/mannitol = 5)

/obj/item/reagent_containers/pill/mutadone
	name = "mutadone pill"
	desc = "Used to treat genetic damage."
	icon_state = "pill20"
	list_reagents = list(/datum/reagent/medicine/mutadone = 5)
	rename_with_volume = TRUE

/obj/item/reagent_containers/pill/salicylic
	name = "salicylic acid pill"
	desc = "Used to dull pain."
	icon_state = "pill9"
	list_reagents = list(/datum/reagent/medicine/sal_acid = 24)
	rename_with_volume = TRUE

/obj/item/reagent_containers/pill/oxandrolone
	name = "oxandrolone pill"
	desc = "Used to stimulate burn healing."
	icon_state = "pill11"
	list_reagents = list(/datum/reagent/medicine/oxandrolone = 24)
	rename_with_volume = TRUE

/obj/item/reagent_containers/pill/insulin
	name = "insulin pill"
	desc = "Handles hyperglycaemic coma."
	icon_state = "pill18"
	list_reagents = list(/datum/reagent/medicine/insulin = 50)
	rename_with_volume = TRUE

/obj/item/reagent_containers/pill/psicodine
	name = "psicodine pill"
	desc = "Used to treat mental instability and phobias."
	list_reagents = list(/datum/reagent/medicine/psicodine = 10)
	icon_state = "pill22"
	rename_with_volume = TRUE

/obj/item/reagent_containers/pill/penacid
	name = "pentetic acid pill"
	desc = "Used to expunge radiation and toxins."
	list_reagents = list(/datum/reagent/medicine/pen_acid = 10)
	icon_state = "pill22"
	rename_with_volume = TRUE

/obj/item/reagent_containers/pill/neurine
	name = "neurine pill"
	desc = "Used to treat non-severe mental traumas."
	list_reagents = list(/datum/reagent/medicine/neurine = 10)
	icon_state = "pill22"
	rename_with_volume = TRUE

///////////////////////////////////////// this pill is used only in a legion mob drop
/obj/item/reagent_containers/pill/shadowtoxin
	name = "black pill"
	desc = "I wouldn't eat this if I were you."
	icon_state = "pill9"
	color = "#454545"
	list_reagents = list(/datum/reagent/mutationtoxin/shadow = 10)

///////////////////////////////////////// Psychologist inventory pills
/obj/item/reagent_containers/pill/happinesspsych
	name = "mood stabilizer pill"
	desc = "Used to temporarily alleviate anxiety and depression, take only as prescribed."
	list_reagents = list(/datum/reagent/drug/happiness = 5)
	icon_state = "pill_happy"
	rename_with_volume = TRUE

/obj/item/reagent_containers/pill/paxpsych
	name = "pacification pill"
	desc = "Used to temporarily suppress violent, homicidal, or suicidal behavior in patients."
	list_reagents = list(/datum/reagent/pax = 5)
	icon_state = "pill12"
	rename_with_volume = TRUE

/obj/item/reagent_containers/pill/lsdpsych
	name = "antipsychotic pill"
	desc = "Talk to your healthcare provider immediately if hallucinations worsen or new hallucinations emerge."
	list_reagents = list(/datum/reagent/toxin/mindbreaker = 5)
	icon_state = "pill14"
	rename_with_volume = TRUE

//////////////////////////////////////// drugs
/obj/item/reagent_containers/pill/zoom
	name = "yellow pill"
	desc = "A poorly made canary-yellow pill; it is slightly crumbly."
	list_reagents = list(/datum/reagent/medicine/synaptizine = 10, /datum/reagent/drug/nicotine = 10, /datum/reagent/drug/methamphetamine = 1)
	icon_state = "pill7"


/obj/item/reagent_containers/pill/happy
	name = "happy pill"
	desc = "They have little happy faces on them, and they smell like marker pens."
	list_reagents = list(/datum/reagent/consumable/sugar = 10, /datum/reagent/drug/space_drugs = 10)
	icon_state = "pill_happy"


/obj/item/reagent_containers/pill/lsd
	name = "sunshine pill"
	desc = "Engraved on this split-coloured pill is a half-sun, half-moon."
	list_reagents = list(/datum/reagent/drug/mushroomhallucinogen = 15, /datum/reagent/toxin/mindbreaker = 15)
	icon_state = "pill14"


/obj/item/reagent_containers/pill/aranesp
	name = "smooth pill"
	desc = "This blue pill feels slightly moist."
	list_reagents = list(/datum/reagent/drug/aranesp = 10)
	icon_state = "pill3"

///Black and white pills that spawn in maintenance and have random reagent contents
/obj/item/reagent_containers/pill/maintenance
	name = "maintenance pill"
	desc = "A strange pill found in the depths of maintenance."
	icon_state = "pill21"
	var/static/list/names = list("maintenance pill", "floor pill", "mystery pill", "suspicious pill", "strange pill", "lucky pill", "ominous pill", "eerie pill")
	var/static/list/descs = list("Your feeling is telling you no, but...","Drugs are expensive, you can't afford not to eat any pills that you find."\
	, "Surely, there's no way this could go bad.", "Winners don't do dr- oh what the heck!", "Free pills? At no cost, how could I lose?")

/obj/item/reagent_containers/pill/maintenance/Initialize(mapload)
	list_reagents = list(get_random_reagent_id() = rand(10,50)) //list_reagents is called before init, because init generates the reagents using list_reagents
	. = ..()
	name = pick(names)
	if(prob(30))
		desc = pick(descs)

/obj/item/reagent_containers/pill/maintenance/achievement/on_consumption(mob/M, mob/user)
	. = ..()

	M.client?.give_award(/datum/award/score/maintenance_pill, M)

/obj/item/reagent_containers/pill/potassiodide
	name = "potassium iodide pill"
	desc = "Used to reduce low radiation damage very effectively."
	icon_state = "pill11"
	list_reagents = list(/datum/reagent/medicine/potass_iodide = 15)
	rename_with_volume = TRUE

/obj/item/reagent_containers/pill/probital
	name = "Probital pill"
	desc = "Used to treat brute damage of minor and moderate severity.The carving in the pill says 'Eat before ingesting'. Causes fatigue and diluted with granibitaluri."
	icon_state = "pill12"
	list_reagents = list(/datum/reagent/medicine/c2/probital = 5, /datum/reagent/medicine/granibitaluri = 10)
	rename_with_volume = TRUE

/obj/item/reagent_containers/pill/iron
	name = "iron pill"
	desc = "Used to reduce bloodloss slowly."
	icon_state = "pill8"
	list_reagents = list(/datum/reagent/iron = 30)
	rename_with_volume = TRUE

/obj/item/reagent_containers/pill/gravitum
	name = "gravitum pill"
	desc = "Used in weight loss. In a way."
	icon_state = "pill8"
	list_reagents = list(/datum/reagent/gravitum = 5)
	rename_with_volume = TRUE

/obj/item/reagent_containers/pill/ondansetron
	name = "ondansetron pill"
	desc = "Alleviates nausea. May cause drowsiness."
	icon_state = "pill11"
	list_reagents = list(/datum/reagent/medicine/ondansetron = 10)

/obj/item/reagent_containers/pill/classa
	name = "Class-A amnestic pill"
	desc = "Class A amnestics will technically deconsolidate memories at random, they will mostly affect engrams within the 'memory reconsolidation window' of 5-6 hours, as these are the memories that will be at the forefront of the subject's mind. This is especially true for highly unique episodic memories, such as encounters with anomalous phenomena. While these will be most effective after initial exposure, it is possible to re-open a memory reconsolidation window, allowing for amnestics officers to trigger and then erase specific memories long after their initial formation."
	icon_state = "pill_amnestic_a"
	list_reagents = list(/datum/reagent/amnestics/classa = 10)

/obj/item/reagent_containers/pill/classb
	name = "Class-B amnestic pill"
	desc = "Class B amnestics start by deconsolidating the most recently formed memories first, and then working their way backwards. The extent of the memory erasure is dependent on dosage, with a 75 mg dose resulting in approximately 24 hours of memory loss on average. These are ideal for erasing recent memories older than six hours without having to trigger specific memories."
	icon_state = "pill_amnestic_b"
	list_reagents = list(/datum/reagent/amnestics/classb = 15)

/obj/item/reagent_containers/pill/classc
	name = "Class-C amnestic pill"
	desc = "Class C amnestics are used in conjunction with high fidelity neuro-imaging and transcranial stimulation. Neuro-imagers will locate the specific memory engrams within the subject's brain, and upon reaching those specific engrams the amnestics will be activated through the use of precise, non-invasive stimulation, typically ultrasound or magnetic fields."
	icon_state = "pill_amnestic_c"
	list_reagents = list(/datum/reagent/amnestics/classc = 15)

/obj/item/reagent_containers/pill/classd
	name = "Class-D amnestic pill"
	desc = "Class D amnestics are the opposite of Class Bs. They target the oldest memories first and work their way forward, the effects depending on dosage. As this is a fairly niche application, Class D amnestics are rarely used. Though they are, by design, more potent than their counterparts, it still requires an extremely high dosage to expunge a significant portion of a subject's life. As such, their risk of side effects is dangerously high. It should be noted that Class D amnestics only target explicit memories. Implicit memories, namely skills that the individual learned in their youth, will remain unaffected."
	icon_state = "pill_amnestic_d"
	list_reagents = list(/datum/reagent/amnestics/classd = 15)

/obj/item/reagent_containers/pill/classe
	name = "Class-E amnestic pill"
	desc = "Class-E amnestics will target the neural pathways for memories, they do not deconsolidate them. Rather, they merely weaken the pathways while disassociating the memory with any emotions, positive or negative, removing any incentive to think about it and thus allowing it to naturally decay on its own."
	icon_state = "pill_amnestic_e"
	list_reagents = list(/datum/reagent/amnestics/classe = 15)

/obj/item/reagent_containers/pill/classg
	name = "Class-G amnestic pill"
	desc = "Class G amnestics induce derealisation of memories, making them seem fantastic or dreamlike, causing the subject to doubt their authenticity. Standard field Class-G amnestics are formulated to target memories of the anomalous, and are best administered when the subject lacks any tangible evidence of their account and targeting specific memories is infeasible. Class-G amnestics that target non-anomalous memories, however, have been banned by the Ethics Committee."
	icon_state = "pill_amnestic_g"
	list_reagents = list(/datum/reagent/amnestics/classg = 15)

/obj/item/reagent_containers/pill/classh
	name = "Class-H amnestic pill"
	desc = "Class H amnestics prevent the subject from forming new memories, blocking memory consolidation for as long as the agent is in the subject's system. Duration is dependent on dosage, with 75 mg lasting for approximately 24 hours on average."
	icon_state = "pill_amnestic_h"
	list_reagents = list(/datum/reagent/amnestics/classh = 15)

/obj/item/reagent_containers/pill/classy
	name = "Class-Y amnestic pill"
	desc = "Class Y grants the subject perfect recall for any memories gained during its period of effect, and a single dose."
	icon_state = "pill_amnestic_y"
	list_reagents = list(/datum/reagent/amnestics/classy = 15)

/obj/item/reagent_containers/pill/classz
	name = "Class-Z mnestic pill"
	desc = "Class Z renders the subject biochemically incapable of forgetting anything for the remainder of their lives. Class Zs are invariably fatal, with death by seizure typically resulting in a matter of hours."
	icon_state = "pill_amnestic_z"
	list_reagents = list(/datum/reagent/amnestics/classz = 15)

// Pill styles for chem master

/obj/item/reagent_containers/pill/style
	icon_state = "pill0"
/obj/item/reagent_containers/pill/style/purplered
	icon_state = "pill1"
/obj/item/reagent_containers/pill/style/greenwhite
	icon_state = "pill2"
/obj/item/reagent_containers/pill/style/teal
	icon_state = "pill3"
/obj/item/reagent_containers/pill/style/red
	icon_state = "pill4"
/obj/item/reagent_containers/pill/style/redwhite
	icon_state = "pill5"
/obj/item/reagent_containers/pill/style/tealbrown
	icon_state = "pill6"
/obj/item/reagent_containers/pill/style/yellowflat
	icon_state = "pill7"
/obj/item/reagent_containers/pill/style/tealflat
	icon_state = "pill8"
/obj/item/reagent_containers/pill/style/whiteflat
	icon_state = "pill9"
/obj/item/reagent_containers/pill/style/purpleflat
	icon_state = "pill10"
/obj/item/reagent_containers/pill/style/limelat
	icon_state = "pill11"
/obj/item/reagent_containers/pill/style/redflat
	icon_state = "pill12"
/obj/item/reagent_containers/pill/style/greenpurpleflat
	icon_state = "pill13"
/obj/item/reagent_containers/pill/style/yellowpurpleflat
	icon_state = "pill14"
/obj/item/reagent_containers/pill/style/redyellowflat
	icon_state = "pill15"
/obj/item/reagent_containers/pill/style/bluetealflat
	icon_state = "pill16"
/obj/item/reagent_containers/pill/style/greenlimeflat
	icon_state = "pill17"
/obj/item/reagent_containers/pill/style/white
	icon_state = "pill18"
/obj/item/reagent_containers/pill/style/whitered
	icon_state = "pill19"
/obj/item/reagent_containers/pill/style/purpleyellow
	icon_state = "pill20"
/obj/item/reagent_containers/pill/style/blackwhite
	icon_state = "pill21"
/obj/item/reagent_containers/pill/style/limewhite
	icon_state = "pill22"
/obj/item/reagent_containers/pill/style/happy
	icon_state = "pill_happy"
