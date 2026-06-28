
select
    sales.date_date,
    sales.orders_id,
    sales.products_id,
    sales.revenue,
    sales.quantity,
    product.purchase_price,
    round(sales.quantity * product.purchase_price, 2) as purchase_cost,
    round(sales.revenue - sales.quantity * product.purchase_price, 2) as margin

from {{ ref('stg_raw_sales') }} as sales
left join {{ ref('stg_raw_product') }} as product
    on sales.products_id = product.products_id
