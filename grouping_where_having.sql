/*
 Select average amount money spent by a certain city, considering only >5$ bills.
 HAVING is used for filtering aggregated data.
 https://www.sqlitetutorial.net/sqlite-having/
 */
SELECT BillingCity,
    ROUND(AVG(Total), 2) AS [Average $ spent]
FROM Invoice
WHERE BillingCity LIKE 'B%'
GROUP BY BillingCity
HAVING AVG(Total) > 5
ORDER BY BillingCity