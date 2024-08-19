/*
 Example of date functions.
 https://a-gentle-introduction-to-sql.readthedocs.io/en/latest/part2/string-functions.html
 */
SELECT FirstName || ' ' || LastName AS "Employee",
    Address,
    STRFTIME('%Y %m %d', BirthDate) AS [Birth date],
    STRFTIME('%Y %m %d', 'now') - STRFTIME('%Y %m %d', BirthDate) AS Age
FROM Employee