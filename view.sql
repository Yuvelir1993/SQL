/*
 Simple view. Useful for creating more complex join queries, to be reused in other queries.
 https://www.programiz.com/sql/views
 */
-- DROP VIEW V_SimpleView;
CREATE VIEW V_SimpleView AS
SELECT ROUND(AVG(Total), 2)
FROM Invoice