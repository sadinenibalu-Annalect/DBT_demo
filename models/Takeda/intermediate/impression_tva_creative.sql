select a.*,coalesce(b.creative,c.creative) as tva_creative from
{{ ref('impression_Union') }} a
inner join 
{{ ref('stg__creative_dcm') }} b
on a.creative=b.creative_name
left join 
{{ ref('stg__creative_dcm') }} c
on a.placement=b.creative_name