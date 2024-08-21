/*
 Update data.
 WARNING! Without the WHERE clause, UPDATE will update every single row in a table!
 */
UPDATE Artist
SET Name = "Damian Marley"
WHERE ArtistId = 277

-- SELECT Name, ArtistId
-- FROM Artist
-- WHERE Name = "Damian Marley"