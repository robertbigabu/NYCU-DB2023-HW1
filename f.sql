with tot_color(q,c,i) as(
	select sum(IP.quantity), C.name, T.id
	from inventory_parts as IP, inventories as I, sets as S, themes as T, colors as C
	where IP.inventory_id=I.id and I.set_num=S.set_num and S.theme_id=T.id and C.id=IP.color_id
	group by C.name, T.id),
	max_color(m,i) as(
	select max(q),i
	from tot_color
	group by i)
	
select t.c, themes.name
from tot_color t,max_color ma,themes
where m=q and t.i=ma.i and themes.id=ma.i