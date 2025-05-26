CREATE EXTENSION IF NOT EXISTS btree_gist;

DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM pg_type WHERE typname = 'booking_status') THEN
        CREATE TYPE booking_status AS ENUM (
		    'IN_PROGRESS',
		    'COMPLETED',
		    'EXPIRED',
		    'CANCELLED'
		);
    END IF;

    -- IF NOT EXISTS (SELECT 1 FROM pg_type WHERE typname = 'payment_status') THEN
    --     CREATE TYPE payment_status AS ENUM (
	-- 	    'PENDING',
	-- 	    'SUCCESS',
	-- 	    'FAILED',
	-- 	    'EXPIRED',
	-- 	    'CANCELLED'
	-- 	);
    -- END IF;

    -- IF NOT EXISTS (SELECT 1 FROM pg_type WHERE typname = 'payment_amount_type') THEN
    --     CREATE TYPE payment_amount_type AS ENUM (
	-- 	    'BASE',
	-- 	    'DISCOUNT',
	-- 	    'ADMIN_FEE',
	-- 	    'TAX',
	-- 	    'OTHERS'
	-- 	);
    -- END IF;

    -- IF NOT EXISTS (SELECT 1 FROM pg_type WHERE typname = 'payment_method') THEN
    --     CREATE TYPE payment_method AS ENUM (
	-- 	    'CASH', 
	-- 	    'CREDIT_CARD', 
	-- 	    'DEBIT_CARD', 
	-- 	    'VA', 
	-- 	    'BANK_TRANSFER', 
	-- 	    'GOPAY', 
	-- 	    'OVO', 
	-- 	    'QRIS', 
	-- 	    'OTHERS'
	-- 	);
    -- END IF;

    -- IF NOT EXISTS (SELECT 1 FROM pg_type WHERE typname = 'rating') THEN
    --     CREATE TYPE rating AS ENUM ('SU', 'BO', 'R', 'D');
    -- END IF;
END $$;

CREATE TABLE IF NOT EXISTS genre (
    id BIGSERIAL PRIMARY KEY,
    name VARCHAR(20) NOT NULL,
    description TEXT,
    is_active BOOL NOT NULL DEFAULT TRUE,
    UNIQUE(name)
);

CREATE TABLE IF NOT EXISTS country (
    id BIGSERIAL PRIMARY KEY,
    name VARCHAR(20) NOT NULL,
    code VARCHAR(5) NOT NULL,
    is_active BOOL NOT NULL DEFAULT TRUE,
    UNIQUE(name)
);

CREATE TABLE IF NOT EXISTS province (
    id BIGSERIAL PRIMARY KEY,
    name VARCHAR(20) NOT NULL,
    country_id BIGINT NOT NULL,
    is_active BOOL NOT NULL DEFAULT TRUE,
    UNIQUE(name),
    FOREIGN KEY (country_id) REFERENCES country(id)
);

CREATE TABLE IF NOT EXISTS city (
    id BIGSERIAL PRIMARY KEY,
    name VARCHAR(20) NOT NULL,
    province_id BIGINT NOT NULL,
    is_active BOOL NOT NULL DEFAULT TRUE,
    UNIQUE(name),
    FOREIGN KEY (province_id) REFERENCES province(id)
);

CREATE TABLE IF NOT EXISTS theater (
    id BIGSERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    code VARCHAR(5) NOT NULL,
    email VARCHAR(50),
    phone VARCHAR(20),
    image_path VARCHAR(512),
    is_active BOOL NOT NULL DEFAULT TRUE,
    UNIQUE(name),
    UNIQUE(code)
);

CREATE TABLE IF NOT EXISTS theater_room (
    id BIGSERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    code VARCHAR(5) NOT NULL,
    theater_id BIGINT NOT NULL,
    is_active BOOL NOT NULL DEFAULT TRUE,
    UNIQUE(name),
    UNIQUE(code),
    FOREIGN KEY (theater_id) REFERENCES theater(id)
);

CREATE TABLE IF NOT EXISTS theater_address (
    id BIGSERIAL PRIMARY KEY,
    name VARCHAR(20) NOT NULL,
    city_id BIGINT,
    address_line VARCHAR(256) NOT NULL,
    theater_id BIGINT NOT NULL,
    is_active BOOL NOT NULL DEFAULT TRUE,
    UNIQUE(name),
    FOREIGN KEY (city_id) REFERENCES city(id),
    FOREIGN KEY (theater_id) REFERENCES theater(id)
);

CREATE TABLE IF NOT EXISTS users (
    id BIGSERIAL PRIMARY KEY,
    username VARCHAR(30) NOT NULL,
    fullname VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL,
    phone_number VARCHAR(20) NOT NULL,
    password VARCHAR(512) NOT NULL,
    birth_date DATE NOT NULL,
    image_path VARCHAR(512),
    is_active BOOL NOT NULL DEFAULT TRUE,
    UNIQUE(username),
    UNIQUE(email),
    UNIQUE(phone_number)
);

CREATE TABLE IF NOT EXISTS users_address (
    id BIGSERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    city_id BIGINT,
    address_line VARCHAR(256) NOT NULL,
    users_id BIGINT NOT NULL,
    is_active BOOL NOT NULL DEFAULT TRUE,
    UNIQUE(name),
    FOREIGN KEY (city_id) REFERENCES city(id),
    FOREIGN KEY (users_id) REFERENCES users(id)
);

CREATE TABLE IF NOT EXISTS languages (
    id BIGSERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    code VARCHAR(5) NOT NULL,
    is_active BOOL NOT NULL DEFAULT TRUE,
    UNIQUE(name),
    UNIQUE(code)
);

CREATE TABLE IF NOT EXISTS film (
    id BIGSERIAL PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    description TEXT,
	languages_id BIGINT,
	duration INTEGER NOT NULL,
	image_path VARCHAR(512),
	trailer_path VARCHAR(512),
	release_date timestamp,
	rating VARCHAR(10) NOT NULL,
    is_active BOOL NOT NULL DEFAULT TRUE,
    FOREIGN KEY (languages_id) REFERENCES languages(id)
);

CREATE TABLE IF NOT EXISTS film_genre (
    film_id BIGINT REFERENCES film(id),
    genre_id BIGINT REFERENCES genre(id),
    PRIMARY KEY (film_id, genre_id)
);


CREATE TABLE IF NOT EXISTS film_subtitle (
    film_id BIGINT REFERENCES film(id),
    subtitle_id BIGINT REFERENCES languages(id),
    PRIMARY KEY (film_id, subtitle_id)
);

CREATE TABLE IF NOT EXISTS shows (
    id BIGSERIAL PRIMARY KEY,
    "date" DATE NOT NULL,
    start_time TIME NOT NULL,
    end_time TIME NOT NULL,
    film_id BIGINT NOT NULL,
    theater_room_id BIGINT NOT NULL,
    price NUMERIC(10,2) NOT NULL,
    is_active BOOL NOT NULL DEFAULT TRUE,
    CONSTRAINT shows_no_overlap EXCLUDE USING gist (
	    theater_room_id WITH =,
	    tsrange(
	        ("date" + start_time)::timestamp,
	        ("date" + end_time)::timestamp
	    ) WITH &&
	),
    FOREIGN KEY (film_id) REFERENCES film(id),
    FOREIGN KEY (theater_room_id) REFERENCES theater_room(id)
);

CREATE TABLE IF NOT EXISTS booking (
    id BIGSERIAL PRIMARY KEY,
    booking_number VARCHAR(20) NOT NULL,
    users_id BIGINT NOT NULL,     
    shows_id BIGINT NOT NULL,           
    booking_time timestamp NOT NULL DEFAULT NOW(),  
    status booking_status NOT NULL, ---- IN_PROGRESS, COMPLETED, CANCELLED, EXPIRED
    deleted BOOL NOT NULL DEFAULT FALSE,
    deleted_by VARCHAR(50),
    deleted_date TIMESTAMP,
    UNIQUE(booking_number),
    FOREIGN KEY (users_id) REFERENCES users(id),    
    FOREIGN KEY (shows_id) REFERENCES shows(id)
);

CREATE TABLE IF NOT EXISTS booking_history (
    id BIGSERIAL PRIMARY KEY,
    booking_id BIGINT NOT NULL,
    status booking_status NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT NOW(),
    expires_at TIMESTAMP, -- opsional, hanya relevan jika status SELECTED
    deleted BOOL NOT NULL DEFAULT FALSE,
    deleted_by VARCHAR(50),
    deleted_date TIMESTAMP,
    -- CONSTRAINT chk_booking_expires_if_selected CHECK (
    --     (status = 'SELECTED' AND expires_at IS NOT NULL) OR
    --     (status <> 'SELECTED' AND expires_at IS NULL)
    -- ),
    FOREIGN KEY (booking_id) REFERENCES booking(id)
);

CREATE TABLE IF NOT EXISTS seat (
    id BIGSERIAL PRIMARY KEY,
    theater_room_id BIGINT NOT NULL,
    row_label VARCHAR(5) NOT NULL,      -- contoh: A, B
    seat_number INT NOT NULL,           -- contoh: 1, 2
    seat_type VARCHAR(20) NOT NULL,     -- regular, VIP
    x_coordinate VARCHAR(20),         -- posisi x dalam theater room
    y_coordinate VARCHAR(20),         -- posisi y dalam theater room
    additional_price NUMERIC(10,2) NOT NULL DEFAULT 0, -- harga tambahan untuk kursi ini
    is_active BOOL NOT NULL DEFAULT TRUE,
    UNIQUE(theater_room_id, row_label, seat_number),
    FOREIGN KEY (theater_room_id) REFERENCES theater_room(id)
);

CREATE TABLE IF NOT EXISTS booking_seat (
    booking_id BIGINT,
    seat_id BIGINT,
    PRIMARY KEY (booking_id, seat_id),
    FOREIGN KEY (booking_id) REFERENCES booking(id),
    FOREIGN KEY (seat_id) REFERENCES seat(id)
);

CREATE TABLE IF NOT EXISTS payment (
    id BIGSERIAL PRIMARY KEY,
    payment_number VARCHAR(20) NOT NULL,
    booking_id BIGINT NOT NULL,
    payment_method VARCHAR(20) NOT NULL, --VA, Gopay, OVO, QRIS, etc
    payment_time timestamp NOT NULL,
    amount NUMERIC(10,2) NOT NULL,
    status VARCHAR(20) NOT NULL, ---- PENDING, SUCCESS, FAILED, CANCELLED, EXPIRED
    reference_number VARCHAR(50) NOT NULL,
    description varchar(256),
    deleted BOOL NOT NULL DEFAULT FALSE,
    deleted_by VARCHAR(50),
    deleted_date TIMESTAMP,
    UNIQUE(booking_id),
    UNIQUE(payment_number, payment_method),
    FOREIGN KEY (booking_id) REFERENCES booking(id)
);

CREATE TABLE IF NOT EXISTS payment_detail (
    id BIGSERIAL PRIMARY KEY,
    payment_id BIGINT NOT NULL,
    amount_type VARCHAR(20) NOT NULL, -- BASE, DISCOUNT, ADMIN_FEE, TAX, OTHERS
    description TEXT,
    amount NUMERIC(10,2) NOT NULL,
    deleted BOOL NOT NULL DEFAULT FALSE,
    deleted_by VARCHAR(50),
    deleted_date TIMESTAMP,
    FOREIGN KEY (payment_id) REFERENCES payment(id)
);

CREATE TABLE IF NOT EXISTS payment_history (
    id BIGSERIAL PRIMARY KEY,
    payment_id BIGINT NOT NULL,
    status VARCHAR(20) NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT NOW(),
    expires_at TIMESTAMP, -- opsional, hanya relevan jika status PENDING
    CONSTRAINT chk_payment_expires_if_pending CHECK (
        (status = 'PENDING' AND expires_at IS NOT NULL) OR
        (status <> 'PENDING' AND expires_at IS NULL)
    ),
    FOREIGN KEY (payment_id) REFERENCES payment(id)
);