DROP VIEW IF EXISTS available_film_view;

CREATE OR REPLACE VIEW available_film_view
AS 
SELECT f.id AS film_id,
	    f.title,
		f.image_path,
	    f.rating,
	    ta.city_id,
	    STRING_AGG(DISTINCT g.name, ', ') AS genres
FROM film f
JOIN shows s ON s.film_id = f.id
JOIN film_genre fg ON fg.film_id = f.id
JOIN genre g ON g.id = fg.genre_id
JOIN theater_room tr ON tr.id = s.theater_room_id
JOIN theater t ON t.id = tr.theater_id
JOIN theater_address ta ON ta.theater_id = t.id
AND g.is_active IS TRUE
WHERE (s.date + s.start_time)::timestamp > now()
GROUP BY f.id, f.title, f.image_path, f.rating, ta.city_id