{{ config(materialized='table') }}
select * from {{ ref('etl_adintel_magazine') }}