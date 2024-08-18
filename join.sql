/*
 Join desired Customer table columns to the chosen Invoice table columns for the related records.
 Sort by name to group all customer's invoices altogether.
 */
SELECT i.InvoiceId,
    c.CustomerId,
    c.FirstName,
    c.Email,
    i.InvoiceDate,
    i.BillingAddress,
    i.Total
FROM Invoice AS i -- INNER JOIN Customer AS c ON i.CustomerId = c.CustomerId
    LEFT OUTER JOIN Customer AS c ON i.CustomerId = c.CustomerId
ORDER BY c.CustomerId