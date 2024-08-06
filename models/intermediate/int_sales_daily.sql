select
    date_date,
    sum(revenue) as tot_revenue
from {{ ref('int_sales_stock') }}
group by date_date