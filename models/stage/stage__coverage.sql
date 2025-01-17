
-- SELECT statement for Coverage
SELECT 
    resourcetype,
    id,
    meta_versionid,
    meta_lastupdated,
    meta_source,
    identifier_0_system,
    identifier_0_value,
    status,
    beneficiary_reference,
    beneficiary_display,
    relationship_coding_0_system,
    relationship_coding_1_system,
    payor_0_reference,
    payor_1_display,
    identifier_1_system,
    identifier_1_value,
    identifier_2_system,
    identifier_2_value,
    relationship_coding_0_code,
    relationship_coding_0_display,
    relationship_text,
    identifier_3_system,
    identifier_3_value,
    identifier_0_type_text,
    relationship_coding_1_code,
    relationship_coding_1_display,
    payor_0_display,
    identifier_0_assigner_display,
    relationship_coding_2_system,
    relationship_coding_3_system,
    identifier_4_system,
    identifier_4_value,
    filename,
    processed_date 
FROM {{source('raw', 'coverage') }} x

QUALIFY rank() over(partition by filename order by processed_date desc) = 1