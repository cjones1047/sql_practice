CREATE TABLE songs (
	song_id SERIAL PRIMARY KEY,
	song_name VARCHAR(30),
	genre VARCHAR(30) DEFAULT 'Not defined',
	price NUMERIC(4,2),
	release_date DATE
);

ALTER TABLE songs ALTER COLUMN song_name SET NOT NULL;

ALTER TABLE songs ADD CHECK(price >= 1.99);

ALTER TABLE songs ADD CONSTRAINT date_check CHECK(release_date BETWEEN '01-01-1950' AND NOW());

ALTER TABLE songs DROP CONSTRAINT songs_price_check;

ALTER TABLE songs ADD CHECK(price >= 0.99);

INSERT INTO songs(song_name, price, release_date) VALUES ('SQL Song', 0.99, '2022-01-07');