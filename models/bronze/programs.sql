select * from {{ source('mysql_source', 'programs') }}
