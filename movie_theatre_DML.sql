-- CREATE TABLE customers (
--     cust_id SERIAL PRIMARY KEY,
--     cust_name VARCHAR(50),
--     age INT
-- );

INSERT INTO customers (
    cust_name,
    age
)VALUES(
    'Sai R',
     21
),(
    'Nava P',
    25
),(
    'Sai R',
     21
),(
    'Nava P',
    25
),(
    'Vivan',
     56
),(
    'Alaya',
    33
)

select * from customers; 


UPDATE customers
Set age = 49 
WHERE age = 21

UPDATE customers
Set cust_name = 'Kate' 
WHERE cust_id = 1


-- CREATE TABLE movie (
--     movie_id SERIAL PRIMARY KEY,
--     movie_name VARCHAR(50),
--     theatre_name VARCHAR(50)
-- );


INSERT INTO movie (
    movie_name,
    theatre_name
)VALUES(
    'The Terminal',
    'Theatre Five'
),(
    'Peppa Pig',
    'Theatre Nine'
)

INSERT INTO movie (
    movie_name,
    theatre_name
)VALUES(
    'The Terminal',
    'Theatre Five'
),(
    'Peppa Pig',
    'Theatre Ten'
)

select * from movie; 


-- CREATE TABLE tickets (
--     tickets_id SERIAL PRIMARY KEY,
--     movie_id INT,
--     cust_id INT,
--     date DATE, 
--     price NUMERIC(5,2), 
--     FOREIGN KEY(movie_id) REFERENCES movie(movie_id),    
--     FOREIGN KEY(cust_id) REFERENCES customers(cust_id)    
-- );

INSERT INTO tickets (
    movie_id,
    cust_id,
    date,
    price
)VALUES(
    1,
    3,
    '2021-01-29',
    11.50
),(
    3,
    1,
    '2021-01-19',
    11.50
),(
    4,
    5,
    '2021-01-19',
    7.50
);

select * from tickets; 


-- CREATE TABLE consession (
--     cons_id SERIAL,
--     item_id INT,
--     cust_id INT, 
--     date DATE,
--     amount NUMERIC(5,2),
--     FOREIGN KEY(item_id) REFERENCES items(item_id) ,
--     FOREIGN KEY(cust_id) REFERENCES customers(cust_id) 
-- );


INSERT INTO consession (
    item_id,
    cust_id,
    date,
    amount
)VALUES(
    2,
    3,
    '2021-01-29',
    15
),(
    3,
    3,
    '2021-01-19',
    12.52
),(
    4,
    5,
    '2021-01-19',
    3.50
);

select * from consession; 




-- CREATE TABLE items (
--     item_id SERIAL PRIMARY KEY,
--     item_name VARCHAR(50),
--     items_description VARCHAR(5000),
--     price INT
-- );

INSERT INTO item (
    item_name,
    item_description,
    price
)VALUES(
    'Popcorn-Cheese',
    'Five-Cheese Popcons with seasalt',
    7.00
),(
    'Popcorn-Caramel',
    'Popcons with melted Caramel and seasalt',
    7.00
),(
    'Organic Chicken Wrap',
    'Chicken wrapped in Spinach Tortilla, filled with Lettuce, Cheese and Yogurtdill ',
    9.00
),(
    'Ginger Lemon Soda',
    'Zero Sugar soda with a punch of Ginger, Lemon, FreshMint and RockSalt',
    5.00
),(
    'Water',
    'Spring Water',
    3.00
); 

select * from item; 





