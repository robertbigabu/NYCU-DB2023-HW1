with avg_part(N,I) as(
	select avg(num_parts),themes.id
	from sets,themes
	where sets.theme_id=themes.id
	group by themes.id
	)
	
select N,themes.name
from avg_part,themes
where themes.id=I
order by N