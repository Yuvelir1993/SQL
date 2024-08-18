/*
 Conditionally select ranges and add new column with names.
 Show only top performers.
 */
SELECT InvoiceDate,
    BillingAddress,
    BillingCity,
    BillingCountry,
    total,
    CASE
        WHEN total < 2.00 THEN 'Baseline purchase'
        WHEN total BETWEEN 2.00 AND 6.99 THEN 'Low purchase'
        WHEN total BETWEEN 7.00 AND 15.00 THEN 'Target purchase'
        ELSE 'Top performer'
    END AS PurchaseType
FROM Invoice
WHERE PurchaseType IS 'Top performer'
ORDER BY InvoiceDate