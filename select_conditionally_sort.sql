/*	
 Show only records satisfying the WHERE condition.
 Also sort by invoice date.
 */
SELECT InvoiceDate,
	BillingAddress,
	BillingCity,
	BillingCountry,
	total
FROM Invoice
WHERE BillingCountry IS 'Poland' -- total = 1.98
	-- total BETWEEN 1.98 AND 5.00
ORDER BY InvoiceDate