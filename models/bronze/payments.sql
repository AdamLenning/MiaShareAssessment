select * from {{ source('mysql_source', 'payments') }}
