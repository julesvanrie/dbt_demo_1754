{% test product_not_blue(model, column_name, color) %}

select
    *
from
    {{ model }}
where
    {{ column_name }} LIKE "{{ color }}"

{% endtest %}