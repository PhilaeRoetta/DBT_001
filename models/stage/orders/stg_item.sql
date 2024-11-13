with items as (
    select distinct 
        ITEM_ID,
        ITEM_NAME
    FROM {{source('DBT_INFO','ALL_INFO')}}
)

SELECT * FROM items