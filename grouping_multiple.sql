/*
 Grouping by multiple fields to see more granular results.
 See the average sales per country and it's cities, only > $6 of average sales.
 */
SELECT BillingCountry,
    BillingCity,
    ROUND(AVG(Total), 2) AS AverageMoneySpent
FROM Invoice
GROUP BY BillingCountry,
    BillingCity
HAVING AVG(Total) > 6
ORDER BY AverageMoneySpent