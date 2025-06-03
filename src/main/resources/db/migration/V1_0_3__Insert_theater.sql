INSERT INTO theater (name, code, email, phone)
VALUES
('CGV Grand Indonesia', 'CGVG1', 'grandindo@cgv.id', '02123567890'),
('CGV Paris Van Java', 'CGVPV', 'pvj@cgv.id', '02212345678'),
('CGV Pacific Place', 'CGVPP', 'pacific@cgv.id', '02134567890'),
('CGV 23 Paskal', 'CGV23', 'paskal@cgv.id', '02287654321'),
('CGV AEON Mall BSD', 'CGVAE', 'aeonbsd@cgv.id', '02145678901'),
('CGV Central Park', 'CGVCP', 'centralpark@cgv.id', '02178901234'),
('XXI Plaza Indonesia', 'XXIPI', 'plazaindonesia@xxi.co.id', '02181234567'),
('XXI Ciwalk Bandung', 'XXICW', 'ciwalk@xxi.co.id', '02265432109'),
('XXI Senayan City', 'XXISC', 'senayancity@xxi.co.id', '02170123456'),
('XXI Paris Van Java', 'XXIPV', 'pvj@xxi.co.id', '02261234567'),
('XXI Kota Kasablanka', 'XXIKK', 'kokas@xxi.co.id', '02190123456'),
('Cinepolis Pejaten Village', 'CNPVJ', 'pejaten@cinepolis.id', '02199887766'),
('Cinepolis Mall Paskal', 'CNPSK', 'paskal@cinepolis.id', '02277889900'),
('Flix Cinema PIM', 'FLXP1', 'pim@flixcinema.id', '02133445566'),
('Flix Cinema Margo City', 'FLXMC', 'margocity@flixcinema.id', '02122334455'),
('Cinema XXI TSM Bandung', 'XXITB', 'tsm@xxi.co.id', '02288997766'),
('CGV Transmart Buah Batu', 'CGVTB', 'buahbatu@cgv.id', '02287650987'),
('XXI Blok M Plaza', 'XXIBM', 'blokm@xxi.co.id', '02184561233'),
('Cinepolis Lippo Mall Kemang', 'CNPKM', 'kemang@cinepolis.id', '02176543210'),
('XXI Artha Gading', 'XXIAG', 'arthagading@xxi.co.id', '02188811234');

INSERT INTO theater_address (name, city_id, address_line, theater_id)
VALUES
-- Jakarta
('Alamat CGV GI', 1, 'Jl. M.H. Thamrin No.1, Grand Indonesia, Jakarta Selatan', 1),
('Alamat CGV Pacific', 1, 'Jl. Jend. Sudirman No.52-53, SCBD, Jakarta Selatan', 3),
('Alamat CGV Central Park', 1, 'Jl. Letjen S. Parman No.28, Jakarta Barat', 6),
('Alamat XXI Plaza Indo', 1, 'Jl. M.H. Thamrin No.28-30, Plaza Indonesia, Jakarta Pusat', 7),
('Alamat XXI Senayan', 1, 'Senayan City Lt. 5, Jl. Asia Afrika Lot 19, Jakarta Selatan', 9),
('Alamat XXI Kota Kas', 1, 'Kota Kasablanka Lt. 3, Jl. Casablanca Raya, Jakarta Selatan', 11),
('Alamat XXI Blok M', 1, 'Jl. Bulungan No.76, Blok M Plaza, Jakarta Selatan', 18),
('Alamat Cinepolis Kem', 1, 'Lippo Mall Kemang Lt. 3, Jl. Pangeran Antasari No.36, Jakarta Selatan', 19),
('Alamat XXI Artha', 2, 'Jl. Artha Gading Selatan, Mall Artha Gading, Jakarta Utara', 20),
-- Tangerang
('Alamat CGV AEON BSD', 4, 'AEON Mall BSD City Lt. 3, Jl. BSD Raya Utama, Tangerang', 5),
-- Bandung
('Alamat CGV PVJ', 5, 'Paris Van Java Mall Lt. 2, Jl. Sukajadi No.137-139, Bandung', 2),
('Alamat CGV 23 Paskal', 5, '23 Paskal Shopping Center Lt. 3, Jl. Pasir Kaliki No.25-27, Bandung', 4),
('Alamat XXI Ciwalk', 5, 'Cihampelas Walk, Jl. Cihampelas No.160, Bandung', 8),
('Alamat XXI PVJ', 5, 'Paris Van Java Mall Lt. 2, Jl. Sukajadi No.137-139, Bandung', 10),
('Alamat Cinepolis Paskal', 5, 'Paskal Hyper Square, Jl. Pasir Kaliki No.23, Bandung', 13),
('Alamat XXI TSM BDG', 5, 'Trans Studio Mall Lt. 3, Jl. Gatot Subroto No.289, Bandung', 16),
('Alamat CGV Buah Batu', 5, 'Transmart Buah Batu Lt. 2, Jl. Soekarno-Hatta No.590, Bandung', 17),
-- Jakarta (Lagi)
('Alamat Cinepolis Pejaten', 1, 'Pejaten Village Lt. 3, Jl. Warung Jati Barat No.39, Jakarta Selatan', 12),
-- Depok (anggap masuk Bekasi - city_id = 6)
('Alamat Flix Margo', 6, 'Margo City Mall Lt. 3, Jl. Margonda Raya No.358, Depok', 15),
-- Jakarta Selatan (ulang, Flix PIM)
('Alamat Flix PIM', 1, 'Pondok Indah Mall 1 Lt. 2, Jl. Metro Pondok Indah, Jakarta Selatan', 14);

INSERT INTO theater_room (name, code, theater_id)
VALUES
-- CGV Grand Indonesia (id = 1)
('Regular 1', 'R1G1', 1),
('Regular 2', 'R2G1', 1),
('Satin', 'SATG1', 1),
('Velvet', 'VELG1', 1),
-- CGV Paris Van Java (id = 2)
('Regular 1', 'R1PV', 2),
('Regular 2', 'R2PV', 2),
('Gold Class', 'GCPV', 2),
-- CGV Pacific Place (id = 3)
('Regular 1', 'R1PP', 3),
('IMAX', 'IMXPP', 3),
('SweetBox', 'SWBPP', 3),
-- CGV 23 Paskal (id = 4)
('Regular 1', 'R123', 4),
('Regular 2', 'R223', 4),
('Velvet', 'VEL23', 4),
-- CGV AEON Mall BSD (id = 5)
('Regular 1', 'R1AE', 5),
('Satin', 'SATAE', 5),
-- CGV Central Park (id = 6)
('Regular 1', 'R1CP', 6),
('Regular 2', 'R2CP', 6),
('Gold Class', 'GCCP', 6),
-- XXI Plaza Indonesia (id = 7)
('Studio 1', 'S1PI', 7),
('Studio 2', 'S2PI', 7),
-- XXI Ciwalk Bandung (id = 8)
('Studio 1', 'S1CW', 8),
('Studio 2', 'S2CW', 8),
('Premiere', 'PRMCW', 8),
-- XXI Senayan City (id = 9)
('Studio 1', 'S1SC', 9),
('Studio 2', 'S2SC', 9),
('IMAX', 'IMXSC', 9),
-- XXI Paris Van Java (id = 10)
('Studio 1', 'S1XPV', 10),
('Studio 2', 'S2XPV', 10),
-- XXI Kota Kasablanka (id = 11)
('Studio 1', 'S1KK', 11),
('Premiere', 'PRMKK', 11),
-- Cinepolis Pejaten Village (id = 12)
('Regular 1', 'R1PJ', 12),
('Regular 2', 'R2PJ', 12),
-- Cinepolis Mall Paskal (id = 13)
('Regular 1', 'R1PS', 13),
-- Flix Cinema PIM (id = 14)
('Studio A', 'STAFL', 14),
('Studio B', 'STBFL', 14),
-- Flix Cinema Margo City (id = 15)
('Studio A', 'STAMC', 15),
('Studio B', 'STBMC', 15),
-- Cinema XXI TSM Bandung (id = 16)
('Studio 1', 'S1TSM', 16),
('Studio 2', 'S2TSM', 16),
-- CGV Transmart Buah Batu (id = 17)
('Regular 1', 'R1BB', 17),
('SweetBox', 'SWBBB', 17),
-- XXI Blok M Plaza (id = 18)
('Studio 1', 'S1BM', 18),
('Studio 2', 'S2BM', 18),
-- Cinepolis Lippo Mall Kemang (id = 19)
('Regular 1', 'R1KM', 19),
-- XXI Artha Gading (id = 20)
('Studio 1', 'S1AG', 20),
('Studio 2', 'S2AG', 20);