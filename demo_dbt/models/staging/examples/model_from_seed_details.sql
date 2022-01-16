
{{ config(
    query_tag = 'dbt_demo'
) }}

with details as (
    select * from {{ ref('example_orders') }}
),

final as (
    select
        details.id as id,
        details.name as user,
        details.orders as nb_orders 

    from details
)

select * from final