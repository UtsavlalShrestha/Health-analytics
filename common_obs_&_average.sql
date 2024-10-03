#common obssesion ra its average

Select `Obsession Type`, count(`Patient ID`) as patient_count, round(avg(`Y-BOCS Score (Obsessions)`),2) as obs_score
from health.ocd_patient_dataset
group by `Obsession Type`
Order by patient_count;
