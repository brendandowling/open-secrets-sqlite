select 
	l.year, l.client, sum(l.amount) 
from
	lobbying l
where
	l.client = 'Apple Inc'
group by
	l.year, l.client
order by
	l.year
;


