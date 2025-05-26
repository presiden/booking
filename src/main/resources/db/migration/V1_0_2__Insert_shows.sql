DO $$
DECLARE
    v_inserted_count INTEGER := 0;
    v_max_shows INTEGER := 50;
    v_attempt_limit INTEGER := 500;
    v_attempt INTEGER := 0;

    v_show_date DATE;
    v_start_time TIME;
    v_end_time TIME;
    v_duration INTERVAL;
    v_film_id INTEGER;
    v_theater_room_id INTEGER;
    v_price INTEGER; -- Ubah dari NUMERIC(10,2)
BEGIN
    WHILE v_inserted_count < v_max_shows AND v_attempt < v_attempt_limit LOOP
        -- Random tanggal 5 hari ke depan
        v_show_date := CURRENT_DATE + (random() * 4)::int;

        -- Random jam mulai antara 08:00 - 21:00
        v_start_time := time '08:00' + (interval '15 minutes' * floor(random() * 53));

        -- Random durasi antara 90–180 menit
        v_duration := (60 + floor(random() * 120)) * interval '1 minute';

        v_end_time := v_start_time + v_duration;

        -- Acak film dan ruangan
        v_film_id := 1 + floor(random() * 6)::int;
        v_theater_room_id := 1 + floor(random() * 4)::int;

        -- Acak harga tiket antara 30.000 – 80.000
        v_price := 30000 + (floor(random() * 51)::int * 1000); -- kelipatan 1000

        -- Cek apakah overlap
        IF NOT EXISTS (
            SELECT 1 FROM shows
            WHERE theater_room_id = v_theater_room_id
              AND tsrange(
                    ("date" + start_time)::timestamp,
                    ("date" + end_time)::timestamp
                  ) && tsrange(
                    (v_show_date + v_start_time)::timestamp,
                    (v_show_date + v_end_time)::timestamp
                  )
        ) THEN
            INSERT INTO shows(
                "date", start_time, end_time,
                film_id, theater_room_id, price, is_active
            ) VALUES (
                v_show_date, v_start_time, v_end_time,
                v_film_id, v_theater_room_id, v_price, TRUE
            );
            v_inserted_count := v_inserted_count + 1;
        END IF;

        v_attempt := v_attempt + 1;
    END LOOP;

    RAISE NOTICE 'Inserted % shows (attempts: %)', v_inserted_count, v_attempt;
END
$$;