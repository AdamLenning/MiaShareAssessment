select * from {{ source('mysql_source', 'students') }}
