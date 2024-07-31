select * from {{ source('mysql_source', 'account_receivables') }}
