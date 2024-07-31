{{ config(materialized='table') }}

select
    institution_id,
    tuition_capture_percentage
from {{ ref('silver', 'school_tuition_capture') }}