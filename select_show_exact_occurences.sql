/*	
 Show only invoices of 1.98$ and 3.96$
 Also sort by invoice date.
 */
SELECT InvoiceDate,
    BillingAddress,
    BillingCity,
    BillingCountry,
    total
FROM Invoice
WHERE total IN(1.98, 3.96)
ORDER BY InvoiceDate