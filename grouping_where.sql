/*
 Select average amount money spent by a certain city.
 WHERE is used for filtering non-aggregate data.
 https://www.sqlitetutorial.net/sqlite-where/
 */
SELECT BillingCity,
    ROUND(AVG(Total), 2) AS [Average $ spent]
FROM Invoice
WHERE BillingCity LIKE 'L%'
GROUP BY BillingCity
ORDER BY BillingCity