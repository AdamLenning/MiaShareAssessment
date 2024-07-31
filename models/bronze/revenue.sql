select * from {{ source('mysql_source', 'revenue') }}
