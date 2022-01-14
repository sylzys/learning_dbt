with source_orders as (
    select * from {{ source('snowflake_sample_data', 'orders')}}
),

final as (
    select * from source_orders 
)

select * from final