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

-- Insert Languages
INSERT INTO languages (name, code, is_active) VALUES
('Bahasa Indonesia', 'ID', true),
('English', 'EN', true),
('Spanish', 'ES', true),
('French', 'FR', true),
('Japanese', 'JP', true);