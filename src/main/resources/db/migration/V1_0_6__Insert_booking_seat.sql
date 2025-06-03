-- DO $$
-- DECLARE
--     r_booking RECORD;
--     v_seat_ids BIGINT[];
--     v_seat_id BIGINT;
--     v_room_id BIGINT;
--     v_count INTEGER := 0;
--     v_booking_count INTEGER := 0;
--     row_labels TEXT[] := ARRAY['A','B','C','D','E'];
--     row_label TEXT;
--     is_vip BOOLEAN;
-- BEGIN
--     -- Siapkan dummy seat jika belum ada
--     IF NOT EXISTS (SELECT 1 FROM seat) THEN
--         FOR v_room_id IN 1..4 LOOP
--             FOR i IN 1..array_length(row_labels, 1) LOOP
--                 row_label := row_labels[i];
--                 FOR seat_num IN 1..20 LOOP
--                     -- Misalkan seat 1–5 adalah VIP
--                     is_vip := seat_num <= 5;
--                     INSERT INTO seat (
--                         theater_room_id, row_label, seat_number,
--                         seat_type, x_coordinate, y_coordinate,
--                         additional_price
--                     )
--                     VALUES (
--                         v_room_id,
--                         row_label,
--                         seat_num,
--                         CASE WHEN is_vip THEN 'VIP' ELSE 'regular' END,
--                         (seat_num * 5)::TEXT,
--                         (i * 10)::TEXT,
--                         CASE WHEN is_vip THEN 20000 ELSE 0 END
--                     );
--                 END LOOP;
--             END LOOP;
--         END LOOP;
--         RAISE NOTICE 'Dummy seat berhasil dimasukkan.';
--     ELSE
--         RAISE NOTICE 'Data seat sudah ada, tidak di-insert ulang.';
--     END IF;

--     -- Loop semua booking
--     FOR r_booking IN SELECT b.id, s.theater_room_id
--                      FROM booking b
--                      JOIN shows s ON s.id = b.shows_id
--     LOOP
--         v_booking_count := v_booking_count + 1;

--         -- Tentukan jumlah seat
--         IF v_booking_count <= 10 THEN
--             v_count := 2;
--         ELSIF v_booking_count <= 15 THEN
--             v_count := 4;
--         ELSIF v_booking_count <= 17 THEN
--             v_count := 3;
--         ELSE
--             v_count := 1 + floor(random() * 3)::INT; -- 1 to 3 seat random
--         END IF;

--         -- Ambil kursi aktif secara acak dari theater_room_id yang sesuai
--         SELECT array_agg(id ORDER BY random())
--         INTO v_seat_ids
--         FROM seat
--         WHERE theater_room_id = r_booking.theater_room_id
--         AND is_active = TRUE;

--         -- Masukkan seat yang diambil
--         FOR i IN 1..LEAST(v_count, array_length(v_seat_ids, 1)) LOOP
--             v_seat_id := v_seat_ids[i];
--             INSERT INTO booking_seat (booking_id, seat_id)
--             VALUES (r_booking.id, v_seat_id)
--             ON CONFLICT DO NOTHING; -- ⬅️ ini penting untuk menghindari duplikat error
--         END LOOP;
--     END LOOP;

--     RAISE NOTICE 'Insert booking_seat selesai.';
-- END $$;

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(1, 'A', 1, 'VIP', '5', '10', 20000.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(1, 'A', 2, 'VIP', '10', '10', 20000.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(1, 'A', 3, 'VIP', '15', '10', 20000.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(1, 'A', 4, 'VIP', '20', '10', 20000.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(1, 'A', 5, 'VIP', '25', '10', 20000.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(1, 'A', 6, 'regular', '30', '10', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(1, 'A', 7, 'regular', '35', '10', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(1, 'A', 8, 'regular', '40', '10', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(1, 'A', 9, 'regular', '45', '10', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(1, 'A', 10, 'regular', '50', '10', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(1, 'A', 11, 'regular', '55', '10', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(1, 'A', 12, 'regular', '60', '10', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(1, 'A', 13, 'regular', '65', '10', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(1, 'A', 14, 'regular', '70', '10', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(1, 'A', 15, 'regular', '75', '10', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(1, 'A', 16, 'regular', '80', '10', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(1, 'A', 17, 'regular', '85', '10', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(1, 'A', 18, 'regular', '90', '10', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(1, 'A', 19, 'regular', '95', '10', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(1, 'A', 20, 'regular', '100', '10', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(1, 'B', 1, 'VIP', '5', '20', 20000.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(1, 'B', 2, 'VIP', '10', '20', 20000.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(1, 'B', 3, 'VIP', '15', '20', 20000.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(1, 'B', 4, 'VIP', '20', '20', 20000.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(1, 'B', 5, 'VIP', '25', '20', 20000.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(1, 'B', 6, 'regular', '30', '20', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(1, 'B', 7, 'regular', '35', '20', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(1, 'B', 8, 'regular', '40', '20', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(1, 'B', 9, 'regular', '45', '20', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(1, 'B', 10, 'regular', '50', '20', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(1, 'B', 11, 'regular', '55', '20', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(1, 'B', 12, 'regular', '60', '20', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(1, 'B', 13, 'regular', '65', '20', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(1, 'B', 14, 'regular', '70', '20', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(1, 'B', 15, 'regular', '75', '20', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(1, 'B', 16, 'regular', '80', '20', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(1, 'B', 17, 'regular', '85', '20', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(1, 'B', 18, 'regular', '90', '20', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(1, 'B', 19, 'regular', '95', '20', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(1, 'B', 20, 'regular', '100', '20', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(1, 'C', 1, 'VIP', '5', '30', 20000.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(1, 'C', 2, 'VIP', '10', '30', 20000.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(1, 'C', 3, 'VIP', '15', '30', 20000.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(1, 'C', 4, 'VIP', '20', '30', 20000.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(1, 'C', 5, 'VIP', '25', '30', 20000.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(1, 'C', 6, 'regular', '30', '30', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(1, 'C', 7, 'regular', '35', '30', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(1, 'C', 8, 'regular', '40', '30', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(1, 'C', 9, 'regular', '45', '30', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(1, 'C', 10, 'regular', '50', '30', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(1, 'C', 11, 'regular', '55', '30', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(1, 'C', 12, 'regular', '60', '30', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(1, 'C', 13, 'regular', '65', '30', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(1, 'C', 14, 'regular', '70', '30', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(1, 'C', 15, 'regular', '75', '30', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(1, 'C', 16, 'regular', '80', '30', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(1, 'C', 17, 'regular', '85', '30', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(1, 'C', 18, 'regular', '90', '30', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(1, 'C', 19, 'regular', '95', '30', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(1, 'C', 20, 'regular', '100', '30', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(1, 'D', 1, 'VIP', '5', '40', 20000.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(1, 'D', 2, 'VIP', '10', '40', 20000.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(1, 'D', 3, 'VIP', '15', '40', 20000.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(1, 'D', 4, 'VIP', '20', '40', 20000.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(1, 'D', 5, 'VIP', '25', '40', 20000.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(1, 'D', 6, 'regular', '30', '40', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(1, 'D', 7, 'regular', '35', '40', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(1, 'D', 8, 'regular', '40', '40', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(1, 'D', 9, 'regular', '45', '40', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(1, 'D', 10, 'regular', '50', '40', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(1, 'D', 11, 'regular', '55', '40', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(1, 'D', 12, 'regular', '60', '40', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(1, 'D', 13, 'regular', '65', '40', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(1, 'D', 14, 'regular', '70', '40', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(1, 'D', 15, 'regular', '75', '40', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(1, 'D', 16, 'regular', '80', '40', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(1, 'D', 17, 'regular', '85', '40', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(1, 'D', 18, 'regular', '90', '40', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(1, 'D', 19, 'regular', '95', '40', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(1, 'D', 20, 'regular', '100', '40', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(1, 'E', 1, 'VIP', '5', '50', 20000.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(1, 'E', 2, 'VIP', '10', '50', 20000.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(1, 'E', 3, 'VIP', '15', '50', 20000.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(1, 'E', 4, 'VIP', '20', '50', 20000.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(1, 'E', 5, 'VIP', '25', '50', 20000.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(1, 'E', 6, 'regular', '30', '50', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(1, 'E', 7, 'regular', '35', '50', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(1, 'E', 8, 'regular', '40', '50', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(1, 'E', 9, 'regular', '45', '50', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(1, 'E', 10, 'regular', '50', '50', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(1, 'E', 11, 'regular', '55', '50', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(1, 'E', 12, 'regular', '60', '50', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(1, 'E', 13, 'regular', '65', '50', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(1, 'E', 14, 'regular', '70', '50', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(1, 'E', 15, 'regular', '75', '50', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(1, 'E', 16, 'regular', '80', '50', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(1, 'E', 17, 'regular', '85', '50', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(1, 'E', 18, 'regular', '90', '50', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(1, 'E', 19, 'regular', '95', '50', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(1, 'E', 20, 'regular', '100', '50', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(2, 'A', 1, 'VIP', '5', '10', 20000.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(2, 'A', 2, 'VIP', '10', '10', 20000.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(2, 'A', 3, 'VIP', '15', '10', 20000.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(2, 'A', 4, 'VIP', '20', '10', 20000.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(2, 'A', 5, 'VIP', '25', '10', 20000.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(2, 'A', 6, 'regular', '30', '10', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(2, 'A', 7, 'regular', '35', '10', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(2, 'A', 8, 'regular', '40', '10', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(2, 'A', 9, 'regular', '45', '10', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(2, 'A', 10, 'regular', '50', '10', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(2, 'A', 11, 'regular', '55', '10', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(2, 'A', 12, 'regular', '60', '10', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(2, 'A', 13, 'regular', '65', '10', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(2, 'A', 14, 'regular', '70', '10', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(2, 'A', 15, 'regular', '75', '10', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(2, 'A', 16, 'regular', '80', '10', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(2, 'A', 17, 'regular', '85', '10', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(2, 'A', 18, 'regular', '90', '10', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(2, 'A', 19, 'regular', '95', '10', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(2, 'A', 20, 'regular', '100', '10', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(2, 'B', 1, 'VIP', '5', '20', 20000.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(2, 'B', 2, 'VIP', '10', '20', 20000.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(2, 'B', 3, 'VIP', '15', '20', 20000.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(2, 'B', 4, 'VIP', '20', '20', 20000.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(2, 'B', 5, 'VIP', '25', '20', 20000.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(2, 'B', 6, 'regular', '30', '20', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(2, 'B', 7, 'regular', '35', '20', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(2, 'B', 8, 'regular', '40', '20', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(2, 'B', 9, 'regular', '45', '20', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(2, 'B', 10, 'regular', '50', '20', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(2, 'B', 11, 'regular', '55', '20', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(2, 'B', 12, 'regular', '60', '20', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(2, 'B', 13, 'regular', '65', '20', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(2, 'B', 14, 'regular', '70', '20', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(2, 'B', 15, 'regular', '75', '20', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(2, 'B', 16, 'regular', '80', '20', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(2, 'B', 17, 'regular', '85', '20', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(2, 'B', 18, 'regular', '90', '20', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(2, 'B', 19, 'regular', '95', '20', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(2, 'B', 20, 'regular', '100', '20', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(2, 'C', 1, 'VIP', '5', '30', 20000.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(2, 'C', 2, 'VIP', '10', '30', 20000.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(2, 'C', 3, 'VIP', '15', '30', 20000.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(2, 'C', 4, 'VIP', '20', '30', 20000.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(2, 'C', 5, 'VIP', '25', '30', 20000.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(2, 'C', 6, 'regular', '30', '30', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(2, 'C', 7, 'regular', '35', '30', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(2, 'C', 8, 'regular', '40', '30', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(2, 'C', 9, 'regular', '45', '30', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(2, 'C', 10, 'regular', '50', '30', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(2, 'C', 11, 'regular', '55', '30', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(2, 'C', 12, 'regular', '60', '30', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(2, 'C', 13, 'regular', '65', '30', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(2, 'C', 14, 'regular', '70', '30', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(2, 'C', 15, 'regular', '75', '30', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(2, 'C', 16, 'regular', '80', '30', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(2, 'C', 17, 'regular', '85', '30', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(2, 'C', 18, 'regular', '90', '30', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(2, 'C', 19, 'regular', '95', '30', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(2, 'C', 20, 'regular', '100', '30', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(2, 'D', 1, 'VIP', '5', '40', 20000.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(2, 'D', 2, 'VIP', '10', '40', 20000.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(2, 'D', 3, 'VIP', '15', '40', 20000.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(2, 'D', 4, 'VIP', '20', '40', 20000.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(2, 'D', 5, 'VIP', '25', '40', 20000.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(2, 'D', 6, 'regular', '30', '40', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(2, 'D', 7, 'regular', '35', '40', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(2, 'D', 8, 'regular', '40', '40', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(2, 'D', 9, 'regular', '45', '40', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(2, 'D', 10, 'regular', '50', '40', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(2, 'D', 11, 'regular', '55', '40', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(2, 'D', 12, 'regular', '60', '40', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(2, 'D', 13, 'regular', '65', '40', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(2, 'D', 14, 'regular', '70', '40', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(2, 'D', 15, 'regular', '75', '40', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(2, 'D', 16, 'regular', '80', '40', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(2, 'D', 17, 'regular', '85', '40', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(2, 'D', 18, 'regular', '90', '40', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(2, 'D', 19, 'regular', '95', '40', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(2, 'D', 20, 'regular', '100', '40', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(2, 'E', 1, 'VIP', '5', '50', 20000.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(2, 'E', 2, 'VIP', '10', '50', 20000.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(2, 'E', 3, 'VIP', '15', '50', 20000.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(2, 'E', 4, 'VIP', '20', '50', 20000.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(2, 'E', 5, 'VIP', '25', '50', 20000.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(2, 'E', 6, 'regular', '30', '50', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(2, 'E', 7, 'regular', '35', '50', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(2, 'E', 8, 'regular', '40', '50', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(2, 'E', 9, 'regular', '45', '50', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(2, 'E', 10, 'regular', '50', '50', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(2, 'E', 11, 'regular', '55', '50', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(2, 'E', 12, 'regular', '60', '50', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(2, 'E', 13, 'regular', '65', '50', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(2, 'E', 14, 'regular', '70', '50', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(2, 'E', 15, 'regular', '75', '50', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(2, 'E', 16, 'regular', '80', '50', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(2, 'E', 17, 'regular', '85', '50', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(2, 'E', 18, 'regular', '90', '50', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(2, 'E', 19, 'regular', '95', '50', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(2, 'E', 20, 'regular', '100', '50', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(3, 'A', 1, 'VIP', '5', '10', 20000.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(3, 'A', 2, 'VIP', '10', '10', 20000.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(3, 'A', 3, 'VIP', '15', '10', 20000.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(3, 'A', 4, 'VIP', '20', '10', 20000.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(3, 'A', 5, 'VIP', '25', '10', 20000.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(3, 'A', 6, 'regular', '30', '10', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(3, 'A', 7, 'regular', '35', '10', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(3, 'A', 8, 'regular', '40', '10', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(3, 'A', 9, 'regular', '45', '10', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(3, 'A', 10, 'regular', '50', '10', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(3, 'A', 11, 'regular', '55', '10', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(3, 'A', 12, 'regular', '60', '10', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(3, 'A', 13, 'regular', '65', '10', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(3, 'A', 14, 'regular', '70', '10', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(3, 'A', 15, 'regular', '75', '10', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(3, 'A', 16, 'regular', '80', '10', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(3, 'A', 17, 'regular', '85', '10', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(3, 'A', 18, 'regular', '90', '10', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(3, 'A', 19, 'regular', '95', '10', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(3, 'A', 20, 'regular', '100', '10', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(3, 'B', 1, 'VIP', '5', '20', 20000.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(3, 'B', 2, 'VIP', '10', '20', 20000.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(3, 'B', 3, 'VIP', '15', '20', 20000.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(3, 'B', 4, 'VIP', '20', '20', 20000.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(3, 'B', 5, 'VIP', '25', '20', 20000.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(3, 'B', 6, 'regular', '30', '20', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(3, 'B', 7, 'regular', '35', '20', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(3, 'B', 8, 'regular', '40', '20', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(3, 'B', 9, 'regular', '45', '20', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(3, 'B', 10, 'regular', '50', '20', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(3, 'B', 11, 'regular', '55', '20', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(3, 'B', 12, 'regular', '60', '20', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(3, 'B', 13, 'regular', '65', '20', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(3, 'B', 14, 'regular', '70', '20', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(3, 'B', 15, 'regular', '75', '20', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(3, 'B', 16, 'regular', '80', '20', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(3, 'B', 17, 'regular', '85', '20', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(3, 'B', 18, 'regular', '90', '20', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(3, 'B', 19, 'regular', '95', '20', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(3, 'B', 20, 'regular', '100', '20', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(3, 'C', 1, 'VIP', '5', '30', 20000.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(3, 'C', 2, 'VIP', '10', '30', 20000.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(3, 'C', 3, 'VIP', '15', '30', 20000.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(3, 'C', 4, 'VIP', '20', '30', 20000.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(3, 'C', 5, 'VIP', '25', '30', 20000.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(3, 'C', 6, 'regular', '30', '30', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(3, 'C', 7, 'regular', '35', '30', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(3, 'C', 8, 'regular', '40', '30', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(3, 'C', 9, 'regular', '45', '30', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(3, 'C', 10, 'regular', '50', '30', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(3, 'C', 11, 'regular', '55', '30', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(3, 'C', 12, 'regular', '60', '30', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(3, 'C', 13, 'regular', '65', '30', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(3, 'C', 14, 'regular', '70', '30', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(3, 'C', 15, 'regular', '75', '30', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(3, 'C', 16, 'regular', '80', '30', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(3, 'C', 17, 'regular', '85', '30', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(3, 'C', 18, 'regular', '90', '30', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(3, 'C', 19, 'regular', '95', '30', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(3, 'C', 20, 'regular', '100', '30', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(3, 'D', 1, 'VIP', '5', '40', 20000.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(3, 'D', 2, 'VIP', '10', '40', 20000.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(3, 'D', 3, 'VIP', '15', '40', 20000.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(3, 'D', 4, 'VIP', '20', '40', 20000.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(3, 'D', 5, 'VIP', '25', '40', 20000.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(3, 'D', 6, 'regular', '30', '40', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(3, 'D', 7, 'regular', '35', '40', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(3, 'D', 8, 'regular', '40', '40', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(3, 'D', 9, 'regular', '45', '40', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(3, 'D', 10, 'regular', '50', '40', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(3, 'D', 11, 'regular', '55', '40', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(3, 'D', 12, 'regular', '60', '40', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(3, 'D', 13, 'regular', '65', '40', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(3, 'D', 14, 'regular', '70', '40', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(3, 'D', 15, 'regular', '75', '40', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(3, 'D', 16, 'regular', '80', '40', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(3, 'D', 17, 'regular', '85', '40', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(3, 'D', 18, 'regular', '90', '40', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(3, 'D', 19, 'regular', '95', '40', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(3, 'D', 20, 'regular', '100', '40', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(3, 'E', 1, 'VIP', '5', '50', 20000.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(3, 'E', 2, 'VIP', '10', '50', 20000.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(3, 'E', 3, 'VIP', '15', '50', 20000.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(3, 'E', 4, 'VIP', '20', '50', 20000.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(3, 'E', 5, 'VIP', '25', '50', 20000.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(3, 'E', 6, 'regular', '30', '50', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(3, 'E', 7, 'regular', '35', '50', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(3, 'E', 8, 'regular', '40', '50', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(3, 'E', 9, 'regular', '45', '50', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(3, 'E', 10, 'regular', '50', '50', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(3, 'E', 11, 'regular', '55', '50', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(3, 'E', 12, 'regular', '60', '50', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(3, 'E', 13, 'regular', '65', '50', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(3, 'E', 14, 'regular', '70', '50', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(3, 'E', 15, 'regular', '75', '50', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(3, 'E', 16, 'regular', '80', '50', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(3, 'E', 17, 'regular', '85', '50', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(3, 'E', 18, 'regular', '90', '50', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(3, 'E', 19, 'regular', '95', '50', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(3, 'E', 20, 'regular', '100', '50', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(4, 'A', 1, 'VIP', '5', '10', 20000.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(4, 'A', 2, 'VIP', '10', '10', 20000.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(4, 'A', 3, 'VIP', '15', '10', 20000.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(4, 'A', 4, 'VIP', '20', '10', 20000.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(4, 'A', 5, 'VIP', '25', '10', 20000.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(4, 'A', 6, 'regular', '30', '10', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(4, 'A', 7, 'regular', '35', '10', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(4, 'A', 8, 'regular', '40', '10', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(4, 'A', 9, 'regular', '45', '10', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(4, 'A', 10, 'regular', '50', '10', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(4, 'A', 11, 'regular', '55', '10', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(4, 'A', 12, 'regular', '60', '10', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(4, 'A', 13, 'regular', '65', '10', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(4, 'A', 14, 'regular', '70', '10', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(4, 'A', 15, 'regular', '75', '10', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(4, 'A', 16, 'regular', '80', '10', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(4, 'A', 17, 'regular', '85', '10', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(4, 'A', 18, 'regular', '90', '10', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(4, 'A', 19, 'regular', '95', '10', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(4, 'A', 20, 'regular', '100', '10', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(4, 'B', 1, 'VIP', '5', '20', 20000.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(4, 'B', 2, 'VIP', '10', '20', 20000.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(4, 'B', 3, 'VIP', '15', '20', 20000.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(4, 'B', 4, 'VIP', '20', '20', 20000.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(4, 'B', 5, 'VIP', '25', '20', 20000.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(4, 'B', 6, 'regular', '30', '20', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(4, 'B', 7, 'regular', '35', '20', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(4, 'B', 8, 'regular', '40', '20', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(4, 'B', 9, 'regular', '45', '20', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(4, 'B', 10, 'regular', '50', '20', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(4, 'B', 11, 'regular', '55', '20', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(4, 'B', 12, 'regular', '60', '20', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(4, 'B', 13, 'regular', '65', '20', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(4, 'B', 14, 'regular', '70', '20', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(4, 'B', 15, 'regular', '75', '20', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(4, 'B', 16, 'regular', '80', '20', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(4, 'B', 17, 'regular', '85', '20', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(4, 'B', 18, 'regular', '90', '20', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(4, 'B', 19, 'regular', '95', '20', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(4, 'B', 20, 'regular', '100', '20', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(4, 'C', 1, 'VIP', '5', '30', 20000.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(4, 'C', 2, 'VIP', '10', '30', 20000.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(4, 'C', 3, 'VIP', '15', '30', 20000.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(4, 'C', 4, 'VIP', '20', '30', 20000.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(4, 'C', 5, 'VIP', '25', '30', 20000.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(4, 'C', 6, 'regular', '30', '30', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(4, 'C', 7, 'regular', '35', '30', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(4, 'C', 8, 'regular', '40', '30', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(4, 'C', 9, 'regular', '45', '30', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(4, 'C', 10, 'regular', '50', '30', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(4, 'C', 11, 'regular', '55', '30', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(4, 'C', 12, 'regular', '60', '30', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(4, 'C', 13, 'regular', '65', '30', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(4, 'C', 14, 'regular', '70', '30', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(4, 'C', 15, 'regular', '75', '30', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(4, 'C', 16, 'regular', '80', '30', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(4, 'C', 17, 'regular', '85', '30', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(4, 'C', 18, 'regular', '90', '30', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(4, 'C', 19, 'regular', '95', '30', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(4, 'C', 20, 'regular', '100', '30', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(4, 'D', 1, 'VIP', '5', '40', 20000.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(4, 'D', 2, 'VIP', '10', '40', 20000.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(4, 'D', 3, 'VIP', '15', '40', 20000.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(4, 'D', 4, 'VIP', '20', '40', 20000.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(4, 'D', 5, 'VIP', '25', '40', 20000.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(4, 'D', 6, 'regular', '30', '40', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(4, 'D', 7, 'regular', '35', '40', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(4, 'D', 8, 'regular', '40', '40', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(4, 'D', 9, 'regular', '45', '40', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(4, 'D', 10, 'regular', '50', '40', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(4, 'D', 11, 'regular', '55', '40', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(4, 'D', 12, 'regular', '60', '40', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(4, 'D', 13, 'regular', '65', '40', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(4, 'D', 14, 'regular', '70', '40', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(4, 'D', 15, 'regular', '75', '40', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(4, 'D', 16, 'regular', '80', '40', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(4, 'D', 17, 'regular', '85', '40', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(4, 'D', 18, 'regular', '90', '40', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(4, 'D', 19, 'regular', '95', '40', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(4, 'D', 20, 'regular', '100', '40', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(4, 'E', 1, 'VIP', '5', '50', 20000.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(4, 'E', 2, 'VIP', '10', '50', 20000.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(4, 'E', 3, 'VIP', '15', '50', 20000.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(4, 'E', 4, 'VIP', '20', '50', 20000.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(4, 'E', 5, 'VIP', '25', '50', 20000.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(4, 'E', 6, 'regular', '30', '50', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(4, 'E', 7, 'regular', '35', '50', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(4, 'E', 8, 'regular', '40', '50', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(4, 'E', 9, 'regular', '45', '50', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(4, 'E', 10, 'regular', '50', '50', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(4, 'E', 11, 'regular', '55', '50', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(4, 'E', 12, 'regular', '60', '50', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(4, 'E', 13, 'regular', '65', '50', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(4, 'E', 14, 'regular', '70', '50', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(4, 'E', 15, 'regular', '75', '50', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(4, 'E', 16, 'regular', '80', '50', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(4, 'E', 17, 'regular', '85', '50', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(4, 'E', 18, 'regular', '90', '50', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(4, 'E', 19, 'regular', '95', '50', 0.00, true);
INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active) VALUES(4, 'E', 20, 'regular', '100', '50', 0.00, true);