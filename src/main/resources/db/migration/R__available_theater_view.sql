DROP VIEW IF EXISTS available_theater_view;

CREATE OR REPLACE VIEW available_theater_view
AS 
SELECT t.id AS theater_id, t.name, ta.city_id
FROM theater t 
JOIN theater_address ta ON ta.theater_id = t.id
WHERE t.is_active IS TRUE
ORDER BY t.name;