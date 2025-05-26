-- Generate 1 karakter acak
CREATE OR REPLACE FUNCTION random_char() RETURNS TEXT AS $$
DECLARE
    chars TEXT := 'ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
    i INTEGER := floor(random() * length(chars) + 1);
BEGIN
    RETURN substr(chars, i, 1);
END;
$$ LANGUAGE plpgsql;

-- Generate booking number acak 20 karakter
CREATE OR REPLACE FUNCTION generate_booking_number() RETURNS TEXT AS $$
DECLARE
    s TEXT := '';
    i INTEGER := 1;
BEGIN
    WHILE i <= 20 LOOP
        s := s || random_char();
        i := i + 1;
    END LOOP;
    RETURN s;
END;
$$ LANGUAGE plpgsql;

DO $$
DECLARE
    v_now TIMESTAMP := now();
    v_inserted INTEGER := 0;
    v_user_id INTEGER;
    v_show_id INTEGER;
    v_booking_number TEXT;
    v_used_pairs TEXT[][] := ARRAY[]::TEXT[][];
BEGIN
    -- Skenario khusus (8 data)
    -- 2 user CANCELLED lalu COMPLETED
    FOR i IN 1..2 LOOP
        v_booking_number := generate_booking_number();
        INSERT INTO booking (booking_number, users_id, shows_id, booking_time, status)
        VALUES (v_booking_number, i, 1, v_now, 'CANCELLED'::booking_status);

        v_booking_number := generate_booking_number();
        INSERT INTO booking (booking_number, users_id, shows_id, booking_time, status)
        VALUES (v_booking_number, i, 1, v_now, 'COMPLETED'::booking_status);

        v_inserted := v_inserted + 2;
        v_used_pairs := v_used_pairs || ARRAY[ARRAY[i::TEXT, '1']];
    END LOOP;

    -- 2 user EXPIRED lalu COMPLETED
    FOR i IN 3..4 LOOP
        v_booking_number := generate_booking_number();
        INSERT INTO booking (booking_number, users_id, shows_id, booking_time, status)
        VALUES (v_booking_number, i, 2, v_now, 'EXPIRED'::booking_status);

        v_booking_number := generate_booking_number();
        INSERT INTO booking (booking_number, users_id, shows_id, booking_time, status)
        VALUES (v_booking_number, i, 2, v_now, 'COMPLETED'::booking_status);

        v_inserted := v_inserted + 2;
        v_used_pairs := v_used_pairs || ARRAY[ARRAY[i::TEXT, '2']];
    END LOOP;

    -- 2 user CANCELLED lalu IN_PROGRESS
    FOR i IN 5..6 LOOP
        v_booking_number := generate_booking_number();
        INSERT INTO booking (booking_number, users_id, shows_id, booking_time, status)
        VALUES (v_booking_number, i, 3, v_now, 'CANCELLED'::booking_status);

        v_booking_number := generate_booking_number();
        INSERT INTO booking (booking_number, users_id, shows_id, booking_time, status)
        VALUES (v_booking_number, i, 3, v_now, 'IN_PROGRESS'::booking_status);

        v_inserted := v_inserted + 2;
        v_used_pairs := v_used_pairs || ARRAY[ARRAY[i::TEXT, '3']];
    END LOOP;

    -- 2 user EXPIRED lalu IN_PROGRESS
    FOR i IN 7..8 LOOP
        v_booking_number := generate_booking_number();
        INSERT INTO booking (booking_number, users_id, shows_id, booking_time, status)
        VALUES (v_booking_number, i, 4, v_now, 'EXPIRED'::booking_status);

        v_booking_number := generate_booking_number();
        INSERT INTO booking (booking_number, users_id, shows_id, booking_time, status)
        VALUES (v_booking_number, i, 4, v_now, 'IN_PROGRESS'::booking_status);

        v_inserted := v_inserted + 2;
        v_used_pairs := v_used_pairs || ARRAY[ARRAY[i::TEXT, '4']];
    END LOOP;

    -- Sisa data random: pastikan tidak ada duplicate status COMPLETED/IN_PROGRESS untuk user-show sama
    WHILE v_inserted < 50 LOOP
        v_user_id := floor(random() * 10 + 1)::int;  -- 1..10
        v_show_id := floor(random() * 6 + 1)::int;   -- 1..6

        -- Cek apakah user-show pair sudah punya COMPLETED atau IN_PROGRESS
        IF EXISTS (
            SELECT 1 FROM booking 
            WHERE users_id = v_user_id 
              AND shows_id = v_show_id 
              AND status IN ('COMPLETED', 'IN_PROGRESS')
        ) THEN
            CONTINUE;
        END IF;

        v_booking_number := generate_booking_number();

        -- Insert dengan status acak
        INSERT INTO booking (booking_number, users_id, shows_id, booking_time, status)
        VALUES (
            v_booking_number,
            v_user_id,
            v_show_id,
            v_now,
            ((ARRAY['IN_PROGRESS', 'COMPLETED', 'CANCELLED', 'EXPIRED'])[floor(random() * 4 + 1)])::booking_status
        );

        v_inserted := v_inserted + 1;
    END LOOP;

    RAISE NOTICE 'Inserted % bookings.', v_inserted;
END $$;