select site,sum(cast(impressions as int))
from {{ ref('impression_tva_creative') }}
group by site
having count(*)<=0