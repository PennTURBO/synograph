update
	cdm_synthea10.measurement m2
set
	value_source_value = natob.value,
	unit_source_value = natob.units
from
	cdm_synthea10.measurement m
join cdm_synthea10.visit_occurrence vo on
	m.visit_occurrence_id = vo.visit_occurrence_id
join cdm_synthea10.person p on
	p.person_id = vo.person_id
join cdm_synthea10.observations natob on
	natob.patient = p.person_source_value
	and natob.encounter = vo.visit_source_value
	and natob.code = m.measurement_source_value
where
	m2.person_id = m.person_id
	and m2.visit_occurrence_id = m.visit_occurrence_id
	and m2.measurement_source_value = m.measurement_source_value;