with

    source as (select * from {{ source("raw", "stock") }}),

    renamed as (

        select
            model,
            model_name,
            color,
            color_name,
            size,
            `new`,
            concat(model, "_", color, "_", size) as product_id,
            forecast_stock,
            stock,
            price,
            {{ price_cat('price') }}

        from source

    )

select *
from renamed
