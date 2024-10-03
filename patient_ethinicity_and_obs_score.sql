select
	Ethnicity,
	count(`Patient ID`) as patient_count,
	avg(`Y-BOCS Score (Obsessions)`) as obs_score
From health.ocd_patient_dataset
Group by Ethnicity
Order by patient_count;