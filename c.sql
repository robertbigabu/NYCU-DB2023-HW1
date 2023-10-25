with count_num(C,N) as
	(select count(sets.theme_id),themes.name
	 from themes,sets
	 where sets.theme_id=themes.id
	 group by themes.name),
	 M(P) as
	 (select max(C) as P 
	  from count_num)
 
select N
from count_num,M
where count_num.C=M.P
