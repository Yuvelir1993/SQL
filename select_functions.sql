/*
 Example of simple select with pipe to concatenate fields into 1 column.
 https://a-gentle-introduction-to-sql.readthedocs.io/en/latest/part2/string-functions.html
 */
SELECT FirstName || ' ' || LastName AS "Customer",
    Address,
    LENGTH(PostalCode) AS [Postal code length],
    SUBSTR(PostalCode, 5) AS [Postal code first 5 digit],
    UPPER(
        "Country: " || Country || "City " || City || "State: " || State || "Mail: " || LOWER(Email)
    ) AS [Many info]
FROM Customer