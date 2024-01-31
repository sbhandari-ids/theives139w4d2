CREATE TABLE customers (
    cust_id SERIAL PRIMARY KEY,
    cust_name VARCHAR(50),
    age INT
);

CREATE TABLE movie (
    movie_id SERIAL PRIMARY KEY,
    movie_name VARCHAR(50),
    theatre_name VARCHAR(50)
);
CREATE TABLE tickets (
    tickets_id SERIAL PRIMARY KEY,
    movie_id INT,
    cust_id INT,
    date DATE, 
    price NUMERIC(5,2), 
    FOREIGN KEY(movie_id) REFERENCES movie(movie_id),    
    FOREIGN KEY(cust_id) REFERENCES customers(cust_id)    
);

CREATE TABLE consession (
    cons_id SERIAL,
    item_id INT,
    cust_id INT, 
    date DATE,
    FOREIGN KEY(item_id) REFERENCES items(item_id) ,
    FOREIGN KEY(cust_id) REFERENCES cust(cust_id) 
);

CREATE TABLE items (
    item_id SERIAL PRIMARY KEY,
    item_name VARCHAR(50),
    items_description VARCHAR(5000),
    price INT
);


CREATE TABLE item (
    item_id SERIAL PRIMARY KEY,
    item_name VARCHAR(50),
    item_description VARCHAR(5000),
    price NUMERIC(5,2)
);

 DROP TABLE if EXISTS items; --Dropping the Duplicate Table. item table already exists

ALTER TABLE items
ALTER price TYPE NUMERIC(5,2);

select * from item

ALTER consession
ADD amount NUMERIC(5,2);

DROP TABLE if EXISTS consession;

CREATE TABLE consession (
    cons_id SERIAL,
    item_id INT,
    cust_id INT, 
    date DATE,
    amount NUMERIC(5,2),
    FOREIGN KEY(item_id) REFERENCES items(item_id) ,
    FOREIGN KEY(cust_id) REFERENCES customers(cust_id) 
);