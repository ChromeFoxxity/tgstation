
//////////////////////////////////////////////////////////////////////////////////////////
					// AMNESTIC REAGENTS
//////////////////////////////////////////////////////////////////////////////////////

// where all the reagents related to amn- wait.. What am I talking about again?

/datum/reagent/amnestics
	taste_description = "something you already forgot"
	reagent_state = LIQUID

/datum/reagent/amnestics/New()
	. = ..()
	// All medicine metabolizes out slower / stay longer if you have a better metabolism
	chemical_flags |= REAGENT_REVERSE_METABOLISM

/datum/reagent/amnestics/classa
	name = "Class-A Amnestics"
	description = "Class-A, General Retrograde. These amnestics are for erasing recent and/or specific episodic memories."
	color = "#ff0037"
	metabolization_rate = 0.5 * REAGENTS_METABOLISM //higher metabolism, since class-a's are usually given in higher doses
	overdose_threshold = 30
	ph = 10.2
	chemical_flags = REAGENT_CAN_BE_SYNTHESIZED

/datum/reagent/amnestics/classa/on_mob_life(mob/living/carbon/affected_mob, seconds_per_tick, times_fired)
	. = ..()
	switch(current_cycle)
		if(2 to 5)
			affected_mob.adjust_dizzy(3 SECONDS * REM * normalise_creation_purity() * seconds_per_tick)
			affected_mob.adjust_confusion(2 SECONDS * REM * normalise_creation_purity() * seconds_per_tick)
		if(5 to 6)
			to_chat(affected_mob, span_boldwarning("Your memories seem to be slowly fading away, you can't seem to remember what happened for the past few minutes."))
			affected_mob.visible_message(span_warning("[affected_mob] looks confused for a moment."))
		if(6 to INFINITY)
			affected_mob.adjust_drowsiness(4 SECONDS * REM * normalise_creation_purity() * seconds_per_tick)

/datum/reagent/amnestics/classa/overdose_process(mob/living/affected_mob, seconds_per_tick, times_fired)
	. = ..()
	if(affected_mob.adjustOrganLoss(ORGAN_SLOT_BRAIN, 2 * REM * seconds_per_tick * normalise_creation_purity(), required_organ_flag = affected_organ_flags))
		return UPDATE_MOB_HEALTH

/datum/reagent/amnestics/classb
	name = "Class-B Amnestics"
	description = "Class B, Regressive Retrograde. These amnestics are for the incremental erasure of recent memories."
	color = "#00ffff"
	overdose_threshold = 15

/datum/reagent/amnestics/classb/on_mob_life(mob/living/carbon/affected_mob, seconds_per_tick, times_fired)
	. = ..()
	switch(current_cycle)
		if(2 to 5)
			affected_mob.adjust_dizzy(4 SECONDS * REM * normalise_creation_purity() * seconds_per_tick)
			affected_mob.adjust_confusion(3 SECONDS * REM * normalise_creation_purity() * seconds_per_tick)
		if(5 to 6)
			to_chat(affected_mob, span_boldwarning("Your memories seem to be rapidly fading away, you can't seem to recall what happened for the past day."))
			affected_mob.visible_message(span_warning("[affected_mob] looks confused."))
		if(6 to INFINITY)
			affected_mob.adjust_drowsiness(4 SECONDS * REM * normalise_creation_purity() * seconds_per_tick)

/datum/reagent/amnestics/classb/overdose_process(mob/living/affected_mob, seconds_per_tick, times_fired)
	. = ..()
	if(affected_mob.adjustOrganLoss(ORGAN_SLOT_BRAIN, 2 * REM * seconds_per_tick * normalise_creation_purity(), required_organ_flag = affected_organ_flags))
		return UPDATE_MOB_HEALTH

/datum/reagent/amnestics/classc
	name = "Class-C Amnestics"
	description = "Class C, Targeted Retrograde. These amnestics are for the removal of specific memories from any point in the subject's life."
	color = "#fffb00"
	overdose_threshold = 15

/datum/reagent/amnestics/classc/on_mob_life(mob/living/carbon/affected_mob, seconds_per_tick, times_fired)
	. = ..()
	switch(current_cycle)
		if(2 to 5)
			affected_mob.adjust_confusion(2 SECONDS * REM * normalise_creation_purity() * seconds_per_tick)
			affected_mob.adjust_drowsiness(4 SECONDS * REM * normalise_creation_purity() * seconds_per_tick)
		if(5 to 6)
			affected_mob.visible_message(span_warning("[affected_mob] looks deeply confused."))
			to_chat(affected_mob, span_boldwarning("Some of your distant memories seem to be rapidly disappearing, you can't seem to recall what it was, but it feels like your memories are missing parts!"))
		if(6 to 46)
			affected_mob.Sleeping(40 * REM * normalise_creation_purity() * seconds_per_tick)
		if(46 to INFINITY)
			affected_mob.Sleeping(40 * REM * normalise_creation_purity() * seconds_per_tick)

/datum/reagent/amnestics/classc/overdose_process(mob/living/affected_mob, seconds_per_tick, times_fired)
	. = ..()
	if(affected_mob.adjustOrganLoss(ORGAN_SLOT_BRAIN, 3 * REM * seconds_per_tick * normalise_creation_purity(), required_organ_flag = affected_organ_flags))
		return UPDATE_MOB_HEALTH

/datum/reagent/amnestics/classd
	name = "Class-D Amnestics"
	description = "Class D, Progressive Retrograde. These amnestics are for the removal of early memories."
	color = "#1100ff"
	overdose_threshold = 15

/datum/reagent/amnestics/classd/on_mob_life(mob/living/carbon/affected_mob, seconds_per_tick, times_fired)
	. = ..()
	switch(current_cycle)
		if(2 to 5)
			affected_mob.adjust_confusion(2 SECONDS * REM * normalise_creation_purity() * seconds_per_tick)
			affected_mob.adjust_drowsiness(4 SECONDS * REM * normalise_creation_purity() * seconds_per_tick)
		if(5 to 6)
			affected_mob.visible_message(span_warning("[affected_mob] starts to blank out."))
			to_chat(affected_mob, span_boldwarning("The beginning of your life starts to trickle away from you, as you can't remember any of your older memories."))
		if(6 to 46)
			affected_mob.Sleeping(40 * REM * normalise_creation_purity() * seconds_per_tick)
		if(46 to INFINITY)
			affected_mob.Sleeping(40 * REM * normalise_creation_purity() * seconds_per_tick)

/datum/reagent/amnestics/classd/overdose_process(mob/living/affected_mob, seconds_per_tick, times_fired)
	. = ..()
	if(affected_mob.adjustOrganLoss(ORGAN_SLOT_BRAIN, 3 * REM * seconds_per_tick * normalise_creation_purity(), required_organ_flag = affected_organ_flags))
		return UPDATE_MOB_HEALTH

/datum/reagent/amnestics/classe
	name = "Class-E Amnestics"
	description = "Class E, Ennui. These amnestics are to induce psychological complacency with the anomalous."
	taste_description = "something that's exceedingly normal"
	color = "#5c1942"
	overdose_threshold = 15

/datum/reagent/amnestics/classe/on_mob_life(mob/living/carbon/affected_mob, seconds_per_tick, times_fired)
	. = ..()
	switch(current_cycle)
		if(2 to 5)
			affected_mob.adjust_dizzy(3 SECONDS * REM * normalise_creation_purity() * seconds_per_tick)
			affected_mob.adjust_confusion(2 SECONDS * REM * normalise_creation_purity() * seconds_per_tick)
		if(5 to 6)
			affected_mob.visible_message(span_warning("[affected_mob] looks calm and relaxed."))
			to_chat(affected_mob, span_boldwarning("You start to feel.. Normal, as if your mind was cleared of any emotion, you now percieve anything anomalous as something normal."))
		if(6 to INFINITY)
			affected_mob.adjust_dizzy(15 SECONDS * REM * normalise_creation_purity() * seconds_per_tick)
			affected_mob.adjust_confusion(2 SECONDS * REM * normalise_creation_purity() * seconds_per_tick)

/datum/reagent/amnestics/classe/overdose_process(mob/living/affected_mob, seconds_per_tick, times_fired)
	. = ..()
	if(affected_mob.adjustOrganLoss(ORGAN_SLOT_BRAIN, 3 * REM * seconds_per_tick * normalise_creation_purity(), required_organ_flag = affected_organ_flags))
		return UPDATE_MOB_HEALTH

/datum/reagent/amnestics/classf
	name = "Class-F Amnestics"
	description = "Class F, Fugue. These amnestics are for erasing and rebuilding the subject's identity."
	color = "#a0a0a0"
	overdose_threshold = 15

/datum/reagent/amnestics/classf/on_mob_life(mob/living/carbon/affected_mob, seconds_per_tick, times_fired)
	. = ..()
	switch(current_cycle)
		if(2 to 5)
			affected_mob.adjust_confusion(2 SECONDS * REM * normalise_creation_purity() * seconds_per_tick)
			affected_mob.adjust_drowsiness(4 SECONDS * REM * normalise_creation_purity() * seconds_per_tick)
		if(5 to 6)
			affected_mob.visible_message(span_warning("[affected_mob] blanks out, before looking around completely confused."))
			to_chat(affected_mob, span_boldwarning("Your entire life that lead you here suddenly, and quite rapidly depletes from your mind, leaving it an empty void, you don't know who you are, and where you are."))
		if(6 to 46)
			affected_mob.Sleeping(40 * REM * normalise_creation_purity() * seconds_per_tick)
		if(46 to INFINITY)
			affected_mob.Sleeping(40 * REM * normalise_creation_purity() * seconds_per_tick)

/datum/reagent/amnestics/classf/overdose_process(mob/living/affected_mob, seconds_per_tick, times_fired)
	. = ..()
	if(affected_mob.adjustOrganLoss(ORGAN_SLOT_BRAIN, 3 * REM * seconds_per_tick * normalise_creation_purity(), required_organ_flag = affected_organ_flags))
		return UPDATE_MOB_HEALTH

/datum/reagent/amnestics/classg
	name = "Class-G Amnestics"
	description = "Class G, Gaslighting. These amnestics are to cause subjects to doubt the authenticity of their memories."
	color = "#ff00ea"
	overdose_threshold = 15

/datum/reagent/amnestics/classg/on_mob_life(mob/living/carbon/affected_mob, seconds_per_tick, times_fired)
	. = ..()
	switch(current_cycle)
		if(2 to 5)
			affected_mob.adjust_confusion(2 SECONDS * REM * normalise_creation_purity() * seconds_per_tick)
			affected_mob.adjust_drowsiness(4 SECONDS * REM * normalise_creation_purity() * seconds_per_tick)
		if(5 to 6)
			affected_mob.visible_message(span_warning("[affected_mob] squints in distrust."))
			to_chat(affected_mob, span_boldwarning("Your mind suddenly turns around on itself, you suddenly remember events in your life being dreamlike, and imaginative, you remember anomalous events, but you think you just made them up."))
		if(6 to 46)
			affected_mob.Sleeping(40 * REM * normalise_creation_purity() * seconds_per_tick)
		if(46 to INFINITY)
			affected_mob.Sleeping(40 * REM * normalise_creation_purity() * seconds_per_tick)

/datum/reagent/amnestics/classg/overdose_process(mob/living/affected_mob, seconds_per_tick, times_fired)
	. = ..()
	if(affected_mob.adjustOrganLoss(ORGAN_SLOT_BRAIN, 3 * REM * seconds_per_tick * normalise_creation_purity(), required_organ_flag = affected_organ_flags))
		return UPDATE_MOB_HEALTH

/datum/reagent/amnestics/classh
	name = "Class-H Amnestics"
	description = "Class H, Anterograde. These amnestics are for preventing the formation of new memories."
	color = "#00ff22"
	overdose_threshold = 15 //20 units * 80 seconds each = maximum of 26.6 minutes in a single dose.

/datum/reagent/amnestics/classh/on_mob_life(mob/living/carbon/affected_mob, seconds_per_tick, times_fired)
	. = ..()
	switch(current_cycle)
		if(2 to 5)
			affected_mob.adjust_dizzy(3 SECONDS * REM * normalise_creation_purity() * seconds_per_tick)
		if(5 to 6)
			affected_mob.visible_message(span_warning("[affected_mob] starts to blank out."))
			to_chat(affected_mob, span_boldwarning("It feels like a haze falls in your head. You can remember everything just fine, but you'll forget what happens later on."))
		if(6 to 46)
			affected_mob.adjust_confusion(2 SECONDS * REM * normalise_creation_purity() * seconds_per_tick)
		if(46 to 47)
			affected_mob.visible_message(span_warning("[affected_mob] regains focus."))
			to_chat(affected_mob, span_boldwarning("Your mind feels a lot clearer, but you can't remember what you were just doing ever since that haze started."))
		if(47 to INFINITY)
			affected_mob.adjust_drowsiness(4 SECONDS * REM * normalise_creation_purity() * seconds_per_tick)

/datum/reagent/amnestics/classh/overdose_process(mob/living/affected_mob, seconds_per_tick, times_fired)
	. = ..()
	if(affected_mob.adjustOrganLoss(ORGAN_SLOT_BRAIN, 3 * REM * seconds_per_tick * normalise_creation_purity(), required_organ_flag = affected_organ_flags))
		return UPDATE_MOB_HEALTH

/datum/reagent/amnestics/classy
	name = "Class-Y Mnestics" // Yes, this is called Mnestics for a reason.
	description = "Class Y, Mnestics. These mnestics cause temporary full memory recollection."
	taste_description = "something you remember"
	color = "#a79393"
	overdose_threshold = 15 //20 units * 80 seconds each = maximum of 26.6 minutes in a single dose.

/datum/reagent/amnestics/classy/on_mob_life(mob/living/carbon/affected_mob, seconds_per_tick, times_fired)
	. = ..()
	switch(current_cycle)
		if(2 to 5)
			affected_mob.adjust_confusion(2 SECONDS * REM * normalise_creation_purity() * seconds_per_tick)
		if(5 to 6)
			affected_mob.visible_message(span_warning("[affected_mob]'s eyes brighten up."))
			to_chat(affected_mob, span_boldwarning("You begin to remember everything that ever happened in your life, you could recollect even the smallest details."))
		if(6 to INFINITY)
			affected_mob.adjust_dizzy(4 SECONDS * REM * normalise_creation_purity() * seconds_per_tick)

/datum/reagent/amnestics/classy/overdose_process(mob/living/affected_mob, seconds_per_tick, times_fired)
	. = ..()
	if(affected_mob.adjustOrganLoss(ORGAN_SLOT_BRAIN, 3 * REM * seconds_per_tick * normalise_creation_purity(), required_organ_flag = affected_organ_flags))
		return UPDATE_MOB_HEALTH

/datum/reagent/amnestics/classz
	name = "Class-Z Mnestics" // Yes, this is called Mnestics for a reason.
	description = "Class Z, Mnestics. These mnestics render the subject biochemically incapable of forgetting anything."
	taste_description = "something you shouldn't have"
	color = "#442d2d"
	overdose_threshold = 1

/datum/reagent/amnestics/classz/on_mob_life(mob/living/carbon/affected_mob, seconds_per_tick, times_fired)
	. = ..()
	switch(current_cycle)
		if(2 to 5)
			affected_mob.adjust_confusion(2 SECONDS * REM * normalise_creation_purity() * seconds_per_tick)
		if(5 to 6)
			affected_mob.visible_message(span_warning("[affected_mob]'s eyes look clear."))
			to_chat(affected_mob, span_boldwarning("Your mind clears up, you can remember every detail to the smallest speck.. For however long you live.."))
		if(6 to INFINITY)
			affected_mob.adjust_drowsiness(4 SECONDS * REM * normalise_creation_purity() * seconds_per_tick)

/datum/reagent/amnestics/classz/overdose_process(mob/living/affected_mob, seconds_per_tick, times_fired)
	. = ..()
	if(affected_mob.adjustOrganLoss(ORGAN_SLOT_BRAIN, 10 * REM * seconds_per_tick * normalise_creation_purity(), required_organ_flag = affected_organ_flags))
		return UPDATE_MOB_HEALTH
