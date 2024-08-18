/*
 Select invoice from certain date.
 Includes both simple and functional examples.
 https://www.w3schools.com/Sql/sql_dates.asp
 */
SELECT InvoiceDate,
    BillingAddress,
    BillingCity,
    BillingCountry,
    total
FROM Invoice -- WHERE InvoiceDate IS '2010-05-22 00:00:00'
    -- WHERE DATETIME(InvoiceDate) IS '2010-05-22 00:00:00'
    -- WHERE DATE(InvoiceDate) IS '2010-05-22'
WHERE DATE(InvoiceDate) > '2010-05-22'
    AND total < '3.00'
ORDER BY InvoiceDate