CREATE TABLE genre (
    id BIGSERIAL PRIMARY KEY,
    name VARCHAR(20),
    description TEXT,
    is_active BOOL,
    UNIQUE(name)
);

CREATE TABLE country (
    id BIGSERIAL PRIMARY KEY,
    name VARCHAR(20),
    code VARCHAR(5),
    is_active BOOL,
    UNIQUE(name)
);

CREATE TABLE province (
    id BIGSERIAL PRIMARY KEY,
    name VARCHAR(20),
    country_id BIGINT,
    is_active BOOL,
    UNIQUE(name),
    FOREIGN KEY (country_id) REFERENCES country(id)
);

CREATE TABLE city (
    id BIGSERIAL PRIMARY KEY,
    name VARCHAR(20),
    province_id BIGINT,
    is_active BOOL,
    UNIQUE(name),
    FOREIGN KEY (province_id) REFERENCES province(id)
);

CREATE TABLE theater (
    id BIGSERIAL PRIMARY KEY,
    name VARCHAR(50),
    code VARCHAR(5),
    email VARCHAR(50),
    phone VARCHAR(20),
    image_path VARCHAR(512),
    is_active BOOL,
    UNIQUE(name),
    UNIQUE(code)
);

CREATE TABLE theater_room (
    id BIGSERIAL PRIMARY KEY,
    name VARCHAR(50),
    code VARCHAR(5),
    theater_id BIGINT,
    is_active BOOL,
    UNIQUE(name),
    UNIQUE(code),
    FOREIGN KEY (theater_id) REFERENCES theater(id)
);

CREATE TABLE theater_address (
    id BIGSERIAL PRIMARY KEY,
    name VARCHAR(20),
    country_id BIGINT,
    province_id BIGINT,
    city_id BIGINT,
    address_line VARCHAR(256),
    theater_id BIGINT,
    is_active BOOL,
    UNIQUE(name),
    FOREIGN KEY (country_id) REFERENCES country(id),
    FOREIGN KEY (province_id) REFERENCES province(id),
    FOREIGN KEY (city_id) REFERENCES city(id),
    FOREIGN KEY (theater_id) REFERENCES theater(id)
);

CREATE TABLE users (
    id BIGSERIAL PRIMARY KEY,
    username VARCHAR(30),
    name VARCHAR(50),
    email VARCHAR(50),
    phone VARCHAR(20),
    password VARCHAR(512),
    birth_date DATE,
    image_path VARCHAR(512),
    is_active BOOL,
    UNIQUE(username),
    UNIQUE(name),
    UNIQUE(email)
);

CREATE TABLE users_address (
    id BIGSERIAL PRIMARY KEY,
    name VARCHAR(50),
    country_id BIGINT,
    province_id BIGINT,
    city_id BIGINT,
    address_line VARCHAR(256),
    users_id BIGINT,
    is_active BOOL,
    UNIQUE(name),
    FOREIGN KEY (country_id) REFERENCES country(id),
    FOREIGN KEY (province_id) REFERENCES province(id),
    FOREIGN KEY (city_id) REFERENCES city(id),
    FOREIGN KEY (users_id) REFERENCES users(id)
);

CREATE TABLE languages (
    id BIGSERIAL PRIMARY KEY,
    name VARCHAR(50),
    code VARCHAR(5),
    is_active BOOL,
    UNIQUE(name),
    UNIQUE(code)
);

CREATE TABLE film (
    id BIGSERIAL PRIMARY KEY,
    title VARCHAR(100),
    description TEXT,
	languages_id BIGINT,
	duration INTEGER,
	image_path VARCHAR(512),
	trailer_path VARCHAR(512),
	release_date timestamp,
	rating_average NUMERIC(5,2),
    is_active BOOL,
    FOREIGN KEY (languages_id) REFERENCES languages(id)
);

CREATE TABLE film_genre (
    film_id BIGINT REFERENCES film(id),
    genre_id BIGINT REFERENCES genre(id),
    PRIMARY KEY (film_id, genre_id)
);


CREATE TABLE film_subtitle (
    film_id BIGINT REFERENCES film(id),
    subtitle_id BIGINT REFERENCES languages(id),
    PRIMARY KEY (film_id, subtitle_id)
);

CREATE TABLE rating (
    id BIGSERIAL PRIMARY KEY,
    film_id BIGINT,
    users_id BIGINT,
    value INTEGER,
    FOREIGN KEY (film_id) REFERENCES film(id),
    FOREIGN KEY (users_id) REFERENCES users(id)
);

CREATE TABLE shows (
    id BIGSERIAL PRIMARY KEY,
    "date" DATE,
    "time" TIME,
    film_id BIGINT,
    theater_room_id BIGINT,
    price NUMERIC(10,2),
    is_active BOOL,
    FOREIGN KEY (film_id) REFERENCES film(id),
    FOREIGN KEY (theater_room_id) REFERENCES theater_room(id)
);

CREATE TABLE booking (
    id BIGSERIAL PRIMARY KEY,
    booking_number VARCHAR(20),
    users_id BIGINT,     
    shows_id BIGINT,           
    booking_time timestamp,  
    status VARCHAR(20), ---- AVAILABLE, IN_BOOKING, BOOKED, CANCELLED, EXPIRED
    UNIQUE(booking_number),
    FOREIGN KEY (users_id) REFERENCES users(id),    
    FOREIGN KEY (shows_id) REFERENCES shows(id)
);

CREATE TABLE seat (
    id BIGSERIAL PRIMARY KEY,
    theater_room_id BIGINT,
    row_label VARCHAR(5),      -- contoh: A, B
    seat_number INT,           -- contoh: 1, 2
    seat_type VARCHAR(20),     -- regular, VIP
    x_coordinate INT,         -- posisi x dalam theater room
    y_coordinate INT,         -- posisi y dalam theater room
    additional_price NUMERIC(10,2), -- harga tambahan untuk kursi ini
    is_active BOOL,
    UNIQUE(theater_room_id, row_label, seat_number),
    FOREIGN KEY (theater_room_id) REFERENCES theater_room(id)
);

CREATE TABLE booking_seat (
    booking_id BIGINT,
    seat_id BIGINT,
    PRIMARY KEY (booking_id, seat_id),
    FOREIGN KEY (booking_id) REFERENCES booking(id),
    FOREIGN KEY (seat_id) REFERENCES seat(id)
);

CREATE TABLE payment (
    id BIGSERIAL PRIMARY KEY,
    payment_number VARCHAR(20),
    booking_id BIGINT,
    payment_method VARCHAR(20), --VA, Gopay, OVO, QRIS, etc
    payment_time timestamp,
    amount NUMERIC(10,2),
    status VARCHAR(20), ---- PENDING, SUCCESS, FAILED, CANCELLED, EXPIRED
    reference_number VARCHAR(50),
    description varchar(256),
    UNIQUE(booking_id),
    UNIQUE(payment_number, payment_method),
    FOREIGN KEY (booking_id) REFERENCES booking(id)
);

CREATE TABLE payment_detail (
    id BIGSERIAL PRIMARY KEY,
    payment_id BIGINT,
    type VARCHAR(20), -- BASE, DISCOUNT, ADMIN_FEE, TAX, OTHERS
    description TEXT,
    amount NUMERIC(10,2),
    FOREIGN KEY (payment_id) REFERENCES payment(id)
);