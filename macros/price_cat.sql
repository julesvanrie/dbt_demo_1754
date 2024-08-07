{% macro price_cat(p) %}

case
    when {{ p }} >= 30
    then 'expensive'
    when {{ p }} < 20
    then 'cheap'
    else 'normal'
end as price_cat

{% endmacro %}