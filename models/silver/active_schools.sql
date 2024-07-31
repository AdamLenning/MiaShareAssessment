with recent_payments as (
    select distinct institution_id
    from {{ ref('bronze', 'payments') }}
    where payment_date >= date_sub(current_date, interval 3 month)
)
select i.id, i.name
from {{ ref('bronze', 'institutions') }} i
join recent_payments rp on i.id = rp.institution_id
where i.active = true