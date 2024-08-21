/*
 Show all invoices which are not selling.
 */
SELECT TrackId
FROM Track
WHERE TrackId NOT IN (
        SELECT DISTINCT TrackId
        FROM InvoiceLine
        ORDER BY TrackId
    )