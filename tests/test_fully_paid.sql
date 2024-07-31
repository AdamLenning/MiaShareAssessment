with payment_status as (
    select
        sum(case when status = 'Fully paid' then 1 else 0 end) as fully_paid_count,
        sum(case when status = 'Partially paid' then 1 else 0 end) as partially_paid_count,
        sum(case when status = 'Sent to collections' then 1 else 0 end) as collections_count
    from {{ ref('payments') }}
)
select
    fully_paid_count > 0 as test_fully_paid,
    partially_paid_count > 0 as test_partially_paid,
    collections_count > 0 as test_collections
from payment_status
