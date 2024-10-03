# count of male & fmale having OCD on percent basis

with data as (
select Gender, COUNT('Patient ID') as patient_count,
AVG(`Y-BOCS Score (Obsessions)`) as obs_avg_score
from health.ocd_patient_dataset
group by Gender
order by patient_count
)

select
	sum(case when Gender = 'Female' then patient_count else 0 end) as count_female,
	sum(case when Gender = 'Male' then patient_count else 0 end) as count_male,

	round(sum(case when Gender = 'Female' then patient_count else 0 end)/
	(sum(case when Gender = 'Female' then patient_count else 0 end)+sum(case when Gender = 'Male' then patient_count else 0 end)) *100,2)
	 as female_percentage,

    round(sum(case when Gender = 'Male' then patient_count else 0 end)/
	(sum(case when Gender = 'Female' then patient_count else 0 end)+sum(case when Gender = 'Male' then patient_count else 0 end)) *100,2)
	 as male_percentage

from data;