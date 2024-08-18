/*
 https://www.digitalocean.com/community/tutorials/how-to-use-mathematical-expressions-in-sql
 Using LIKE and OR operators in conjunction with % wildcard.
 Show only cities started with "B" or "P".
 Show only cities of certain total invoice which names started with "B" or "P". 
 */
SELECT InvoiceDate,
    BillingAddress,
    BillingCity,
    BillingCountry,
    total
FROM Invoice -- WHERE BillingCity LIKE 'B%'
    --     OR BillingCity LIKE 'P%'
WHERE total > '1.98'
    AND (
        BillingCity LIKE 'B%'
        OR BillingCity LIKE 'P%'
    )
ORDER BY InvoiceDate