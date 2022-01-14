

-- with order_details as (
--     select * from {{ ref('example_orders') }}
-- ),

-- final as (
--     select
--         example_orders.id as id,
--         example_orders.name as user,
--         example_orders.orders as amount 
-- )
with details as (
    select * from {{ ref('example_orders') }}
),

final as (
    select
        details.id as id,
        details.name as user,
        details.orders as amount 

    from details
)

select * from final