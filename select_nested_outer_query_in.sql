/*
 Find sales of a particular Id with their dates and show all sales happened at this dates.
 */
SELECT InvoiceDate,
    BillingAddress,
    BillingCity
FROM Invoice
WHERE InvoiceDate IN (
        SELECT InvoiceDate
        FROM Invoice
        WHERE InvoiceId IN (251, 252, 253)
    )