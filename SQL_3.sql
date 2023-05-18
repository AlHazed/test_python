WITH res as (
	  SELECT [from] AS acc, tdate AS dt_from,
  		amount * -1 AS balance
  	  from transfers
  	  
  	  UNION ALL
  	  
  	  SELECT [to] AS acc, tdate AS dt_from,
  		amount as balance
  	  from transfers
)

SELECT 
	acc, 
    FORMAT(dt_from, 'd', 'de-de'),
    LEAD(FORMAT(dt_from, 'd', 'de-de'), 1, '01.01.3000') OVER (PARTITION BY acc ORDER BY dt_from) as dt_to,
    SUM(balance) OVER (PARTITION BY acc ORDER BY dt_from) as balance
from res
