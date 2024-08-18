/*
 Simple SQL query example.
 Sorting by Name first and after - Surname. The second sorting applies to the rows with the same Name.
 Show only first 10.
 */
SELECT FirstName AS [Customer first name],
	LastName AS 'Customer last name',
	Email AS EMAIL
FROM Customer
ORDER BY FirstName ASC,
	LastName DESC
LIMIT 10