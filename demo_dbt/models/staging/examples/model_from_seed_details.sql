
{{ config(
    query_tag = 'dbt_demo_tag'
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

select *, '{{ invocation_id }}' as invocation_id from final

--  dbt ls --models state:modified --state .
--  dbt run --models state:modified --state .