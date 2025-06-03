-- Insert 20 films
INSERT INTO film (title, description, languages_id, duration, image_path, trailer_path, release_date, rating)
VALUES
('Parasite', 'Film Korea Selatan karya Bong Joon-ho yang menggambarkan kesenjangan sosial antara dua keluarga dari kelas berbeda.', 2, 132, NULL, 'https://www.youtube.com/watch?v=5xH0HfJHsaY', '2019-05-30', 'R'),
('Amélie', 'Seorang wanita muda di Paris memutuskan untuk mengubah hidup orang-orang di sekitarnya menjadi lebih baik.', 4, 122, NULL, 'https://www.youtube.com/watch?v=HUECWi5pX7o', '2001-04-25', 'R'),
('City of God', 'Kisah dua anak laki-laki yang tumbuh di lingkungan kumuh Rio de Janeiro dan mengambil jalan hidup yang berbeda.', 3, 130, NULL, 'https://www.youtube.com/watch?v=dcUOO4Itgmw', '2002-08-30', 'R'),
('Pan''s Labyrinth', 'Seorang gadis muda di Spanyol pasca-perang menemukan dunia fantasi misterius.', 3, 118, NULL, 'https://www.youtube.com/watch?v=EqYiSlkvRuw', '2006-10-11', 'R'),
('Life Is Beautiful', 'Seorang ayah Italia menggunakan humor untuk melindungi putranya dari kenyataan kamp konsentrasi.', 3, 116, NULL, 'https://www.youtube.com/watch?v=pAYEQP8gx3w', '1997-12-20', 'PG-13'),
('The Lives of Others', 'Seorang agen Stasi di Jerman Timur mengawasi pasangan seniman dan mulai terlibat secara emosional.', 3, 137, NULL, 'https://www.youtube.com/watch?v=n3_iLOp6IhM', '2006-03-23', 'R'),
('Crouching Tiger, Hidden Dragon', 'Dua pejuang bela diri mengejar pedang legendaris yang dicuri.', 5, 120, NULL, 'https://www.youtube.com/watch?v=iv_ed5VmoD8', '2000-07-06', 'PG-13'),
('Oldboy', 'Seorang pria yang diculik dan dipenjara selama 15 tahun mencari balas dendam setelah dibebaskan.', 2, 120, NULL, 'https://www.youtube.com/watch?v=2HkjrJ6IK5E', '2003-11-21', 'R'),
('The Intouchables', 'Persahabatan antara seorang pria kaya yang lumpuh dan pengasuhnya yang berasal dari lingkungan miskin.', 4, 112, NULL, 'https://www.youtube.com/watch?v=34WIbmXkewU', '2011-11-02', 'R'),
('Spirited Away', 'Seorang gadis muda tersesat di dunia roh dan harus menyelamatkan orang tuanya.', 5, 125, NULL, 'https://www.youtube.com/watch?v=ByXuk9QqQkk', '2001-07-20', 'PG');

INSERT INTO film (title, description, languages_id, duration, image_path, trailer_path, release_date, rating)
VALUES
('Perempuan Tanah Jahanam', 'Maya dan temannya kembali ke desa asalnya untuk mencari warisan, namun menemukan rahasia kelam.', 1, 106, NULL, 'https://www.youtube.com/watch?v=6eWF9nKZ1zI', '2019-10-17', '17+'),
('Pengabdi Setan', 'Keluarga menghadapi kejadian supranatural setelah kematian ibu mereka.', 1, 107, NULL, 'https://www.youtube.com/watch?v=8wqHo3zD6yI', '2017-09-28', '17+'),
('Keluarga Cemara', 'Keluarga yang harus beradaptasi dengan kehidupan baru setelah mengalami kebangkrutan.', 1, 110, NULL, 'https://www.youtube.com/watch?v=6X8b3v3N1kE', '2019-01-03', 'SU'),
('Marlina Si Pembunuh dalam Empat Babak', 'Seorang janda membalas dendam terhadap perampok yang menyerangnya.', 1, 93, NULL, 'https://www.youtube.com/watch?v=V4fYgkN3Fq8', '2017-11-16', '17+'),
('The Big 4', 'Empat mantan pembunuh bayaran kembali beraksi untuk membantu seorang polisi muda.', 1, 141, NULL, 'https://www.youtube.com/watch?v=8kQZHYbZkLs', '2022-12-15', '13+'),
('The Shadow Strays', 'Seorang pembunuh muda membantu anak laki-laki yang kehilangan ibunya, menghadapi masa lalunya.', 1, 143, NULL, 'https://www.youtube.com/watch?v=jsKo8nvOfck', '2024-10-17', '17+'),
('Yuni', 'Remaja perempuan yang menghadapi tekanan sosial untuk menikah muda.', 1, 95, NULL, 'https://www.youtube.com/watch?v=ZsY5aVtZk1s', '2021-10-21', '13+'),
('Dilan 1990', 'Kisah cinta remaja antara Dilan dan Milea di Bandung tahun 1990.', 1, 110, NULL, 'https://www.youtube.com/watch?v=8g1wLrV1j4k', '2018-01-25', '13+'),
('Laskar Pelangi', 'Sekelompok anak-anak di Belitung berjuang untuk mendapatkan pendidikan.', 1, 124, NULL, 'https://www.youtube.com/watch?v=6kz1ZVgqzjI', '2008-09-25', 'SU'),
('Ada Apa dengan Cinta?', 'Cinta dan Rangga menjalin hubungan yang rumit di masa SMA.', 1, 112, NULL, 'https://www.youtube.com/watch?v=3H2zZ5uK3zI', '2002-02-07', '13+');

-- Film Luar Negeri
INSERT INTO film_genre (film_id, genre_id) VALUES
(1, 1), (1, 2), (1, 5), -- Parasite
(2, 1), (2, 4), (2, 5), -- Amélie
(3, 1), (3, 3),         -- City of God
(4, 1), (4, 7),         -- Pan's Labyrinth
(5, 1), (5, 4), (5, 5), -- Life Is Beautiful
(6, 1), (6, 2),         -- The Lives of Others
(7, 7), (7, 4),         -- Crouching Tiger, Hidden Dragon
(8, 2), (8, 3),         -- Oldboy
(9, 1), (9, 5),         -- The Intouchables
(10, 7), (10, 8);       -- Spirited Away

-- Film Indonesia
INSERT INTO film_genre (film_id, genre_id) VALUES
(11, 1), (11, 2),       -- Perempuan Tanah Jahanam
(12, 1), (12, 2),       -- Pengabdi Setan
(13, 1), (13, 8),       -- Keluarga Cemara
(14, 1), (14, 2),       -- Marlina Si Pembunuh dalam Empat Babak
(15, 1), (15, 7),       -- The Big 4
(16, 1), (16, 2),       -- The Shadow Strays
(17, 1), (17, 9),       -- Yuni
(18, 1), (18, 4),       -- Dilan 1990
(19, 1), (19, 8),       -- Laskar Pelangi
(20, 1), (20, 4);       -- Ada Apa dengan Cinta?

-- Film Luar Negeri
INSERT INTO film_subtitle (film_id, subtitle_id) VALUES
(1, 1), (1, 2), -- Parasite
(2, 1), (2, 2), -- Amélie
(3, 1), (3, 2), -- City of God
(4, 1), (4, 2), -- Pan's Labyrinth
(5, 1), (5, 2), -- Life Is Beautiful
(6, 1), (6, 2), -- The Lives of Others
(7, 1), (7, 2), -- Crouching Tiger, Hidden Dragon
(8, 1), (8, 2), -- Oldboy
(9, 1), (9, 2), -- The Intouchables
(10, 1), (10, 2); -- Spirited Away

-- Film Indonesia
INSERT INTO film_subtitle (film_id, subtitle_id) VALUES
(11, 2), -- Perempuan Tanah Jahanam
(12, 2), -- Pengabdi Setan
(13, 2), -- Keluarga Cemara
(14, 2), -- Marlina Si Pembunuh dalam Empat Babak
(15, 2), -- The Big 4
(16, 2), -- The Shadow Strays
(17, 2), -- Yuni
(18, 2), -- Dilan 1990
(19, 2), -- Laskar Pelangi
(20, 2); -- Ada Apa dengan Cinta?