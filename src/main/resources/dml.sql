-- Insert 10 data ke tabel genre
INSERT INTO genre (name, description, is_active) VALUES
('Action', 'Fast-paced and filled with excitement.', true),
('Comedy', 'Humorous and entertaining content.', true),
('Drama', 'Serious and emotional storytelling.', true),
('Horror', 'Designed to scare and thrill viewers.', true),
('Romance', 'Love and relationships at the center.', true),
('Sci-Fi', 'Science-based fictional stories.', true),
('Fantasy', 'Magical and mythical themes.', true),
('Thriller', 'Suspenseful and intense scenes.', true),
('Documentary', 'Non-fictional factual content.', true),
('Animation', 'Animated motion pictures.', true);

-- Insert 1 data ke tabel country: Indonesia
INSERT INTO country (name, code, is_active) VALUES
('Indonesia', 'ID', true);

-- Insert 5 provinsi di pulau Jawa (mengacu pada country_id = 1)
INSERT INTO province (name, country_id, is_active) VALUES
('Jakarta', 1, true),
('Banten', 1, true),
('West Java', 1, true),
('Central Java', 1, true),
('East Java', 1, true);

-- Insert 10 kota (2 per provinsi)
INSERT INTO city (name, province_id, is_active) VALUES
('Jakarta Selatan', 1, true),
('Jakarta Utara', 1, true),
('Serang', 2, true),
('Tangerang', 2, true),
('Bandung', 3, true),
('Bekasi', 3, true),
('Semarang', 4, true),
('Solo', 4, true),
('Surabaya', 5, true),
('Malang', 5, true);

-- Insert 20 data ke tabel theater
INSERT INTO theater (name, code, email, phone, image_path, is_active) VALUES
('Cineplex Jakarta Selatan', 'TH01', 'jaksel@cineplex.id', '021-123456', '/images/th1.jpg', true),
('Cineplex Jakarta Utara', 'TH02', 'jakut@cineplex.id', '021-123457', '/images/th2.jpg', true),
('Cineplex Serang', 'TH03', 'serang@cineplex.id', '0254-123456', '/images/th3.jpg', true),
('Cineplex Tangerang', 'TH04', 'tangerang@cineplex.id', '021-123458', '/images/th4.jpg', true),
('Cineplex Bandung', 'TH05', 'bandung@cineplex.id', '022-123456', '/images/th5.jpg', true),
('Cineplex Bekasi', 'TH06', 'bekasi@cineplex.id', '021-123459', '/images/th6.jpg', true),
('Cineplex Semarang', 'TH07', 'semarang@cineplex.id', '024-123456', '/images/th7.jpg', true),
('Cineplex Solo', 'TH08', 'solo@cineplex.id', '0271-123456', '/images/th8.jpg', true),
('Cineplex Surabaya', 'TH09', 'surabaya@cineplex.id', '031-123456', '/images/th9.jpg', true),
('Cineplex Malang', 'TH10', 'malang@cineplex.id', '0341-123456', '/images/th10.jpg', true),
('Cinema XXI A', 'TH11', 'xxi-a@cinema.id', '021-555111', '/images/th11.jpg', true),
('Cinema XXI B', 'TH12', 'xxi-b@cinema.id', '021-555112', '/images/th12.jpg', true),
('Cinema XXI C', 'TH13', 'xxi-c@cinema.id', '021-555113', '/images/th13.jpg', true),
('IMAX A', 'TH14', 'imax-a@cinema.id', '021-666111', '/images/th14.jpg', true),
('IMAX B', 'TH15', 'imax-b@cinema.id', '021-666112', '/images/th15.jpg', true),
('IMAX C', 'TH16', 'imax-c@cinema.id', '021-666113', '/images/th16.jpg', true),
('Platinum Cineplex A', 'TH17', 'platinum-a@cineplex.id', '021-777111', '/images/th17.jpg', true),
('Platinum Cineplex B', 'TH18', 'platinum-b@cineplex.id', '021-777112', '/images/th18.jpg', true),
('CGV A', 'TH19', 'cgv-a@cineplex.id', '021-888111', '/images/th19.jpg', true),
('CGV B', 'TH20', 'cgv-b@cineplex.id', '021-888112', '/images/th20.jpg', true);

-- Insert 40 data ke theater_room (2 ruangan per teater)
INSERT INTO theater_room (name, code, theater_id, is_active) VALUES
('Room 1 - TH01', 'R001', 1, true),
('Room 2 - TH01', 'R002', 1, true),
('Room 1 - TH02', 'R003', 2, true),
('Room 2 - TH02', 'R004', 2, true),
('Room 1 - TH03', 'R005', 3, true),
('Room 2 - TH03', 'R006', 3, true),
('Room 1 - TH04', 'R007', 4, true),
('Room 2 - TH04', 'R008', 4, true),
('Room 1 - TH05', 'R009', 5, true),
('Room 2 - TH05', 'R010', 5, true),
('Room 1 - TH06', 'R011', 6, true),
('Room 2 - TH06', 'R012', 6, true),
('Room 1 - TH07', 'R013', 7, true),
('Room 2 - TH07', 'R014', 7, true),
('Room 1 - TH08', 'R015', 8, true),
('Room 2 - TH08', 'R016', 8, true),
('Room 1 - TH09', 'R017', 9, true),
('Room 2 - TH09', 'R018', 9, true),
('Room 1 - TH10', 'R019', 10, true),
('Room 2 - TH10', 'R020', 10, true),
('Room 1 - TH11', 'R021', 11, true),
('Room 2 - TH11', 'R022', 11, true),
('Room 1 - TH12', 'R023', 12, true),
('Room 2 - TH12', 'R024', 12, true),
('Room 1 - TH13', 'R025', 13, true),
('Room 2 - TH13', 'R026', 13, true),
('Room 1 - TH14', 'R027', 14, true),
('Room 2 - TH14', 'R028', 14, true),
('Room 1 - TH15', 'R029', 15, true),
('Room 2 - TH15', 'R030', 15, true),
('Room 1 - TH16', 'R031', 16, true),
('Room 2 - TH16', 'R032', 16, true),
('Room 1 - TH17', 'R033', 17, true),
('Room 2 - TH17', 'R034', 17, true),
('Room 1 - TH18', 'R035', 18, true),
('Room 2 - TH18', 'R036', 18, true),
('Room 1 - TH19', 'R037', 19, true),
('Room 2 - TH19', 'R038', 19, true),
('Room 1 - TH20', 'R039', 20, true),
('Room 2 - TH20', 'R040', 20, true);

-- Insert 20 data ke theater_address (1 per teater)
INSERT INTO theater_address (name, city_id, address_line, theater_id, is_active) VALUES
('Addr TH01', 1, 'Jl. Pahlawan No.1, Jaksel', 1, true),
('Addr TH02', 2, 'Jl. Merdeka No.2, Jakut', 2, true),
('Addr TH03', 3, 'Jl. A. Yani No.3, Serang', 3, true),
('Addr TH04', 4, 'Jl. Raya Serpong No.4, Tangerang', 4, true),
('Addr TH05', 5, 'Jl. Braga No.5, Bandung', 5, true),
('Addr TH06', 6, 'Jl. Kalimalang No.6, Bekasi', 6, true),
('Addr TH07', 7, 'Jl. Pandanaran No.7, Semarang', 7, true),
('Addr TH08', 8, 'Jl. Slamet Riyadi No.8, Solo', 8, true),
('Addr TH09', 9, 'Jl. Darmo No.9, Surabaya', 9, true),
('Addr TH10', 10, 'Jl. Ijen No.10, Malang', 10, true),
('Addr TH11', 1, 'Jl. Cinema XXI A, Jaksel', 11, true),
('Addr TH12', 2, 'Jl. Cinema XXI B, Jakut', 12, true),
('Addr TH13', 6, 'Jl. Cinema XXI C, Bekasi', 13, true),
('Addr TH14', 9, 'Jl. IMAX A, Surabaya', 14, true),
('Addr TH15', 10, 'Jl. IMAX B, Malang', 15, true),
('Addr TH16', 7, 'Jl. IMAX C, Semarang', 16, true),
('Addr TH17', 5, 'Jl. Platinum A, Bandung', 17, true),
('Addr TH18', 4, 'Jl. Platinum B, Tangerang', 18, true),
('Addr TH19', 3, 'Jl. CGV A, Serang', 19, true),
('Addr TH20', 1, 'Jl. CGV B, Jaksel', 20, true);

-- Insert Users

INSERT INTO users (username, name, email, phone, password, birth_date, image_path, is_active)
VALUES ('user1', 'User 1', 'user1@example.com', '081234567801', 'hashed_password_1', 
        '1991-01-01', 
        '/images/user1.jpg', true);

INSERT INTO users (username, name, email, phone, password, birth_date, image_path, is_active)
VALUES ('user2', 'User 2', 'user2@example.com', '081234567802', 'hashed_password_2', 
        '1992-01-01', 
        '/images/user2.jpg', true);

INSERT INTO users (username, name, email, phone, password, birth_date, image_path, is_active)
VALUES ('user3', 'User 3', 'user3@example.com', '081234567803', 'hashed_password_3', 
        '1992-12-31', 
        '/images/user3.jpg', true);

INSERT INTO users (username, name, email, phone, password, birth_date, image_path, is_active)
VALUES ('user4', 'User 4', 'user4@example.com', '081234567804', 'hashed_password_4', 
        '1993-12-31', 
        '/images/user4.jpg', true);

INSERT INTO users (username, name, email, phone, password, birth_date, image_path, is_active)
VALUES ('user5', 'User 5', 'user5@example.com', '081234567805', 'hashed_password_5', 
        '1994-12-31', 
        '/images/user5.jpg', true);

INSERT INTO users (username, name, email, phone, password, birth_date, image_path, is_active)
VALUES ('user6', 'User 6', 'user6@example.com', '081234567806', 'hashed_password_6', 
        '1995-12-31', 
        '/images/user6.jpg', true);

INSERT INTO users (username, name, email, phone, password, birth_date, image_path, is_active)
VALUES ('user7', 'User 7', 'user7@example.com', '081234567807', 'hashed_password_7', 
        '1996-12-30', 
        '/images/user7.jpg', true);

INSERT INTO users (username, name, email, phone, password, birth_date, image_path, is_active)
VALUES ('user8', 'User 8', 'user8@example.com', '081234567808', 'hashed_password_8', 
        '1997-12-30', 
        '/images/user8.jpg', true);

INSERT INTO users (username, name, email, phone, password, birth_date, image_path, is_active)
VALUES ('user9', 'User 9', 'user9@example.com', '081234567809', 'hashed_password_9', 
        '1998-12-30', 
        '/images/user9.jpg', true);

INSERT INTO users (username, name, email, phone, password, birth_date, image_path, is_active)
VALUES ('user10', 'User 10', 'user10@example.com', '081234567810', 'hashed_password_10', 
        '1999-12-30', 
        '/images/user10.jpg', true);

INSERT INTO users (username, name, email, phone, password, birth_date, image_path, is_active)
VALUES ('user11', 'User 11', 'user11@example.com', '081234567811', 'hashed_password_11', 
        '2000-12-29', 
        '/images/user11.jpg', true);

INSERT INTO users (username, name, email, phone, password, birth_date, image_path, is_active)
VALUES ('user12', 'User 12', 'user12@example.com', '081234567812', 'hashed_password_12', 
        '2001-12-29', 
        '/images/user12.jpg', true);

INSERT INTO users (username, name, email, phone, password, birth_date, image_path, is_active)
VALUES ('user13', 'User 13', 'user13@example.com', '081234567813', 'hashed_password_13', 
        '2002-12-29', 
        '/images/user13.jpg', true);

INSERT INTO users (username, name, email, phone, password, birth_date, image_path, is_active)
VALUES ('user14', 'User 14', 'user14@example.com', '081234567814', 'hashed_password_14', 
        '2003-12-29', 
        '/images/user14.jpg', true);

INSERT INTO users (username, name, email, phone, password, birth_date, image_path, is_active)
VALUES ('user15', 'User 15', 'user15@example.com', '081234567815', 'hashed_password_15', 
        '2004-12-28', 
        '/images/user15.jpg', true);

INSERT INTO users (username, name, email, phone, password, birth_date, image_path, is_active)
VALUES ('user16', 'User 16', 'user16@example.com', '081234567816', 'hashed_password_16', 
        '2005-12-28', 
        '/images/user16.jpg', true);

INSERT INTO users (username, name, email, phone, password, birth_date, image_path, is_active)
VALUES ('user17', 'User 17', 'user17@example.com', '081234567817', 'hashed_password_17', 
        '2006-12-28', 
        '/images/user17.jpg', true);

INSERT INTO users (username, name, email, phone, password, birth_date, image_path, is_active)
VALUES ('user18', 'User 18', 'user18@example.com', '081234567818', 'hashed_password_18', 
        '2007-12-28', 
        '/images/user18.jpg', true);

INSERT INTO users (username, name, email, phone, password, birth_date, image_path, is_active)
VALUES ('user19', 'User 19', 'user19@example.com', '081234567819', 'hashed_password_19', 
        '2008-12-27', 
        '/images/user19.jpg', true);

INSERT INTO users (username, name, email, phone, password, birth_date, image_path, is_active)
VALUES ('user20', 'User 20', 'user20@example.com', '081234567820', 'hashed_password_20', 
        '2009-12-27', 
        '/images/user20.jpg', true);

-- Insert Users Address

INSERT INTO users_address (name, city_id, address_line, users_id, is_active)
VALUES ('Address 1', 2, 'Street 1 No.1', 1, true);

INSERT INTO users_address (name, city_id, address_line, users_id, is_active)
VALUES ('Address 2', 3, 'Street 2 No.2', 2, true);

INSERT INTO users_address (name, city_id, address_line, users_id, is_active)
VALUES ('Address 3', 4, 'Street 3 No.3', 3, true);

INSERT INTO users_address (name, city_id, address_line, users_id, is_active)
VALUES ('Address 4', 5, 'Street 4 No.4', 4, true);

INSERT INTO users_address (name, city_id, address_line, users_id, is_active)
VALUES ('Address 5', 6, 'Street 5 No.5', 5, true);

INSERT INTO users_address (name, city_id, address_line, users_id, is_active)
VALUES ('Address 6', 7, 'Street 6 No.6', 6, true);

INSERT INTO users_address (name, city_id, address_line, users_id, is_active)
VALUES ('Address 7', 8, 'Street 7 No.7', 7, true);

INSERT INTO users_address (name, city_id, address_line, users_id, is_active)
VALUES ('Address 8', 9, 'Street 8 No.8', 8, true);

INSERT INTO users_address (name, city_id, address_line, users_id, is_active)
VALUES ('Address 9', 10, 'Street 9 No.9', 9, true);

INSERT INTO users_address (name, city_id, address_line, users_id, is_active)
VALUES ('Address 10', 1, 'Street 10 No.10', 10, true);

INSERT INTO users_address (name, city_id, address_line, users_id, is_active)
VALUES ('Address 11', 2, 'Street 11 No.11', 11, true);

INSERT INTO users_address (name, city_id, address_line, users_id, is_active)
VALUES ('Address 12', 3, 'Street 12 No.12', 12, true);

INSERT INTO users_address (name, city_id, address_line, users_id, is_active)
VALUES ('Address 13', 4, 'Street 13 No.13', 13, true);

INSERT INTO users_address (name, city_id, address_line, users_id, is_active)
VALUES ('Address 14', 5, 'Street 14 No.14', 14, true);

INSERT INTO users_address (name, city_id, address_line, users_id, is_active)
VALUES ('Address 15', 6, 'Street 15 No.15', 15, true);

INSERT INTO users_address (name, city_id, address_line, users_id, is_active)
VALUES ('Address 16', 7, 'Street 16 No.16', 16, true);

INSERT INTO users_address (name, city_id, address_line, users_id, is_active)
VALUES ('Address 17', 8, 'Street 17 No.17', 17, true);

INSERT INTO users_address (name, city_id, address_line, users_id, is_active)
VALUES ('Address 18', 9, 'Street 18 No.18', 18, true);

INSERT INTO users_address (name, city_id, address_line, users_id, is_active)
VALUES ('Address 19', 10, 'Street 19 No.19', 19, true);

INSERT INTO users_address (name, city_id, address_line, users_id, is_active)
VALUES ('Address 20', 1, 'Street 20 No.20', 20, true);

-- Insert Languages
INSERT INTO languages (name, code, is_active) VALUES ('Bahasa Indonesia', 'ID', true);
INSERT INTO languages (name, code, is_active) VALUES ('English', 'EN', true);
INSERT INTO languages (name, code, is_active) VALUES ('Spanish', 'ES', true);
INSERT INTO languages (name, code, is_active) VALUES ('French', 'FR', true);
INSERT INTO languages (name, code, is_active) VALUES ('Japanese', 'JP', true);
-- Insert Films

-- Insert 20 films
INSERT INTO film (id, title, description, languages_id, duration, image_path, trailer_path, release_date, rating, is_active) VALUES
  (1, 'Edge of Tomorrow', 'Sci-fi action thriller.', 1, INTERVAL '1 hour 50 minutes', 'img1.jpg', 'trailer1.mp4', NOW(), 'D', TRUE),
  (2, 'Spirited Away', 'Japanese fantasy animation.', 3, INTERVAL '2 hours 5 minutes', 'img2.jpg', 'trailer2.mp4', NOW(), 'BO', TRUE),
  (3, 'Parasite', 'Thrilling social drama.', 2, INTERVAL '2 hours 12 minutes', 'img3.jpg', 'trailer3.mp4', NOW(), 'R', TRUE),
  (4, 'Interstellar', 'Epic space exploration.', 1, INTERVAL '2 hours 49 minutes', 'img4.jpg', 'trailer4.mp4', NOW(), 'D', TRUE),
  (5, 'Joker', 'Psychological thriller.', 1, INTERVAL '2 hours 2 minutes', 'img5.jpg', 'trailer5.mp4', NOW(), 'R', TRUE),
  (6, 'Avengers: Endgame', 'Superhero finale.', 1, INTERVAL '3 hours 2 minutes', 'img6.jpg', 'trailer6.mp4', NOW(), 'D', TRUE),
  (7, 'The Godfather', 'Crime family epic.', 1, INTERVAL '2 hours 55 minutes', 'img7.jpg', 'trailer7.mp4', NOW(), 'R', TRUE),
  (8, 'The Dark Knight', 'Batman vs Joker.', 1, INTERVAL '2 hours 32 minutes', 'img8.jpg', 'trailer8.mp4', NOW(), 'D', TRUE),
  (9, 'La La Land', 'Musical romance.', 4, INTERVAL '2 hours 8 minutes', 'img9.jpg', 'trailer9.mp4', NOW(), 'D', TRUE),
  (10, 'Inception', 'Dream within dreams.', 1, INTERVAL '2 hours 28 minutes', 'img10.jpg', 'trailer10.mp4', NOW(), 'D', TRUE),
  (11, 'Soul', 'Animated jazz journey.', 1, INTERVAL '1 hour 40 minutes', 'img11.jpg', 'trailer11.mp4', NOW(), 'BO', TRUE),
  (12, 'Coco', 'Day of the Dead adventure.', 5, INTERVAL '1 hour 45 minutes', 'img12.jpg', 'trailer12.mp4', NOW(), 'BO', TRUE),
  (13, 'Your Name', 'Body-swapping teens.', 3, INTERVAL '1 hour 46 minutes', 'img13.jpg', 'trailer13.mp4', NOW(), 'BO', TRUE),
  (14, 'Dune', 'Sci-fi desert saga.', 1, INTERVAL '2 hours 35 minutes', 'img14.jpg', 'trailer14.mp4', NOW(), 'D', TRUE),
  (15, 'Titanic', 'Epic romance disaster.', 1, INTERVAL '3 hours 14 minutes', 'img15.jpg', 'trailer15.mp4', NOW(), 'D', TRUE),
  (16, 'Get Out', 'Psychological horror.', 1, INTERVAL '1 hour 44 minutes', 'img16.jpg', 'trailer16.mp4', NOW(), 'R', TRUE),
  (17, 'Whiplash', 'Intense jazz drama.', 1, INTERVAL '1 hour 47 minutes', 'img17.jpg', 'trailer17.mp4', NOW(), 'R', TRUE),
  (18, 'The Matrix', 'Virtual reality rebellion.', 1, INTERVAL '2 hours 16 minutes', 'img18.jpg', 'trailer18.mp4', NOW(), 'R', TRUE),
  (19, 'Inside Out', 'Emotions adventure.', 1, INTERVAL '1 hour 35 minutes', 'img19.jpg', 'trailer19.mp4', NOW(), 'BO', TRUE),
  (20, 'The Notebook', 'Romantic drama.', 2, INTERVAL '2 hours 3 minutes', 'img20.jpg', 'trailer20.mp4', NOW(), 'D', TRUE);

-- Link each film with genres and subtitles (for simplicity, each film gets 2 genres and 2 subtitles)
INSERT INTO film_genre (film_id, genre_id) VALUES
  (1,1),(1,5),(2,2),(2,3),(3,2),(3,4),(4,1),(4,5),(5,2),(5,4),
  (6,1),(6,5),(7,2),(7,1),(8,1),(8,4),(9,2),(9,3),(10,1),(10,5),
  (11,3),(11,2),(12,3),(12,5),(13,3),(13,5),(14,1),(14,5),(15,2),(15,3),
  (16,4),(16,2),(17,2),(17,3),(18,1),(18,5),(19,3),(19,5),(20,2),(20,3);

INSERT INTO film_subtitle (film_id, subtitle_id) VALUES
  (1,2),(1,3),(2,1),(2,5),(3,1),(3,4),(4,2),(4,3),(5,3),(5,5),
  (6,1),(6,4),(7,2),(7,5),(8,1),(8,3),(9,2),(9,4),(10,1),(10,5),
  (11,3),(11,5),(12,1),(12,2),(13,1),(13,5),(14,1),(14,2),(15,3),(15,4),
  (16,1),(16,2),(17,3),(17,4),(18,2),(18,5),(19,1),(19,3),(20,4),(20,5);

-- Insert 30 show schedules within 5 days, with no overlaps per room per date
INSERT INTO shows ("date", start_time, end_time, film_id, theater_room_id, price, is_active) VALUES
  ('2025-05-17', '09:00', '11:00', 1, 1, 45000, TRUE),
  ('2025-05-17', '12:30', '14:30', 2, 1, 45000, TRUE),
  ('2025-05-17', '09:00', '11:50', 3, 2, 50000, TRUE),
  ('2025-05-17', '13:00', '15:30', 4, 2, 55000, TRUE),
  ('2025-05-17', '09:00', '11:40', 5, 3, 48000, TRUE),
  ('2025-05-17', '13:00', '15:40', 6, 3, 55000, TRUE),

  ('2025-05-18', '09:00', '11:40', 1, 1, 48000, TRUE),
  ('2025-05-18', '13:00', '15:20', 2, 1, 52000, TRUE),
  ('2025-05-18', '09:00', '11:30', 3, 2, 45000, TRUE),
  ('2025-05-18', '13:00', '15:40', 4, 2, 56000, TRUE),
  ('2025-05-18', '09:00', '10:40', 5, 3, 40000, TRUE),
  ('2025-05-18', '12:00', '14:00', 6, 3, 42000, TRUE),

  ('2025-05-19', '09:00', '10:50', 6, 1, 43000, TRUE),
  ('2025-05-19', '12:00', '14:30', 5, 1, 53000, TRUE),
  ('2025-05-19', '09:00', '11:30', 4, 2, 54000, TRUE),
  ('2025-05-19', '13:00', '15:00', 3, 2, 49000, TRUE),
  ('2025-05-19', '09:00', '10:50', 2, 3, 42000, TRUE),
  ('2025-05-19', '12:00', '14:20', 1, 3, 53000, TRUE),

  ('2025-05-20', '09:00', '10:50', 6, 1, 41000, TRUE),
  ('2025-05-20', '12:00', '14:10', 5, 1, 47000, TRUE),
  ('2025-05-20', '09:00', '11:30', 4, 2, 46000, TRUE),
  ('2025-05-20', '13:00', '15:00', 3, 2, 45000, TRUE),
  ('2025-05-20', '09:00', '10:40', 2, 3, 40000, TRUE),
  ('2025-05-20', '12:00', '14:20', 1, 3, 52000, TRUE),

  ('2025-05-21', '09:00', '11:10', 1, 1, 46000, TRUE),
  ('2025-05-21', '13:00', '15:30', 2, 1, 53000, TRUE),
  ('2025-05-21', '09:00', '11:50', 3, 2, 50000, TRUE),
  ('2025-05-21', '13:00', '15:00', 4, 2, 49000, TRUE),
  ('2025-05-21', '09:00', '10:40', 5, 3, 40000, TRUE),
  ('2025-05-21', '12:00', '14:10', 6, 3, 52000, TRUE);

-- Insert Bookings

INSERT INTO booking (booking_number, users_id, shows_id, booking_time, status)
VALUES ('BKG0001', 2, 2, '2025-05-01 12:01:00', 'SELECTED');

INSERT INTO booking (booking_number, users_id, shows_id, booking_time, status)
VALUES ('BKG0002', 3, 3, '2025-05-01 12:02:00', 'SELECTED');

INSERT INTO booking (booking_number, users_id, shows_id, booking_time, status)
VALUES ('BKG0003', 4, 4, '2025-05-01 12:03:00', 'BOOKED');

INSERT INTO booking (booking_number, users_id, shows_id, booking_time, status)
VALUES ('BKG0004', 5, 5, '2025-05-01 12:04:00', 'CANCELLED');

INSERT INTO booking (booking_number, users_id, shows_id, booking_time, status)
VALUES ('BKG0005', 6, 6, '2025-05-01 12:05:00', 'EXPIRED');

INSERT INTO booking (booking_number, users_id, shows_id, booking_time, status)
VALUES ('BKG0006', 7, 7, '2025-05-01 12:06:00', 'BOOKED');

INSERT INTO booking (booking_number, users_id, shows_id, booking_time, status)
VALUES ('BKG0007', 8, 8, '2025-05-01 12:07:00', 'CANCELLED');

INSERT INTO booking (booking_number, users_id, shows_id, booking_time, status)
VALUES ('BKG0008', 9, 9, '2025-05-01 12:08:00', 'EXPIRED');

INSERT INTO booking (booking_number, users_id, shows_id, booking_time, status)
VALUES ('BKG0009', 10, 10, '2025-05-01 12:09:00', 'CANCELLED');

INSERT INTO booking (booking_number, users_id, shows_id, booking_time, status)
VALUES ('BKG0010', 1, 1, '2025-05-01 12:10:00', 'EXPIRED');

INSERT INTO booking (booking_number, users_id, shows_id, booking_time, status)
VALUES ('BKG0011', 2, 2, '2025-05-01 12:11:00', 'BOOKED');

INSERT INTO booking (booking_number, users_id, shows_id, booking_time, status)
VALUES ('BKG0012', 3, 3, '2025-05-01 12:12:00', 'BOOKED');

INSERT INTO booking (booking_number, users_id, shows_id, booking_time, status)
VALUES ('BKG0013', 4, 4, '2025-05-01 12:13:00', 'SELECTED');

INSERT INTO booking (booking_number, users_id, shows_id, booking_time, status)
VALUES ('BKG0014', 5, 5, '2025-05-01 12:14:00', 'EXPIRED');

INSERT INTO booking (booking_number, users_id, shows_id, booking_time, status)
VALUES ('BKG0015', 6, 6, '2025-05-01 12:15:00', 'CANCELLED');

INSERT INTO booking (booking_number, users_id, shows_id, booking_time, status)
VALUES ('BKG0016', 7, 7, '2025-05-01 12:16:00', 'BOOKED');

INSERT INTO booking (booking_number, users_id, shows_id, booking_time, status)
VALUES ('BKG0017', 8, 8, '2025-05-01 12:17:00', 'CANCELLED');

INSERT INTO booking (booking_number, users_id, shows_id, booking_time, status)
VALUES ('BKG0018', 9, 9, '2025-05-01 12:18:00', 'EXPIRED');

INSERT INTO booking (booking_number, users_id, shows_id, booking_time, status)
VALUES ('BKG0019', 10, 10, '2025-05-01 12:19:00', 'BOOKED');

INSERT INTO booking (booking_number, users_id, shows_id, booking_time, status)
VALUES ('BKG0020', 1, 1, '2025-05-01 12:20:00', 'EXPIRED');

INSERT INTO booking (booking_number, users_id, shows_id, booking_time, status)
VALUES ('BKG0021', 2, 2, '2025-05-01 12:21:00', 'EXPIRED');

INSERT INTO booking (booking_number, users_id, shows_id, booking_time, status)
VALUES ('BKG0022', 3, 3, '2025-05-01 12:22:00', 'SELECTED');

INSERT INTO booking (booking_number, users_id, shows_id, booking_time, status)
VALUES ('BKG0023', 4, 4, '2025-05-01 12:23:00', 'SELECTED');

INSERT INTO booking (booking_number, users_id, shows_id, booking_time, status)
VALUES ('BKG0024', 5, 5, '2025-05-01 12:24:00', 'SELECTED');

INSERT INTO booking (booking_number, users_id, shows_id, booking_time, status)
VALUES ('BKG0025', 6, 6, '2025-05-01 12:25:00', 'CANCELLED');

INSERT INTO booking (booking_number, users_id, shows_id, booking_time, status)
VALUES ('BKG0026', 7, 7, '2025-05-01 12:26:00', 'SELECTED');

INSERT INTO booking (booking_number, users_id, shows_id, booking_time, status)
VALUES ('BKG0027', 8, 8, '2025-05-01 12:27:00', 'SELECTED');

INSERT INTO booking (booking_number, users_id, shows_id, booking_time, status)
VALUES ('BKG0028', 9, 9, '2025-05-01 12:28:00', 'CANCELLED');

INSERT INTO booking (booking_number, users_id, shows_id, booking_time, status)
VALUES ('BKG0029', 10, 10, '2025-05-01 12:29:00', 'BOOKED');

INSERT INTO booking (booking_number, users_id, shows_id, booking_time, status)
VALUES ('BKG0030', 1, 1, '2025-05-01 12:30:00', 'EXPIRED');


INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (1, 'A', 1, 'regular', 1, 0, 0.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (1, 'A', 2, 'regular', 2, 0, 0.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (1, 'A', 3, 'regular', 3, 0, 0.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (1, 'A', 4, 'regular', 4, 0, 0.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (1, 'A', 5, 'regular', 5, 0, 0.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (1, 'A', 6, 'regular', 6, 0, 0.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (1, 'A', 7, 'regular', 7, 0, 0.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (1, 'A', 8, 'regular', 8, 0, 0.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (1, 'A', 9, 'regular', 9, 0, 0.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (1, 'A', 10, 'regular', 10, 0, 0.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (1, 'B', 1, 'regular', 1, 1, 0.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (1, 'B', 2, 'regular', 2, 1, 0.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (1, 'B', 3, 'regular', 3, 1, 0.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (1, 'B', 4, 'regular', 4, 1, 0.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (1, 'B', 5, 'regular', 5, 1, 0.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (1, 'B', 6, 'regular', 6, 1, 0.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (1, 'B', 7, 'regular', 7, 1, 0.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (1, 'B', 8, 'regular', 8, 1, 0.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (1, 'B', 9, 'regular', 9, 1, 0.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (1, 'B', 10, 'regular', 10, 1, 0.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (1, 'C', 1, 'regular', 1, 2, 0.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (1, 'C', 2, 'regular', 2, 2, 0.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (1, 'C', 3, 'regular', 3, 2, 0.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (1, 'C', 4, 'regular', 4, 2, 0.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (1, 'C', 5, 'regular', 5, 2, 0.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (1, 'C', 6, 'regular', 6, 2, 0.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (1, 'C', 7, 'regular', 7, 2, 0.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (1, 'C', 8, 'regular', 8, 2, 0.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (1, 'C', 9, 'regular', 9, 2, 0.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (1, 'C', 10, 'regular', 10, 2, 0.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (2, 'A', 1, 'regular', 1, 0, 0.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (2, 'A', 2, 'regular', 2, 0, 0.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (2, 'A', 3, 'regular', 3, 0, 0.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (2, 'A', 4, 'regular', 4, 0, 0.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (2, 'A', 5, 'regular', 5, 0, 0.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (2, 'A', 6, 'regular', 6, 0, 0.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (2, 'A', 7, 'regular', 7, 0, 0.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (2, 'A', 8, 'regular', 8, 0, 0.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (2, 'A', 9, 'regular', 9, 0, 0.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (2, 'A', 10, 'regular', 10, 0, 0.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (2, 'B', 1, 'regular', 1, 1, 0.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (2, 'B', 2, 'regular', 2, 1, 0.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (2, 'B', 3, 'regular', 3, 1, 0.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (2, 'B', 4, 'regular', 4, 1, 0.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (2, 'B', 5, 'regular', 5, 1, 0.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (2, 'B', 6, 'regular', 6, 1, 0.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (2, 'B', 7, 'regular', 7, 1, 0.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (2, 'B', 8, 'regular', 8, 1, 0.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (2, 'B', 9, 'regular', 9, 1, 0.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (2, 'B', 10, 'regular', 10, 1, 0.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (2, 'C', 1, 'regular', 1, 2, 0.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (2, 'C', 2, 'regular', 2, 2, 0.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (2, 'C', 3, 'regular', 3, 2, 0.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (2, 'C', 4, 'regular', 4, 2, 0.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (2, 'C', 5, 'regular', 5, 2, 0.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (2, 'C', 6, 'regular', 6, 2, 0.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (2, 'C', 7, 'regular', 7, 2, 0.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (2, 'C', 8, 'regular', 8, 2, 0.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (2, 'C', 9, 'regular', 9, 2, 0.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (2, 'C', 10, 'regular', 10, 2, 0.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (3, 'A', 1, 'regular', 1, 0, 0.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (3, 'A', 2, 'regular', 2, 0, 0.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (3, 'A', 3, 'regular', 3, 0, 0.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (3, 'A', 4, 'regular', 4, 0, 0.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (3, 'A', 5, 'regular', 5, 0, 0.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (3, 'A', 6, 'regular', 6, 0, 0.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (3, 'A', 7, 'regular', 7, 0, 0.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (3, 'A', 8, 'regular', 8, 0, 0.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (3, 'A', 9, 'regular', 9, 0, 0.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (3, 'A', 10, 'regular', 10, 0, 0.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (3, 'B', 1, 'regular', 1, 1, 0.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (3, 'B', 2, 'regular', 2, 1, 0.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (3, 'B', 3, 'regular', 3, 1, 0.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (3, 'B', 4, 'regular', 4, 1, 0.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (3, 'B', 5, 'regular', 5, 1, 0.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (3, 'B', 6, 'regular', 6, 1, 0.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (3, 'B', 7, 'regular', 7, 1, 0.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (3, 'B', 8, 'regular', 8, 1, 0.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (3, 'B', 9, 'regular', 9, 1, 0.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (3, 'B', 10, 'regular', 10, 1, 0.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (3, 'C', 1, 'regular', 1, 2, 0.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (3, 'C', 2, 'regular', 2, 2, 0.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (3, 'C', 3, 'regular', 3, 2, 0.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (3, 'C', 4, 'regular', 4, 2, 0.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (3, 'C', 5, 'regular', 5, 2, 0.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (3, 'C', 6, 'regular', 6, 2, 0.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (3, 'C', 7, 'regular', 7, 2, 0.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (3, 'C', 8, 'regular', 8, 2, 0.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (3, 'C', 9, 'regular', 9, 2, 0.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (3, 'C', 10, 'regular', 10, 2, 0.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (4, 'A', 1, 'VIP', 1, 0, 20000.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (4, 'A', 2, 'VIP', 2, 0, 20000.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (4, 'A', 3, 'VIP', 3, 0, 20000.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (4, 'A', 4, 'VIP', 4, 0, 20000.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (4, 'A', 5, 'VIP', 5, 0, 20000.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (4, 'A', 6, 'VIP', 6, 0, 20000.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (4, 'A', 7, 'VIP', 7, 0, 20000.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (4, 'A', 8, 'VIP', 8, 0, 20000.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (4, 'A', 9, 'VIP', 9, 0, 20000.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (4, 'A', 10, 'VIP', 10, 0, 20000.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (4, 'B', 1, 'VIP', 1, 1, 20000.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (4, 'B', 2, 'VIP', 2, 1, 20000.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (4, 'B', 3, 'VIP', 3, 1, 20000.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (4, 'B', 4, 'VIP', 4, 1, 20000.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (4, 'B', 5, 'VIP', 5, 1, 20000.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (4, 'B', 6, 'VIP', 6, 1, 20000.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (4, 'B', 7, 'VIP', 7, 1, 20000.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (4, 'B', 8, 'VIP', 8, 1, 20000.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (4, 'B', 9, 'VIP', 9, 1, 20000.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (4, 'B', 10, 'VIP', 10, 1, 20000.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (4, 'C', 1, 'VIP', 1, 2, 20000.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (4, 'C', 2, 'VIP', 2, 2, 20000.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (4, 'C', 3, 'VIP', 3, 2, 20000.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (4, 'C', 4, 'VIP', 4, 2, 20000.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (4, 'C', 5, 'VIP', 5, 2, 20000.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (4, 'C', 6, 'VIP', 6, 2, 20000.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (4, 'C', 7, 'VIP', 7, 2, 20000.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (4, 'C', 8, 'VIP', 8, 2, 20000.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (4, 'C', 9, 'VIP', 9, 2, 20000.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (4, 'C', 10, 'VIP', 10, 2, 20000.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (4, 'D', 1, 'VIP', 1, 3, 20000.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (4, 'D', 2, 'VIP', 2, 3, 20000.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (4, 'D', 3, 'VIP', 3, 3, 20000.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (4, 'D', 4, 'VIP', 4, 3, 20000.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (4, 'D', 5, 'VIP', 5, 3, 20000.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (4, 'D', 6, 'VIP', 6, 3, 20000.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (4, 'D', 7, 'VIP', 7, 3, 20000.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (4, 'D', 8, 'VIP', 8, 3, 20000.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (4, 'D', 9, 'VIP', 9, 3, 20000.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (4, 'D', 10, 'VIP', 10, 3, 20000.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (5, 'A', 1, 'VIP', 1, 0, 20000.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (5, 'A', 2, 'VIP', 2, 0, 20000.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (5, 'A', 3, 'VIP', 3, 0, 20000.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (5, 'A', 4, 'VIP', 4, 0, 20000.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (5, 'A', 5, 'VIP', 5, 0, 20000.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (5, 'A', 6, 'VIP', 6, 0, 20000.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (5, 'A', 7, 'VIP', 7, 0, 20000.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (5, 'A', 8, 'VIP', 8, 0, 20000.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (5, 'A', 9, 'VIP', 9, 0, 20000.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (5, 'A', 10, 'VIP', 10, 0, 20000.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (5, 'B', 1, 'VIP', 1, 1, 20000.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (5, 'B', 2, 'VIP', 2, 1, 20000.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (5, 'B', 3, 'VIP', 3, 1, 20000.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (5, 'B', 4, 'VIP', 4, 1, 20000.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (5, 'B', 5, 'VIP', 5, 1, 20000.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (5, 'B', 6, 'VIP', 6, 1, 20000.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (5, 'B', 7, 'VIP', 7, 1, 20000.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (5, 'B', 8, 'VIP', 8, 1, 20000.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (5, 'B', 9, 'VIP', 9, 1, 20000.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (5, 'B', 10, 'VIP', 10, 1, 20000.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (5, 'C', 1, 'VIP', 1, 2, 20000.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (5, 'C', 2, 'VIP', 2, 2, 20000.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (5, 'C', 3, 'VIP', 3, 2, 20000.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (5, 'C', 4, 'VIP', 4, 2, 20000.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (5, 'C', 5, 'VIP', 5, 2, 20000.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (5, 'C', 6, 'VIP', 6, 2, 20000.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (5, 'C', 7, 'VIP', 7, 2, 20000.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (5, 'C', 8, 'VIP', 8, 2, 20000.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (5, 'C', 9, 'VIP', 9, 2, 20000.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (5, 'C', 10, 'VIP', 10, 2, 20000.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (5, 'D', 1, 'VIP', 1, 3, 20000.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (5, 'D', 2, 'VIP', 2, 3, 20000.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (5, 'D', 3, 'VIP', 3, 3, 20000.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (5, 'D', 4, 'VIP', 4, 3, 20000.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (5, 'D', 5, 'VIP', 5, 3, 20000.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (5, 'D', 6, 'VIP', 6, 3, 20000.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (5, 'D', 7, 'VIP', 7, 3, 20000.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (5, 'D', 8, 'VIP', 8, 3, 20000.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (5, 'D', 9, 'VIP', 9, 3, 20000.00, true);

INSERT INTO seat (theater_room_id, row_label, seat_number, seat_type, x_coordinate, y_coordinate, additional_price, is_active)
VALUES (5, 'D', 10, 'VIP', 10, 3, 20000.00, true);

INSERT INTO booking_seat (booking_id, seat_id)
VALUES (1, 72);

INSERT INTO booking_seat (booking_id, seat_id)
VALUES (1, 123);

INSERT INTO booking_seat (booking_id, seat_id)
VALUES (1, 62);

INSERT INTO booking_seat (booking_id, seat_id)
VALUES (2, 86);

INSERT INTO booking_seat (booking_id, seat_id)
VALUES (2, 58);

INSERT INTO booking_seat (booking_id, seat_id)
VALUES (2, 74);

INSERT INTO booking_seat (booking_id, seat_id)
VALUES (3, 166);

INSERT INTO booking_seat (booking_id, seat_id)
VALUES (4, 116);

INSERT INTO booking_seat (booking_id, seat_id)
VALUES (4, 118);

INSERT INTO booking_seat (booking_id, seat_id)
VALUES (5, 117);

INSERT INTO booking_seat (booking_id, seat_id)
VALUES (5, 8);

INSERT INTO booking_seat (booking_id, seat_id)
VALUES (5, 95);

INSERT INTO booking_seat (booking_id, seat_id)
VALUES (6, 162);

INSERT INTO booking_seat (booking_id, seat_id)
VALUES (7, 70);

INSERT INTO booking_seat (booking_id, seat_id)
VALUES (7, 35);

INSERT INTO booking_seat (booking_id, seat_id)
VALUES (8, 78);

INSERT INTO booking_seat (booking_id, seat_id)
VALUES (8, 52);

INSERT INTO booking_seat (booking_id, seat_id)
VALUES (9, 139);

INSERT INTO booking_seat (booking_id, seat_id)
VALUES (9, 43);

INSERT INTO booking_seat (booking_id, seat_id)
VALUES (10, 97);

INSERT INTO booking_seat (booking_id, seat_id)
VALUES (10, 7);

INSERT INTO booking_seat (booking_id, seat_id)
VALUES (10, 159);

INSERT INTO booking_seat (booking_id, seat_id)
VALUES (11, 98);

INSERT INTO booking_seat (booking_id, seat_id)
VALUES (12, 138);

INSERT INTO booking_seat (booking_id, seat_id)
VALUES (12, 121);

INSERT INTO booking_seat (booking_id, seat_id)
VALUES (12, 20);

INSERT INTO booking_seat (booking_id, seat_id)
VALUES (13, 28);

INSERT INTO booking_seat (booking_id, seat_id)
VALUES (14, 73);

INSERT INTO booking_seat (booking_id, seat_id)
VALUES (14, 32);

INSERT INTO booking_seat (booking_id, seat_id)
VALUES (14, 104);

INSERT INTO booking_seat (booking_id, seat_id)
VALUES (15, 31);

INSERT INTO booking_seat (booking_id, seat_id)
VALUES (15, 47);

INSERT INTO booking_seat (booking_id, seat_id)
VALUES (15, 37);

INSERT INTO booking_seat (booking_id, seat_id)
VALUES (16, 78);

INSERT INTO booking_seat (booking_id, seat_id)
VALUES (16, 64);

INSERT INTO booking_seat (booking_id, seat_id)
VALUES (17, 141);

INSERT INTO booking_seat (booking_id, seat_id)
VALUES (17, 151);

INSERT INTO booking_seat (booking_id, seat_id)
VALUES (18, 164);

INSERT INTO booking_seat (booking_id, seat_id)
VALUES (19, 71);

INSERT INTO booking_seat (booking_id, seat_id)
VALUES (20, 95);

INSERT INTO booking_seat (booking_id, seat_id)
VALUES (20, 149);

INSERT INTO booking_seat (booking_id, seat_id)
VALUES (20, 105);

INSERT INTO booking_seat (booking_id, seat_id)
VALUES (21, 2);

INSERT INTO booking_seat (booking_id, seat_id)
VALUES (21, 98);

INSERT INTO booking_seat (booking_id, seat_id)
VALUES (22, 73);

INSERT INTO booking_seat (booking_id, seat_id)
VALUES (22, 145);

INSERT INTO booking_seat (booking_id, seat_id)
VALUES (22, 163);

INSERT INTO booking_seat (booking_id, seat_id)
VALUES (23, 28);

INSERT INTO booking_seat (booking_id, seat_id)
VALUES (23, 125);

INSERT INTO booking_seat (booking_id, seat_id)
VALUES (23, 106);

INSERT INTO booking_seat (booking_id, seat_id)
VALUES (24, 59);

INSERT INTO booking_seat (booking_id, seat_id)
VALUES (24, 69);

INSERT INTO booking_seat (booking_id, seat_id)
VALUES (24, 115);

INSERT INTO booking_seat (booking_id, seat_id)
VALUES (25, 7);

INSERT INTO booking_seat (booking_id, seat_id)
VALUES (25, 89);

INSERT INTO booking_seat (booking_id, seat_id)
VALUES (26, 140);

INSERT INTO booking_seat (booking_id, seat_id)
VALUES (26, 22);

INSERT INTO booking_seat (booking_id, seat_id)
VALUES (26, 147);

INSERT INTO booking_seat (booking_id, seat_id)
VALUES (27, 14);

INSERT INTO booking_seat (booking_id, seat_id)
VALUES (27, 67);

INSERT INTO booking_seat (booking_id, seat_id)
VALUES (27, 130);

INSERT INTO booking_seat (booking_id, seat_id)
VALUES (28, 55);

INSERT INTO booking_seat (booking_id, seat_id)
VALUES (28, 91);

INSERT INTO booking_seat (booking_id, seat_id)
VALUES (28, 108);

INSERT INTO booking_seat (booking_id, seat_id)
VALUES (29, 163);

INSERT INTO booking_seat (booking_id, seat_id)
VALUES (29, 54);

INSERT INTO booking_seat (booking_id, seat_id)
VALUES (29, 36);

INSERT INTO booking_seat (booking_id, seat_id)
VALUES (30, 135);

INSERT INTO booking_seat (booking_id, seat_id)
VALUES (30, 39);

INSERT INTO payment (payment_number, booking_id, payment_method, payment_time, amount, status, reference_number)
VALUES ('PAY1001', 1, 'OVO', '2025-04-29 15:37:05', 91230, 'PENDING', '0202A428');

INSERT INTO payment_detail (payment_id, type, description, amount)
VALUES 
(1, 'BASE', 'Base Ticket Price', 77545),
(1, 'TAX', 'Tax Fee', 9123),
(1, 'ADMIN_FEE', 'Admin Charge', 4562);

INSERT INTO payment (payment_number, booking_id, payment_method, payment_time, amount, status, reference_number)
VALUES ('PAY1002', 2, 'VA', '2025-04-30 15:37:05', 66213, 'SUCCESS', 'CA1515C4');

INSERT INTO payment_detail (payment_id, type, description, amount)
VALUES 
(2, 'BASE', 'Base Ticket Price', 56281),
(2, 'TAX', 'Tax Fee', 6621),
(2, 'ADMIN_FEE', 'Admin Charge', 3311);

INSERT INTO payment (payment_number, booking_id, payment_method, payment_time, amount, status, reference_number)
VALUES ('PAY1003', 3, 'GOPAY', '2025-04-30 15:37:05', 90998, 'PENDING', 'FD72421C');

INSERT INTO payment_detail (payment_id, type, description, amount)
VALUES 
(3, 'BASE', 'Base Ticket Price', 77348),
(3, 'TAX', 'Tax Fee', 9099),
(3, 'ADMIN_FEE', 'Admin Charge', 4551);

INSERT INTO payment (payment_number, booking_id, payment_method, payment_time, amount, status, reference_number)
VALUES ('PAY1004', 4, 'QRIS', '2025-04-27 15:37:05', 136065, 'PENDING', 'D230B3B8');

INSERT INTO payment_detail (payment_id, type, description, amount)
VALUES 
(4, 'BASE', 'Base Ticket Price', 115655),
(4, 'TAX', 'Tax Fee', 13606),
(4, 'ADMIN_FEE', 'Admin Charge', 6804);

INSERT INTO payment (payment_number, booking_id, payment_method, payment_time, amount, status, reference_number)
VALUES ('PAY1005', 5, 'GOPAY', '2025-05-02 15:37:05', 98768, 'PENDING', '9F15E82A');

INSERT INTO payment_detail (payment_id, type, description, amount)
VALUES 
(5, 'BASE', 'Base Ticket Price', 83952),
(5, 'TAX', 'Tax Fee', 9876),
(5, 'ADMIN_FEE', 'Admin Charge', 4940);

INSERT INTO payment (payment_number, booking_id, payment_method, payment_time, amount, status, reference_number)
VALUES ('PAY1006', 6, 'QRIS', '2025-04-28 15:37:05', 124275, 'SUCCESS', '8950F69B');

INSERT INTO payment_detail (payment_id, type, description, amount)
VALUES 
(6, 'BASE', 'Base Ticket Price', 105633),
(6, 'TAX', 'Tax Fee', 12427),
(6, 'ADMIN_FEE', 'Admin Charge', 6215);

INSERT INTO payment (payment_number, booking_id, payment_method, payment_time, amount, status, reference_number)
VALUES ('PAY1007', 7, 'GOPAY', '2025-04-30 15:37:05', 196406, 'PENDING', '7F654FB4');

INSERT INTO payment_detail (payment_id, type, description, amount)
VALUES 
(7, 'BASE', 'Base Ticket Price', 166945),
(7, 'TAX', 'Tax Fee', 19640),
(7, 'ADMIN_FEE', 'Admin Charge', 9821);

INSERT INTO payment (payment_number, booking_id, payment_method, payment_time, amount, status, reference_number)
VALUES ('PAY1008', 8, 'QRIS', '2025-05-01 15:37:05', 142293, 'SUCCESS', '0F142ACB');

INSERT INTO payment_detail (payment_id, type, description, amount)
VALUES 
(8, 'BASE', 'Base Ticket Price', 120949),
(8, 'TAX', 'Tax Fee', 14229),
(8, 'ADMIN_FEE', 'Admin Charge', 7115);

INSERT INTO payment (payment_number, booking_id, payment_method, payment_time, amount, status, reference_number)
VALUES ('PAY1009', 9, 'QRIS', '2025-05-05 15:37:05', 148877, 'SUCCESS', '6F418CB7');

INSERT INTO payment_detail (payment_id, type, description, amount)
VALUES 
(9, 'BASE', 'Base Ticket Price', 126545),
(9, 'TAX', 'Tax Fee', 14887),
(9, 'ADMIN_FEE', 'Admin Charge', 7445);

INSERT INTO payment (payment_number, booking_id, payment_method, payment_time, amount, status, reference_number)
VALUES ('PAY1010', 10, 'GOPAY', '2025-05-02 15:37:05', 97032, 'PENDING', 'F1C58180');

INSERT INTO payment_detail (payment_id, type, description, amount)
VALUES 
(10, 'BASE', 'Base Ticket Price', 82477),
(10, 'TAX', 'Tax Fee', 9703),
(10, 'ADMIN_FEE', 'Admin Charge', 4852);

INSERT INTO payment (payment_number, booking_id, payment_method, payment_time, amount, status, reference_number)
VALUES ('PAY1011', 11, 'QRIS', '2025-04-29 15:37:05', 78033, 'PENDING', '4D8D8EC7');

INSERT INTO payment_detail (payment_id, type, description, amount)
VALUES 
(11, 'BASE', 'Base Ticket Price', 66328),
(11, 'TAX', 'Tax Fee', 7803),
(11, 'ADMIN_FEE', 'Admin Charge', 3902);

INSERT INTO payment (payment_number, booking_id, payment_method, payment_time, amount, status, reference_number)
VALUES ('PAY1012', 12, 'OVO', '2025-04-28 15:37:05', 122784, 'SUCCESS', 'E4737116');

INSERT INTO payment_detail (payment_id, type, description, amount)
VALUES 
(12, 'BASE', 'Base Ticket Price', 104366),
(12, 'TAX', 'Tax Fee', 12278),
(12, 'ADMIN_FEE', 'Admin Charge', 6140);

INSERT INTO payment (payment_number, booking_id, payment_method, payment_time, amount, status, reference_number)
VALUES ('PAY1013', 13, 'VA', '2025-04-30 15:37:05', 145624, 'SUCCESS', 'EE30AD7D');

INSERT INTO payment_detail (payment_id, type, description, amount)
VALUES 
(13, 'BASE', 'Base Ticket Price', 123780),
(13, 'TAX', 'Tax Fee', 14562),
(13, 'ADMIN_FEE', 'Admin Charge', 7282);

INSERT INTO payment (payment_number, booking_id, payment_method, payment_time, amount, status, reference_number)
VALUES ('PAY1014', 14, 'VA', '2025-05-06 15:37:05', 90241, 'PENDING', '952BC8A0');

INSERT INTO payment_detail (payment_id, type, description, amount)
VALUES 
(14, 'BASE', 'Base Ticket Price', 76704),
(14, 'TAX', 'Tax Fee', 9024),
(14, 'ADMIN_FEE', 'Admin Charge', 4513);

INSERT INTO payment (payment_number, booking_id, payment_method, payment_time, amount, status, reference_number)
VALUES ('PAY1015', 15, 'VA', '2025-04-30 15:37:05', 56659, 'SUCCESS', 'AE4D7EC7');

INSERT INTO payment_detail (payment_id, type, description, amount)
VALUES 
(15, 'BASE', 'Base Ticket Price', 48160),
(15, 'TAX', 'Tax Fee', 5665),
(15, 'ADMIN_FEE', 'Admin Charge', 2834);

INSERT INTO payment (payment_number, booking_id, payment_method, payment_time, amount, status, reference_number)
VALUES ('PAY1016', 16, 'VA', '2025-05-01 15:37:05', 101479, 'SUCCESS', 'E40B6CF4');

INSERT INTO payment_detail (payment_id, type, description, amount)
VALUES 
(16, 'BASE', 'Base Ticket Price', 86257),
(16, 'TAX', 'Tax Fee', 10147),
(16, 'ADMIN_FEE', 'Admin Charge', 5075);

INSERT INTO payment (payment_number, booking_id, payment_method, payment_time, amount, status, reference_number)
VALUES ('PAY1017', 17, 'QRIS', '2025-05-06 15:37:05', 191197, 'SUCCESS', 'ABA2429E');

INSERT INTO payment_detail (payment_id, type, description, amount)
VALUES 
(17, 'BASE', 'Base Ticket Price', 162517),
(17, 'TAX', 'Tax Fee', 19119),
(17, 'ADMIN_FEE', 'Admin Charge', 9561);

INSERT INTO payment (payment_number, booking_id, payment_method, payment_time, amount, status, reference_number)
VALUES ('PAY1018', 18, 'GOPAY', '2025-05-06 15:37:05', 121006, 'PENDING', 'B413AF8F');

INSERT INTO payment_detail (payment_id, type, description, amount)
VALUES 
(18, 'BASE', 'Base Ticket Price', 102855),
(18, 'TAX', 'Tax Fee', 12100),
(18, 'ADMIN_FEE', 'Admin Charge', 6051);

INSERT INTO payment (payment_number, booking_id, payment_method, payment_time, amount, status, reference_number)
VALUES ('PAY1019', 19, 'GOPAY', '2025-04-27 15:37:05', 70820, 'SUCCESS', '0F171791');

INSERT INTO payment_detail (payment_id, type, description, amount)
VALUES 
(19, 'BASE', 'Base Ticket Price', 60197),
(19, 'TAX', 'Tax Fee', 7082),
(19, 'ADMIN_FEE', 'Admin Charge', 3541);

INSERT INTO payment (payment_number, booking_id, payment_method, payment_time, amount, status, reference_number)
VALUES ('PAY1020', 20, 'QRIS', '2025-04-29 15:37:05', 66339, 'PENDING', '82F74339');

INSERT INTO payment_detail (payment_id, type, description, amount)
VALUES 
(20, 'BASE', 'Base Ticket Price', 56388),
(20, 'TAX', 'Tax Fee', 6633),
(20, 'ADMIN_FEE', 'Admin Charge', 3318);

INSERT INTO payment (payment_number, booking_id, payment_method, payment_time, amount, status, reference_number)
VALUES ('PAY1021', 21, 'QRIS', '2025-05-03 15:37:05', 84996, 'SUCCESS', '547F8871');

INSERT INTO payment_detail (payment_id, type, description, amount)
VALUES 
(21, 'BASE', 'Base Ticket Price', 72246),
(21, 'TAX', 'Tax Fee', 8499),
(21, 'ADMIN_FEE', 'Admin Charge', 4251);

INSERT INTO payment (payment_number, booking_id, payment_method, payment_time, amount, status, reference_number)
VALUES ('PAY1022', 22, 'OVO', '2025-05-04 15:37:05', 92095, 'SUCCESS', 'CE2AA718');

INSERT INTO payment_detail (payment_id, type, description, amount)
VALUES 
(22, 'BASE', 'Base Ticket Price', 78280),
(22, 'TAX', 'Tax Fee', 9209),
(22, 'ADMIN_FEE', 'Admin Charge', 4606);

INSERT INTO payment (payment_number, booking_id, payment_method, payment_time, amount, status, reference_number)
VALUES ('PAY1023', 23, 'VA', '2025-05-04 15:37:05', 62821, 'SUCCESS', '4FCC3224');

INSERT INTO payment_detail (payment_id, type, description, amount)
VALUES 
(23, 'BASE', 'Base Ticket Price', 53397),
(23, 'TAX', 'Tax Fee', 6282),
(23, 'ADMIN_FEE', 'Admin Charge', 3142);

INSERT INTO payment (payment_number, booking_id, payment_method, payment_time, amount, status, reference_number)
VALUES ('PAY1024', 24, 'QRIS', '2025-05-01 15:37:05', 181537, 'SUCCESS', '40336A23');

INSERT INTO payment_detail (payment_id, type, description, amount)
VALUES 
(24, 'BASE', 'Base Ticket Price', 154306),
(24, 'TAX', 'Tax Fee', 18153),
(24, 'ADMIN_FEE', 'Admin Charge', 9078);

INSERT INTO payment (payment_number, booking_id, payment_method, payment_time, amount, status, reference_number)
VALUES ('PAY1025', 25, 'VA', '2025-05-04 15:37:05', 68363, 'SUCCESS', '852155CA');

INSERT INTO payment_detail (payment_id, type, description, amount)
VALUES 
(25, 'BASE', 'Base Ticket Price', 58108),
(25, 'TAX', 'Tax Fee', 6836),
(25, 'ADMIN_FEE', 'Admin Charge', 3419);

INSERT INTO payment (payment_number, booking_id, payment_method, payment_time, amount, status, reference_number)
VALUES ('PAY1026', 26, 'QRIS', '2025-04-29 15:37:05', 181993, 'PENDING', '4B350E2D');

INSERT INTO payment_detail (payment_id, type, description, amount)
VALUES 
(26, 'BASE', 'Base Ticket Price', 154694),
(26, 'TAX', 'Tax Fee', 18199),
(26, 'ADMIN_FEE', 'Admin Charge', 9100);

INSERT INTO payment (payment_number, booking_id, payment_method, payment_time, amount, status, reference_number)
VALUES ('PAY1027', 27, 'OVO', '2025-05-01 15:37:05', 123069, 'SUCCESS', 'A8F00985');

INSERT INTO payment_detail (payment_id, type, description, amount)
VALUES 
(27, 'BASE', 'Base Ticket Price', 104608),
(27, 'TAX', 'Tax Fee', 12306),
(27, 'ADMIN_FEE', 'Admin Charge', 6155);

INSERT INTO payment (payment_number, booking_id, payment_method, payment_time, amount, status, reference_number)
VALUES ('PAY1028', 28, 'OVO', '2025-05-05 15:37:05', 174013, 'SUCCESS', 'A1A377B3');

INSERT INTO payment_detail (payment_id, type, description, amount)
VALUES 
(28, 'BASE', 'Base Ticket Price', 147911),
(28, 'TAX', 'Tax Fee', 17401),
(28, 'ADMIN_FEE', 'Admin Charge', 8701);

INSERT INTO payment (payment_number, booking_id, payment_method, payment_time, amount, status, reference_number)
VALUES ('PAY1029', 29, 'VA', '2025-05-06 15:37:05', 84944, 'SUCCESS', '6D271702');

INSERT INTO payment_detail (payment_id, type, description, amount)
VALUES 
(29, 'BASE', 'Base Ticket Price', 72202),
(29, 'TAX', 'Tax Fee', 8494),
(29, 'ADMIN_FEE', 'Admin Charge', 4248);

INSERT INTO payment (payment_number, booking_id, payment_method, payment_time, amount, status, reference_number)
VALUES ('PAY1030', 30, 'VA', '2025-05-05 15:37:05', 85360, 'SUCCESS', '0BF20EEC');

INSERT INTO payment_detail (payment_id, type, description, amount)
VALUES 
(30, 'BASE', 'Base Ticket Price', 72556),
(30, 'TAX', 'Tax Fee', 8536),
(30, 'ADMIN_FEE', 'Admin Charge', 4268);
