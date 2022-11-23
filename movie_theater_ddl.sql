SELECT *
FROM customers;

CREATE TABLE customers(
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL
);

SELECT *
FROM movies;

CREATE TABLE movies(
    product_id SERIAL PRIMARY KEY,
    price INTEGER,
    customer_id INTEGER,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

ALTER TABLE movies
DROP COLUMN price;

ALTER TABLE movies
DROP COLUMN customer_id;

ALTER TABLE movies
ADD COLUMN movie_rating VARCHAR(10);

ALTER TABLE movies
ADD COLUMN theater_number INTEGER;

CREATE TABLE tickets(
    ticket_id SERIAL PRIMARY KEY,
    product_id INTEGER,
    FOREIGN KEY (product_id) REFERENCES movies(product_id),
    customer_id INTEGER,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    theater_number INTEGER,
    price INTEGER
);

SELECT *
FROM tickets;

CREATE TABLE concessions(
    product_id SERIAL PRIMARY KEY,
    customer_id INTEGER,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    price INTEGER
);

SELECT *
FROM concessions;

CREATE TABLE checkout_info(
    checkout_id SERIAL PRIMARY KEY,
    amount INTEGER,
    purchase_date TIMESTAMP,
    customer_id INTEGER,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    product_id INTEGER,
    FOREIGN KEY (product_id) REFERENCES concessions(product_id),
    ticket_id INTEGER,
    FOREIGN KEY (ticket_id) REFERENCES tickets(ticket_id)
);

SELECT *
FROM checkout_info;