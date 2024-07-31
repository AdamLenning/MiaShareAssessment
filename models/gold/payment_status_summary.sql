{{ config(materialized='table') }}

select
    sum(fully_paid_count) as fully_paid_count,
    sum(actively_paying_count) as actively_paying_count,
    sum(collections_count) as collections_count,
    sum(fully_paid_count) * 100.0 / sum(fully_paid_count + actively_paying_count + collections_count) as fully_paid_percentage,
    sum(actively_paying_count) * 100.0 / sum(fully_paid_count + actively_paying_count + collections_count) as actively_paying_percentage,
    sum(collections_count) * 100.0 / sum(fully_paid_count + actively_paying_count + collections_count) as collections_percentage
from {{ ref('silver', 'payment_statuses') }}