DROP VIEW IF EXISTS schedule_view;

CREATE OR REPLACE VIEW schedule_view 
AS 
WITH 
total_seats
	AS (SELECT s.theater_room_id, COUNT(1) AS number_of_seats
		FROM seat s 
		WHERE s.is_active IS TRUE
		GROUP BY s.theater_room_id),
completed_booking
	AS (SELECT b.shows_id, s2.film_id, s.theater_room_id, s2."date", s2.start_time, COUNT(1) AS completed_booking 
		FROM seat s 
		JOIN booking_seat bs ON bs.seat_id = s.id
		JOIN booking b ON b.id = bs.booking_id
		JOIN shows s2 ON s2.id = b.shows_id
		WHERE s.is_active IS TRUE 
		AND b.status = 'COMPLETED'
		AND (s2.date + s2.start_time)::timestamp > now()
		GROUP BY b.shows_id, s2.film_id, s.theater_room_id, s2."date", s2.start_time)
SELECT s.id,
		s.film_id AS film_id, 
		s.date AS show_date, 
		t.name AS theater_name, 
		tr.name AS room_name,
		ta.address_line AS theater_address, 
		s.start_time AS show_time,
		ta.city_id,
		ts.number_of_seats,
		cb.completed_booking,
		CASE 
			WHEN completed_booking < number_of_seats THEN TRUE 
			ELSE FALSE
		END AS available
FROM shows s
JOIN theater_room tr ON tr.id = s.theater_room_id 
JOIN theater t ON t.id = tr.theater_id
JOIN theater_address ta ON ta.theater_id = t.id
JOIN total_seats ts ON ts.theater_room_id = tr.id
JOIN completed_booking cb ON cb.theater_room_id = tr.id
AND cb.shows_id = s.id
WHERE (s.date + s.start_time)::timestamp > now();