/*
 Show how each city is performing against global average sales.
 */
SELECT BillingCity,
    ROUND(AVG (Total), 2) AS [City Average],
    (
        SELECT ROUND(AVG (Total), 2) AS [Global Average]
        FROM Invoice
    )
FROM Invoice
GROUP BY BillingCity
ORDER BY BillingCity