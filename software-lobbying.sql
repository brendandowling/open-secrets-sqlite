select 
	distinct l.client, l.year,
	sum(l.amount) 
from
	lobbying l,
	issues i
where
	l.uniqid = i.uniqid AND
	lower(i.specificissue) LIKE '%patent%'
group by
	l.client, l.year
order by
	l.client;
