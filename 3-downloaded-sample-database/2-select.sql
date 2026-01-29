SELECT * FROM payments;

SELECT
	MAX(amount) AS max_amount,
    MIN(amount) as min_amount,
    AVG(amount) as avg_amout,
    SUM(amount) as sum_amount
FROM payments;

SELECT * FROM payments WHERE amount = (SELECT MIN(amount) FROM payments);

SELECT
	MAX(amount) AS max_amount,
    MIN(amount) as min_amount,
    AVG(amount) as avg_amout,
    SUM(amount) as sum_amount
FROM payments;









SELECT * FROM orders;

SELECT * FROM orders
WHERE orderDate BETWEEN "2004-05-01" AND "2004-10-30"
ORDER BY orderDate;








SELECT * FROM employees;

SELECT * FROM employees
WHERE firstName LIKE '%y%';

SELECT * FROM employees
WHERE firstName LIKE 'd%';

SELECT * FROM employees
WHERE firstName LIKE '%a';

SELECT * FROM employees
WHERE firstName LIKE 'd%' OR firstName LIKE '%a';

SELECT * FROM employees
WHERE firstName LIKE 'f%e';

SELECT * FROM employees
WHERE firstName LIKE 'Mary';