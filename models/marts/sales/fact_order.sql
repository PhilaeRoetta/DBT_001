with customers as (
    select * from {{ref('stg_customer')}}
),
orders as (
    select * from {{ref('stg_orders')}}
),
item as (
    select * from {{ref('stg_item')}}
),
result as (
    select o.*,
    c.CUSTOMER_NAME,
    c.CUSTOMER_BIRTHDAY,
    i.ITEM_NAME 
    from orders o
    left join customers c 
    on o.customer_id = c.customer_id
    left join item i
    on o.item_id = i.item_id
)

SELECT * FROM result