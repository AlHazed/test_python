SELECT sales.employee_id AS 'id', employee.name AS 'name',
COUNT (sales.id) AS 'sales_c',
DENSE_RANK() OVER (ORDER BY COUNT (sales.id) DESC) AS 'sales_rank_c',
SUM (price) AS 'sales_s',
DENSE_RANK() OVER (ORDER BY SUM (sales.price) DESC) AS 'sales_rank_s' FROM sales
INNER JOIN employee on sales.employee_id = employee.id
GROUP BY employee_id, employee.name
ORDER BY employee_id

