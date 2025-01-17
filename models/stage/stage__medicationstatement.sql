
-- SELECT statement for MedicationStatement
SELECT 
    resourcetype,
    id,
    meta_versionid,
    meta_lastupdated,
    meta_source,
    identifier_0_system,
    identifier_0_value,
    status,
    medicationreference_reference,
    subject_reference,
    effectiveperiod_start,
    effectiveperiod_end,
    dosage_0_text,
    dosage_0_route_coding_0_system,
    dosage_0_route_coding_0_code,
    dosage_0_route_text,
    dosage_0_doseandrate_0_dosequantity_value,
    dosage_0_doseandrate_0_dosequantity_unit,
    dosage_0_doseandrate_0_dosequantity_system,
    dosage_0_route_coding_0_display,
    identifier_1_system,
    identifier_1_value,
    identifier_0_type_text,
    identifier_1_type_text,
    dosage_0_doseandrate_0_doserange_low_value,
    dosage_0_doseandrate_0_doserange_low_unit,
    dosage_0_doseandrate_0_doserange_low_system,
    dosage_0_doseandrate_0_doserange_high_value,
    dosage_0_doseandrate_0_doserange_high_unit,
    dosage_0_doseandrate_0_doserange_high_system,
    identifier_1_assigner_display,
    identifier_2_system,
    identifier_2_value,
    identifier_3_system,
    identifier_3_value,
    identifier_4_system,
    identifier_4_value,
    identifier_5_system,
    identifier_5_value,
    identifier_6_system,
    identifier_6_value,
    identifier_3_assigner_display,
    identifier_5_assigner_display,
    identifier_7_system,
    identifier_7_value,
    identifier_7_assigner_display,
    identifier_8_system,
    identifier_8_value,
    identifier_9_system,
    identifier_9_value,
    identifier_9_assigner_display,
    identifier_10_system,
    identifier_10_value,
    dosage_0_route_coding_1_system,
    dosage_0_route_coding_1_code,
    identifier_2_assigner_display,
    dosage_1_text,
    identifier_11_system,
    identifier_11_value,
    identifier_12_system,
    identifier_12_value,
    filename,
    processed_date 
FROM {{source('raw', 'medicationstatement') }} x

QUALIFY rank() over(partition by filename order by processed_date desc) = 1