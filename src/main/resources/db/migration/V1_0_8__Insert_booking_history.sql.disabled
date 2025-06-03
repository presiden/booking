DO $$
DECLARE
    r RECORD;
BEGIN
    FOR r IN (
        SELECT
            b.id AS booking_id,
            b.users_id,
            b.shows_id,
            b.status,
            b.booking_time
        FROM booking b
    ) LOOP
        -- Selalu masukkan IN_PROGRESS lebih dulu
        INSERT INTO booking_history (booking_id, status, created_at)
        VALUES (r.booking_id, 'IN_PROGRESS'::booking_status, r.booking_time - INTERVAL '5 minutes');

        -- Jika status bukan IN_PROGRESS, tambahkan status aktual juga
        IF r.status <> 'IN_PROGRESS' THEN
            INSERT INTO booking_history (booking_id, status, created_at)
            VALUES (r.booking_id, r.status::booking_status, r.booking_time);
        END IF;
    END LOOP;

    RAISE NOTICE 'booking_history inserted with initial IN_PROGRESS for each booking.';
END $$;