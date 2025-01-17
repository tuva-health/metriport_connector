
-- SELECT statement for Medication
SELECT 
    resourcetype,
    id,
    meta_versionid,
    meta_lastupdated,
    meta_source,
    code_coding_0_system,
    code_coding_0_code,
    code_coding_0_display,
    code_text,
    code_coding_1_system,
    code_coding_1_code,
    code_coding_1_display,
    code_coding_2_system,
    code_coding_2_code,
    code_coding_3_system,
    code_coding_3_code,
    code_coding_3_display,
    code_coding_2_display,
    code_coding_4_system,
    code_coding_4_code,
    code_coding_5_system,
    code_coding_5_code,
    code_coding_4_display,
    code_coding_6_code,
    code_coding_6_system,
    code_coding_7_code,
    code_coding_7_system,
    code_coding_8_system,
    code_coding_8_code,
    code_coding_5_display,
    identifier_0_system,
    identifier_0_value,
    identifier_1_system,
    identifier_1_value,
    identifier_2_system,
    identifier_2_value,
    status,
    intent,
    medicationreference_reference,
    subject_reference,
    authoredon,
    requester_reference,
    identifier_0_type_text,
    identifier_1_type_text,
    identifier_2_type_text,
    identifier_3_system,
    identifier_3_value,
    identifier_3_type_text,
    identifier_0_assigner_display,
    identifier_1_assigner_display,
    identifier_2_assigner_display,
    identifier_3_assigner_display,
    identifier_4_system,
    identifier_4_value,
    identifier_4_assigner_display,
    identifier_5_system,
    identifier_5_value,
    identifier_6_system,
    identifier_6_value,
    identifier_7_system,
    identifier_7_value,
    identifier_8_system,
    identifier_8_value,
    identifier_9_system,
    identifier_9_value,
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
    dosage_0_doseandrate_0_doserange_low_value,
    dosage_0_doseandrate_0_doserange_low_unit,
    dosage_0_doseandrate_0_doserange_low_system,
    dosage_0_doseandrate_0_doserange_high_value,
    dosage_0_doseandrate_0_doserange_high_unit,
    dosage_0_doseandrate_0_doserange_high_system,
    identifier_5_assigner_display,
    identifier_7_assigner_display,
    identifier_9_assigner_display,
    identifier_10_system,
    identifier_10_value,
    dosage_0_route_coding_1_system,
    dosage_0_route_coding_1_code,
    dosage_1_text,
    identifier_11_system,
    identifier_11_value,
    identifier_12_system,
    identifier_12_value,
    reasonreference_0_reference,
    dosage_dose_system,
    dosage_route_coding_0_system,
    dosage_route_coding_0_code,
    dosage_route_coding_0_display,
    dosage_route_text,
    dosage_dose_value,
    dosage_dose_unit,
    reasonreference_1_reference,
    reasonreference_2_reference,
    reasonreference_3_reference,
    reasonreference_4_reference,
    reasonreference_5_reference,
    reasonreference_6_reference,
    reasonreference_7_reference,
    reasonreference_8_reference,
    reasonreference_9_reference,
    reasonreference_10_reference,
    reasonreference_11_reference,
    reasonreference_12_reference,
    reasonreference_13_reference,
    reasonreference_14_reference,
    reasonreference_15_reference,
    reasonreference_16_reference,
    reasonreference_17_reference,
    reasonreference_18_reference,
    reasonreference_19_reference,
    reasonreference_20_reference,
    reasonreference_21_reference,
    reasonreference_22_reference,
    reasonreference_23_reference,
    reasonreference_24_reference,
    reasonreference_25_reference,
    reasonreference_26_reference,
    reasonreference_27_reference,
    reasonreference_28_reference,
    reasonreference_29_reference,
    reasonreference_30_reference,
    reasonreference_31_reference,
    reasonreference_32_reference,
    reasonreference_33_reference,
    reasonreference_34_reference,
    reasonreference_35_reference,
    reasonreference_36_reference,
    reasonreference_37_reference,
    reasonreference_38_reference,
    reasonreference_39_reference,
    filename,
    processed_date 
FROM {{source('raw', 'medication') }} x

QUALIFY rank() over(partition by filename order by processed_date desc) = 1