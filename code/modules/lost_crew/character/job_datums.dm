/datum/job/recovered_crew
	policy_override = "Recovered Crew"
	faction = FACTION_STATION

/datum/job/recovered_crew/doctor
	title = JOB_LOSTCREW_MEDICAL
	department_head = list(JOB_MEDICAL_DIRECTOR)
	supervisors = SUPERVISOR_CMO

/datum/job/recovered_crew/engineer
	title = JOB_LOSTCREW_ENGINEER
	department_head = list(JOB_ENGINEERING_DIRECTOR)
	supervisors = SUPERVISOR_CE

/datum/job/recovered_crew/security
	title = JOB_LOSTCREW_SECURITY
	department_head = list(JOB_SECURITY_CAPTAIN)
	supervisors = SUPERVISOR_HOS

/datum/job/recovered_crew/cargo
	title = JOB_LOSTCREW_CARGO
	department_head = list(JOB_LOGISTICS_OFFICER)
	supervisors = SUPERVISOR_QM

/datum/job/recovered_crew/scientist
	title = JOB_LOSTCREW_SCIENCE
	department_head = list(JOB_SCIENTIFIC_DIRECTOR)
	supervisors = SUPERVISOR_RD

/datum/job/recovered_crew/civillian
	title = JOB_LOSTCREW_CIVILLIAN
	department_head = list(JOB_SITE_MANAGER)
	supervisors = SUPERVISOR_HOP
