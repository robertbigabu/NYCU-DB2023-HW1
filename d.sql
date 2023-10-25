with tot_part(P,S,N) as
	(select count(IP.part_num),S.set_num, T.name
	 from inventory_parts as IP, inventories as I, sets as S, themes as T
	 where IP.inventory_id=I.id and I.set_num=S.set_num and S.theme_id=T.id
	 group by S.set_num,T.name)

select avg(P), N
from tot_part
group by N
order by avg(P) desc