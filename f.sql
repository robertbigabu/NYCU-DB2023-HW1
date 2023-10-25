with tot_color(q,c,n) as(
	select sum(IP.quantity), C.name, T.name
	from inventory_parts as IP, inventories as I, sets as S, themes as T, colors as C
	where IP.inventory_id=I.id and I.set_num=S.set_num and S.theme_id=T.id and C.id=IP.color_id
	group by C.name, T.name),
	max_color(m,n) as(
	select max(q),n
	from tot_color
	group by n)
	
select t.c, t.n
from tot_color t,max_color ma
where m=q and t.n=ma.n