with orders as (
    SELECT
        ORDER_ID,
        AMOUNT AS ORDER_AMOUNT,
        ORDER_TIME AS ORDER_TIME,
        CUSTOMER_ID,
        ITEM_ID
    FROM {{source('DBT_INFO','ALL_INFO')}}
)
select * from orders