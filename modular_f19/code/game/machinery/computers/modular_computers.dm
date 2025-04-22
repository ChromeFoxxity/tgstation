// ===== SECURITY CONSOLE =====
/obj/machinery/modular_computer/preset/security
	name = "security console"
	desc = "A stationary computer. This one comes preloaded with security programs."
	starting_programs = list(
		/datum/computer_file/program/secureye,
		/datum/computer_file/program/records/security,
	)

// ===== MEDICAL CONSOLE =====
/obj/machinery/modular_computer/preset/medical
	name = "medical console"
	desc = "A stationary computer. This one comes preloaded with medical programs."
	starting_programs = list(
		/datum/computer_file/program/radar/lifeline,
		/datum/computer_file/program/records/medical,
	)
