/*
 Aggregate functions examples.
 https://www.sqlite.org/lang_aggfunc.html
 
 Get total global sales of all time.
 */
SELECT round(SUM(Total), 2) AS [Total Sales],
    round(AVG(Total), 2) AS [Average Sale],
    MAX(Total) AS [Highest Sale],
    MIN(Total) AS [Minimal Sale],
    COUNT(*) AS [All Sales]
FROM Invoice