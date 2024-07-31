select 
    r.ae_id,
    sum(r.amount) as total_revenue
from {{ ref('bronze', 'revenue') }} r
where month(r.revenue_date) = month(current_date) 
    and year(r.revenue_date) = year(current_date)
group by r.ae_id