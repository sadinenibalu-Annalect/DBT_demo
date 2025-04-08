select campaign,
site,
placement,
date,
creative,
dma_region,
impressions from {{ ref('stg__dma_impressions') }}
where campaign!='Grand Total:'
union all
select "Entyvio FY\'22 Video" as campaign,"Facebook Inc." as site,ad_set_name as placement,day as date,ads as creative,dma_region,impressions from {{ ref('stg__facebook_data') }} 