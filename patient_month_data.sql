#since data was in text fformat

-- alter table health.ocd_patient_dataset
-- modify `OCD Diagnosis Date` date;

# now pateint data as per month
select
date_format(`OCD Diagnosis Date`, '%Y-%m-01 00:00:00') as month,
count(`Patient ID`) as patient_count
from health.ocd_patient_dataset
group by month
Order by month
;