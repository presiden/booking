INSERT INTO genre (name, description, is_active) VALUES
('Action', 'High energy scenes, fights, and chases.', true),
('Comedy', 'Intended to make the audience laugh.', true),
('Drama', 'Serious, emotional storytelling.', true),
('Horror', 'Designed to scare and thrill.', true),
('Romance', 'Focus on love and relationships.', true),
('Sci-Fi', 'Futuristic, science-based storytelling.', true),
('Fantasy', 'Magical or supernatural elements.', true),
('Thriller', 'Tense, suspenseful narratives.', true),
('Documentary', 'Non-fiction, informative content.', true),
('Musical', 'Songs and dance as a core part of the story.', true);

INSERT INTO languages (name, description, is_active) VALUES
('English', 'English language', true),
('Indonesian', 'Indonesian language', true),
('Spanish', 'Spanish language', true),
('French', 'French language', true),
('German', 'German language', true),
('Italian', 'Italian language', true),
('Portuguese', 'Portuguese language', true),
('Russian', 'Russian language', true),
('Mandarin', 'Mandarin Chinese', true),
('Japanese', 'Japanese language', true);

INSERT INTO person (name, writer, director, star, is_active) VALUES
('John Doe', true, false, true, true),
('Jane Smith', false, true, true, true),
('Robert Brown', true, false, false, true),
('Emily White', false, true, false, true),
('Michael Johnson', true, true, false, true),
('Sarah Williams', true, true, true, true),
('David Wilson', false, false, true, true),
('Laura Harris', false, true, true, true),
('James Clark', true, false, false, true),
('Olivia Lewis', false, false, true, true);

INSERT INTO country (name, code, is_active) VALUES
('United States', 'US', true),
('Canada', 'CA', true),
('Australia', 'AU', true),
('United Kingdom', 'UK', true),
('Germany', 'DE', true),
('France', 'FR', true),
('Italy', 'IT', true),
('Japan', 'JP', true),
('India', 'IN', true),
('China', 'CN', true);

INSERT INTO province (name, country_id, is_active) VALUES
('California', 1, true),
('Ontario', 2, true),
('New South Wales', 3, true),
('London', 4, true),
('Bavaria', 5, true),
('Île-de-France', 6, true),
('Lazio', 7, true),
('Tokyo', 8, true),
('Maharashtra', 9, true),
('Beijing', 10, true);

-- Insert 10 sample rows into 'city' table
INSERT INTO city (name, province_id, is_active)
VALUES
('Jakarta', 1, TRUE),
('Bandung', 2, TRUE),
('Surabaya', 3, TRUE),
('Medan', 4, TRUE),
('Yogyakarta', 5, TRUE),
('Semarang', 6, TRUE),
('Makassar', 7, TRUE),
('Palembang', 8, TRUE),
('Balikpapan', 9, TRUE),
('Denpasar', 10, TRUE);

INSERT INTO theater (name, code, email, phone, image_path, created_by, modified_by, deleted_by, deleted, deleted_date) VALUES
('Grand Cinema', 'GC01', 'info@grandcinema.com', '123-456-7890', '/images/grand_cinema.jpg', 'admin', 'admin', NULL, false, NULL),
('Silver Screen', 'SS02', 'info@silverscreen.com', '234-567-8901', '/images/silver_screen.jpg', 'admin', 'admin', NULL, false, NULL),
('Cinema Palace', 'CP03', 'info@cinemapalace.com', '345-678-9012', '/images/cinema_palace.jpg', 'admin', 'admin', NULL, false, NULL),
('Movie World', 'MW04', 'info@movieworld.com', '456-789-0123', '/images/movie_world.jpg', 'admin', 'admin', NULL, false, NULL),
('Dream Theater', 'DT05', 'info@dreamtheater.com', '567-890-1234', '/images/dream_theater.jpg', 'admin', 'admin', NULL, false, NULL),
('Royal Cinema', 'RC06', 'info@royalcinema.com', '678-901-2345', '/images/royal_cinema.jpg', 'admin', 'admin', NULL, false, NULL),
('Blue Moon Cinema', 'BMC07', 'info@bluemooncinema.com', '789-012-3456', '/images/blue_moon_cinema.jpg', 'admin', 'admin', NULL, false, NULL),
('Epic Movie Theater', 'EMT08', 'info@epicmovie.com', '890-123-4567', '/images/epic_movie_theater.jpg', 'admin', 'admin', NULL, false, NULL),
('Cineplex', 'CIN09', 'info@cineplex.com', '901-234-5678', '/images/cineplex.jpg', 'admin', 'admin', NULL, false, NULL),
('CineStar', 'CS10', 'info@cinestar.com', '012-345-6789', '/images/cinestar.jpg', 'admin', 'admin', NULL, false, NULL);

INSERT INTO theater_room (name, code, theater_id, created_by, modified_by, deleted_by, deleted) VALUES
('Room A', 'RA01', 1, 'admin', 'admin', NULL, false),
('Room B', 'RB02', 2, 'admin', 'admin', NULL, false),
('Room C', 'RC03', 3, 'admin', 'admin', NULL, false),
('Room D', 'RD04', 4, 'admin', 'admin', NULL, false),
('Room E', 'RE05', 5, 'admin', 'admin', NULL, false),
('Room F', 'RF06', 6, 'admin', 'admin', NULL, false),
('Room G', 'RG07', 7, 'admin', 'admin', NULL, false),
('Room H', 'RH08', 8, 'admin', 'admin', NULL, false),
('Room I', 'RI09', 9, 'admin', 'admin', NULL, false),
('Room J', 'RJ10', 10, 'admin', 'admin', NULL, false);

-- Insert 30 sample rows into 'theater_address' table
INSERT INTO theater_address 
(name, country_id, province_id, city_id, address_line, theater_id, created_by, modified_by, deleted_by, deleted)
VALUES
('ThAddr1', 1, 1, 1, 'Jl. Sudirman No. 1', 1, 'admin', 'admin', NULL, FALSE),
('ThAddr2', 2, 2, 2, 'Jl. Thamrin No. 2', 2, 'admin', 'admin', NULL, FALSE),
('ThAddr3', 3, 3, 3, 'Jl. Asia Afrika No. 3', 3, 'admin', 'admin', NULL, FALSE),
('ThAddr4', 4, 4, 4, 'Jl. Merdeka No. 4', 4, 'admin', 'admin', NULL, FALSE),
('ThAddr5', 5, 5, 5, 'Jl. Malioboro No. 5', 5, 'admin', 'admin', NULL, FALSE),
('ThAddr6', 6, 6, 6, 'Jl. Diponegoro No. 6', 6, 'admin', 'admin', NULL, FALSE),
('ThAddr7', 7, 7, 7, 'Jl. Gatot Subroto No. 7', 7, 'admin', 'admin', NULL, FALSE),
('ThAddr8', 8, 8, 8, 'Jl. Pattimura No. 8', 8, 'admin', 'admin', NULL, FALSE),
('ThAddr9', 9, 9, 9, 'Jl. Ahmad Yani No. 9', 9, 'admin', 'admin', NULL, FALSE),
('ThAddr10', 10, 10, 10, 'Jl. Teuku Umar No. 10', 10, 'admin', 'admin', NULL, FALSE);

INSERT INTO users (username, name, email, phone, password, birth_date, image_path, created_by, created_date, modified_by, modified_date, deleted_by, deleted_date, deleted) 
VALUES 
('johndoe', 'John Doe', 'johndoe@example.com', '1234567890', 'password123', '1980-05-15', '/images/johndoe.jpg', 'admin', NOW(), 'admin', NOW(), NULL, NULL, FALSE),
('janedoe', 'Jane Doe', 'janedoe@example.com', '1234567891', 'password456', '1990-07-20', '/images/janedoe.jpg', 'admin', NOW(), 'admin', NOW(), NULL, NULL, FALSE),
('bobsmith', 'Bob Smith', 'bobsmith@example.com', '1234567892', 'password789', '1975-11-10', '/images/bobsmith.jpg', 'admin', NOW(), 'admin', NOW(), NULL, NULL, FALSE),
('alicejohnson', 'Alice Johnson', 'alicejohnson@example.com', '1234567893', 'password012', '1985-03-22', '/images/alicejohnson.jpg', 'admin', NOW(), 'admin', NOW(), NULL, NULL, FALSE),
('charliebrown', 'Charlie Brown', 'charliebrown@example.com', '1234567894', 'password345', '1995-09-05', '/images/charliebrown.jpg', 'admin', NOW(), 'admin', NOW(), NULL, NULL, FALSE),
('emilyclark', 'Emily Clark', 'emilyclark@example.com', '1234567895', 'password678', '2000-02-18', '/images/emilyclark.jpg', 'admin', NOW(), 'admin', NOW(), NULL, NULL, FALSE),
('michaelscott', 'Michael Scott', 'michaelscott@example.com', '1234567896', 'password901', '1970-01-30', '/images/michaelscott.jpg', 'admin', NOW(), 'admin', NOW(), NULL, NULL, FALSE),
('davidjones', 'David Jones', 'davidjones@example.com', '1234567897', 'password234', '1982-06-17', '/images/davidjones.jpg', 'admin', NOW(), 'admin', NOW(), NULL, NULL, FALSE),
('susanwhite', 'Susan White', 'susanwhite@example.com', '1234567898', 'password567', '1992-08-14', '/images/susanwhite.jpg', 'admin', NOW(), 'admin', NOW(), NULL, NULL, FALSE),
('jamesbrown', 'James Brown', 'jamesbrown@example.com', '1234567899', 'password890', '1988-10-25', '/images/jamesbrown.jpg', 'admin', NOW(), 'admin', NOW(), NULL, NULL, FALSE);

-- 2. Insert 10 users_address (referencing existing users and countries/provinces/cities)
INSERT INTO users_address (name, country_id, province_id, city_id, address_line, users_id, created_by, created_date, modified_by, modified_date, deleted_by, deleted_date, deleted) 
VALUES
('John''s Address', 1, 1, 1, '123 Main St, Springfield', 1, 'admin', NOW(), 'admin', NOW(), NULL, NULL, FALSE),
('Jane''s Address', 2, 2, 2, '456 Oak St, Rivertown', 2, 'admin', NOW(), 'admin', NOW(), NULL, NULL, FALSE),
('Bob''s Address', 3, 3, 3, '789 Pine St, Hilltop', 3, 'admin', NOW(), 'admin', NOW(), NULL, NULL, FALSE),
('Alice''s Address', 4, 4, 4, '101 Maple St, Lakeside', 4, 'admin', NOW(), 'admin', NOW(), NULL, NULL, FALSE),
('Charlie''s Address', 5, 5, 5, '202 Birch St, Seaside', 5, 'admin', NOW(), 'admin', NOW(), NULL, NULL, FALSE),
('Emily''s Address', 6, 6, 6, '303 Cedar St, Forestview', 6, 'admin', NOW(), 'admin', NOW(), NULL, NULL, FALSE),
('Michael''s Address', 7, 7, 7, '404 Redwood St, Valleypark', 7, 'admin', NOW(), 'admin', NOW(), NULL, NULL, FALSE),
('David''s Address', 8, 8, 8, '505 Elm St, Mountainview', 8, 'admin', NOW(), 'admin', NOW(), NULL, NULL, FALSE),
('Susan''s Address', 9, 9, 9, '606 Fir St, Beachside', 9, 'admin', NOW(), 'admin', NOW(), NULL, NULL, FALSE),
('James''s Address', 10, 10, 10, '707 Willow St, Desertland', 10, 'admin', NOW(), 'admin', NOW(), NULL, NULL, FALSE);

-- 3. Insert 10 subtitles
INSERT INTO subtitle (name, code, is_active) 
VALUES 
('English', 'EN', TRUE),
('Spanish', 'ES', TRUE),
('French', 'FR', TRUE),
('German', 'DE', TRUE),
('Italian', 'IT', TRUE),
('Portuguese', 'PT', TRUE),
('Dutch', 'NL', TRUE),
('Russian', 'RU', TRUE),
('Chinese', 'ZH', TRUE),
('Japanese', 'JA', TRUE);

INSERT INTO film (
    title, description, languages_id, duration, director_id, 
    image_path, trailer_path, release_date, rating_average, 
    created_by, created_date, modified_by, modified_date, 
    deleted_by, deleted_date, deleted
) 
VALUES
('Film One', 'This is a description of film one.', 1, 120, 1, '/images/film1.jpg', '/trailers/film1.mp4', '2025-04-01', 8.5, 'admin', NOW(), 'admin', NOW(), NULL, NULL, FALSE),
('Film Two', 'This is a description of film two.', 2, 140, 2, '/images/film2.jpg', '/trailers/film2.mp4', '2025-04-02', 7.8, 'admin', NOW(), 'admin', NOW(), NULL, NULL, FALSE),
('Film Three', 'This is a description of film three.', 3, 110, 3, '/images/film3.jpg', '/trailers/film3.mp4', '2025-04-03', 9.0, 'admin', NOW(), 'admin', NOW(), NULL, NULL, FALSE),
('Film Four', 'This is a description of film four.', 4, 130, 4, '/images/film4.jpg', '/trailers/film4.mp4', '2025-04-04', 7.3, 'admin', NOW(), 'admin', NOW(), NULL, NULL, FALSE),
('Film Five', 'This is a description of film five.', 5, 125, 5, '/images/film5.jpg', '/trailers/film5.mp4', '2025-04-05', 8.2, 'admin', NOW(), 'admin', NOW(), NULL, NULL, FALSE),
('Film Six', 'This is a description of film six.', 6, 115, 6, '/images/film6.jpg', '/trailers/film6.mp4', '2025-04-06', 7.6, 'admin', NOW(), 'admin', NOW(), NULL, NULL, FALSE),
('Film Seven', 'This is a description of film seven.', 7, 105, 7, '/images/film7.jpg', '/trailers/film7.mp4', '2025-04-07', 8.0, 'admin', NOW(), 'admin', NOW(), NULL, NULL, FALSE),
('Film Eight', 'This is a description of film eight.', 8, 135, 8, '/images/film8.jpg', '/trailers/film8.mp4', '2025-04-08', 7.4, 'admin', NOW(), 'admin', NOW(), NULL, NULL, FALSE),
('Film Nine', 'This is a description of film nine.', 9, 125, 9, '/images/film9.jpg', '/trailers/film9.mp4', '2025-04-09', 8.3, 'admin', NOW(), 'admin', NOW(), NULL, NULL, FALSE),
('Film Ten', 'This is a description of film ten.', 10, 140, 10, '/images/film10.jpg', '/trailers/film10.mp4', '2025-04-10', 7.9, 'admin', NOW(), 'admin', NOW(), NULL, NULL, FALSE);



INSERT INTO film_genre (film_id, genre_id) VALUES
(1, 1), (1, 2),
(2, 2), (2, 3),
(3, 1),
(4, 4),
(5, 2), (5, 5),
(6, 6),
(7, 1), (7, 7),
(8, 3),
(9, 5),
(10, 2), (10, 6);

INSERT INTO film_subtitle (film_id, subtitle_id) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);

INSERT INTO film_writer (film_id, writer_id) 
VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);


INSERT INTO film_star (film_id, star_id) 
VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);

INSERT INTO rating (film_id, users_id, value, created_by, created_date, modified_by, modified_date, deleted_by, deleted_date, deleted) 
VALUES
(1, 1, 5, 'admin', NOW(), 'admin', NOW(), NULL, NULL, FALSE),
(2, 2, 4, 'admin', NOW(), 'admin', NOW(), NULL, NULL, FALSE),
(3, 3, 3, 'admin', NOW(), 'admin', NOW(), NULL, NULL, FALSE),
(4, 4, 5, 'admin', NOW(), 'admin', NOW(), NULL, NULL, FALSE),
(5, 5, 2, 'admin', NOW(), 'admin', NOW(), NULL, NULL, FALSE),
(6, 6, 4, 'admin', NOW(), 'admin', NOW(), NULL, NULL, FALSE),
(7, 7, 5, 'admin', NOW(), 'admin', NOW(), NULL, NULL, FALSE),
(8, 8, 3, 'admin', NOW(), 'admin', NOW(), NULL, NULL, FALSE),
(9, 9, 4, 'admin', NOW(), 'admin', NOW(), NULL, NULL, FALSE),
(10, 10, 5, 'admin', NOW(), 'admin', NOW(), NULL, NULL, FALSE);

-- Insert 20 sample rows into 'shows' table
INSERT INTO shows ("date", "time", film_id, theater_id, theater_room_id, created_by, modified_by, deleted_by, deleted)
VALUES
('2025-05-05', '10:00:00', 1, 1, 1, 'admin', 'admin', NULL, FALSE),
('2025-05-05', '13:00:00', 2, 2, 2, 'admin', 'admin', NULL, FALSE),
('2025-05-05', '16:00:00', 3, 3, 3, 'admin', 'admin', NULL, FALSE),
('2025-05-05', '19:00:00', 4, 4, 4, 'admin', 'admin', NULL, FALSE),
('2025-05-06', '11:00:00', 5, 5, 5, 'admin', 'admin', NULL, FALSE),
('2025-05-06', '14:00:00', 6, 6, 6, 'admin', 'admin', NULL, FALSE),
('2025-05-06', '17:00:00', 7, 7, 7, 'admin', 'admin', NULL, FALSE),
('2025-05-06', '20:00:00', 8, 8, 8, 'admin', 'admin', NULL, FALSE),
('2025-05-07', '10:00:00', 9, 9, 9, 'admin', 'admin', NULL, FALSE),
('2025-05-07', '13:00:00', 10, 10, 10, 'admin', 'admin', NULL, FALSE),
('2025-05-07', '16:00:00', 1, 2, 3, 'admin', 'admin', NULL, FALSE),
('2025-05-07', '19:00:00', 2, 3, 4, 'admin', 'admin', NULL, FALSE),
('2025-05-08', '10:30:00', 3, 4, 5, 'admin', 'admin', NULL, FALSE),
('2025-05-08', '13:30:00', 4, 5, 6, 'admin', 'admin', NULL, FALSE),
('2025-05-08', '16:30:00', 5, 6, 7, 'admin', 'admin', NULL, FALSE),
('2025-05-08', '19:30:00', 6, 7, 8, 'admin', 'admin', NULL, FALSE),
('2025-05-09', '11:00:00', 7, 8, 9, 'admin', 'admin', NULL, FALSE),
('2025-05-09', '14:00:00', 8, 9, 10, 'admin', 'admin', NULL, FALSE),
('2025-05-09', '17:00:00', 9, 10, 1, 'admin', 'admin', NULL, FALSE),
('2025-05-09', '20:00:00', 10, 1, 2, 'admin', 'admin', NULL, FALSE);



