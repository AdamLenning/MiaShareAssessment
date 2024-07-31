{{ config(materialized='table') }}

select 
    ae_id,
    total_revenue
from {{ ref('silver', 'ae_revenue') }}