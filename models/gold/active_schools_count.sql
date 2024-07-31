{{ config(materialized='table') }}

select count(*) as active_schools_count
from {{ ref('silver', 'active_schools') }}