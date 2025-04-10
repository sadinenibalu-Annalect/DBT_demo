select  tva_creative from {{ ref('impressions') }}
where tva_creative not in (select creative from {{ ref('stg__creative_dcm') }})