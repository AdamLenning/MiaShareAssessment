{{ config(materialized='table') }}

select 
    institution_id,
    program_count,
    avg_student_count
from {{ ref('silver', 'school_programs') }}
