select count(distinct ip.part_num)as p, c.name
from colors c, inventory_parts ip
where c.id=ip.color_id
group by c.name
order by p desc
Fetch First 10 Row Only