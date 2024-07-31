select
    s.id as student_id,
    sum(case when p.status = 'Fully paid' then 1 else 0 end) as fully_paid_count,
    sum(case when p.status = 'Partially paid' and p.payment_date >= current_date then 1 else 0 end) as actively_paying_count,
    sum(case when p.status = 'Sent to collections' then 1 else 0 end) as collections_count
from {{ ref('bronze', 'students') }} s
join {{ ref('bronze', 'payments') }} p on s.id = p.student_id
group by s.id
