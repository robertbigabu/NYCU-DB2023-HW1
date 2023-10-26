with count_num(C,N) as
	(select count(sets.theme_id),themes.id
	 from themes,sets
	 where sets.theme_id=themes.id
	 group by themes.id),
	 M(P) as
	 (select max(C) as P 
	  from count_num),
	  get_id(N) as
	  (select N
	   from count_num,M
	   where count_num.C=M.P)
 
select name
from get_id,themes
where get_id.N=themes.id
