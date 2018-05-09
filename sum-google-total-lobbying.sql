select 
	distinct l.year, client, sum(l.amount) 
from
	lobbying l
where
	l.client = 'Google Inc'
group by
	l.year
order by
	l.year
;
