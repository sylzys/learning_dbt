{% test is_order_above_zero(model, column_name) %}

with validation as (

    select
        {{ column_name }} as nb_orders

    from {{ model }}

),

validation_errors as (

    select
        nb_orders

    from validation
    -- If true, test will fail
    where nb_orders <= {{ var('min_orders')}}

)

select *
from validation_errors

{% endtest %}