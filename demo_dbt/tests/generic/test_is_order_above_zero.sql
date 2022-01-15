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
    -- if this is true, then even_field is actually odd!
    where nb_orders > 0

)

select *
from validation_errors

{% endtest %}