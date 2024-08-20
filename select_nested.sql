/*
 Show underperforming cities.
 */
SELECT InvoiceDate,
    BillingCountry,
    BillingCity,
    Total
FROM Invoice
WHERE Total < (
        SELECT AVG(Total)
        FROM Invoice
    )
ORDER BY Total DESC