#common compulsion ra its average obs score

select `Compulsion Type`, count(`Patient ID`) as patient_count, round(avg(`Y-BOCS Score (Obsessions)`),2) as obs_score
from health.ocd_patient_dataset
group by `Compulsion Type`
Order by patient_count;