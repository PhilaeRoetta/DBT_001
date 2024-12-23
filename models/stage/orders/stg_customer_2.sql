with customers as(
    SELECT DISTINCT
        CUSTOMER_ID,
        CUST_NAME AS CUSTOMER_NAME,
        DOB AS CUSTOMER_BIRTHDAY
    FROM {{source('DBT_INFO','ALL_INFO_BIS')}}
)
select * from customers