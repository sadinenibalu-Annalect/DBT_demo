{{
    config(
        materialized='table'
    )
}}
select * from 
{{ source('adintel', 'etl_adintel_magazine') }}