DO $$
DECLARE
    r_booking RECORD;
    v_seat_ids BIGINT[];
    v_seat_id BIGINT;
    v_room_id BIGINT;
    v_count INTEGER := 0;
    v_booking_count INTEGER := 0;
    row_labels TEXT[] := ARRAY['A','B','C','D','E'];
    row_label TEXT;
    is_vip BOOLEAN;
BEGIN
    -- Siapkan dummy seat jika belum ada
    IF NOT EXISTS (SELECT 1 FROM seat) THEN
        FOR v_room_id IN 1..4 LOOP
            FOR i IN 1..array_length(row_labels, 1) LOOP
                row_label := row_labels[i];
                FOR seat_num IN 1..20 LOOP
                    -- Misalkan seat 1–5 adalah VIP
                    is_vip := seat_num <= 5;
                    INSERT INTO seat (
                        theater_room_id, row_label, seat_number,
                        seat_type, x_coordinate, y_coordinate,
                        additional_price
                    )
                    VALUES (
                        v_room_id,
                        row_label,
                        seat_num,
                        CASE WHEN is_vip THEN 'VIP' ELSE 'regular' END,
                        (seat_num * 5)::TEXT,
                        (i * 10)::TEXT,
                        CASE WHEN is_vip THEN 20000 ELSE 0 END
                    );
                END LOOP;
            END LOOP;
        END LOOP;
        RAISE NOTICE 'Dummy seat berhasil dimasukkan.';
    ELSE
        RAISE NOTICE 'Data seat sudah ada, tidak di-insert ulang.';
    END IF;

    -- Loop semua booking
    FOR r_booking IN SELECT b.id, s.theater_room_id
                     FROM booking b
                     JOIN shows s ON s.id = b.shows_id
    LOOP
        v_booking_count := v_booking_count + 1;

        -- Tentukan jumlah seat
        IF v_booking_count <= 10 THEN
            v_count := 2;
        ELSIF v_booking_count <= 15 THEN
            v_count := 4;
        ELSIF v_booking_count <= 17 THEN
            v_count := 3;
        ELSE
            v_count := 1 + floor(random() * 3)::INT; -- 1 to 3 seat random
        END IF;

        -- Ambil kursi aktif secara acak dari theater_room_id yang sesuai
        SELECT array_agg(id ORDER BY random())
        INTO v_seat_ids
        FROM seat
        WHERE theater_room_id = r_booking.theater_room_id
        AND is_active = TRUE;

        -- Masukkan seat yang diambil
        FOR i IN 1..LEAST(v_count, array_length(v_seat_ids, 1)) LOOP
            v_seat_id := v_seat_ids[i];
            INSERT INTO booking_seat (booking_id, seat_id)
            VALUES (r_booking.id, v_seat_id);
        END LOOP;
    END LOOP;

    RAISE NOTICE 'Insert booking_seat selesai.';
END $$;