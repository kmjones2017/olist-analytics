{% macro region_from_state(state_column) %}

case 
    when {{ state_column }} in ('SP','RJ','MG','ES') then 'Southeast'
    when {{ state_column }} in ('PR','SC','RS') then 'South'
    when {{ state_column }} in ('BA','PE','CE','RN','PB','AL','SE','MA','PI') then 'Northeast'
    when {{ state_column }} in ('AM','PA','RO','RR','AP','TO','AC') then 'North'
    when {{ state_column }} in ('GO','MT','MS','DF') then 'Central-West'
    else 'Unknown'
end

{% endmacro %}