SELECT *
FROM customers;

INSERT INTO customers(
    first_name,
    last_name
)
VALUES(
    'Ashley',
    'Fightmaster'
),
(
    'David',
    'Hasz'
),
(
    'Keith',
    'Fightmaster'
);

SELECT *
FROM movies;

INSERT INTO movies(
    movie_rating,
    theater_number
)
VALUES(
    'G',
    '4'
),
(
    'PG',
    '7'
),
(
    'R',
    '2'
);

SELECT *
FROM tickets;

INSERT INTO tickets(
    price,
    product_id,
    customer_id,
    theater_number
)
VALUES(
    '15',
    '1',
    '2',
    '4'
);

INSERT INTO tickets(
     price,
    product_id,
    customer_id,
    theater_number
)
VALUES(
    '23',
    '2',
    '1',
    '7'
),
(
    '17',
    '3',
    '3',
    '2'
);

SELECT *
FROM concessions;

INSERT INTO concessions(
    customer_id,
    price
)   
VALUES(
    '3',
    '28'
),
(
    '1',
    '35'
),
(
    '2',
    '17'
);

SELECT *
FROM checkout_info;

INSERT INTO checkout_info(
    amount,
    customer_id,
    product_id,
    ticket_id
)
VALUES(
    '50',
    '1',
    '2',
    '4'
),
(
    '32',
    '2',
    '1',
    '3'
),
(
    '45',
    '3',
    '3',
    '5'
);