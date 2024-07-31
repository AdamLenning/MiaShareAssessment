select
    ar.institution_id,
    sum(ar.amount) / sum(tuition.full_tuition_amount) as tuition_capture_percentage
from {{ ref('bronze', 'account_receivables') }} ar
join (
    select institution_id, sum(amount) as full_tuition_amount
    from {{ ref('bronze', 'revenue') }}
    group by institution_id
) tuition on ar.institution_id = tuition.institution_id
group by ar.institution_id
