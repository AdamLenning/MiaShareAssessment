select * from {{ source('mysql_source', 'sales_team') }}
