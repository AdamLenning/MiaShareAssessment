select 
    p.institution_id,
    count(distinct p.id) as program_count,
    avg(s.student_count) as avg_student_count
from {{ ref('bronze', 'programs') }} p
join (
    select program_id, count(id) as student_count
    from {{ ref('bronze', 'students') }}
    group by program_id
) s on p.id = s.program_id
group by p.institution_id