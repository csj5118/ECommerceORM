-- DROP DATABASE
DROP DATABASE IF EXISTS ecommerce_db;

-- CREATE DATABASE
CREATE DATABASE ecommerce_db;




CREATE TABLE Category (
    id SERIAL PRIMARY KEY,
    category_name VARCHAR(255) NOT NULL
);


INSERT INTO Category (category_name) VALUES
('Shirts'),
('Shorts'),
('Music'),
('Hats'),
('Shoes');



CREATE TABLE Product (
    id SERIAL PRIMARY KEY,
    product_name VARCHAR(255) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    stock INT NOT NULL DEFAULT 10,
    category_id INT,
    FOREIGN KEY (category_id) REFERENCES Category(id)
);


INSERT INTO Product (product_name, price, stock, category_id) VALUES
('Plain T-Shirt', 14.99, 14, 1),
('Running Sneakers', 90.00, 25, 5),
('Branded Baseball Hat', 22.99, 12, 4),
('Top 40 Music Compilation Vinyl Record', 12.99, 50, 3),
('Cargo Shorts', 29.99, 22, 2);



CREATE TABLE Tag (
    id SERIAL PRIMARY KEY,
    tag_name VARCHAR(255)
);


INSERT INTO Tag (tag_name) VALUES
('Rock Music'),
('Pop Music'),
('Blue'),
('Red'),
('Green'),
('White'),
('Gold'),
('Pop Culture');



CREATE TABLE ProductTag (
    id SERIAL PRIMARY KEY,
    product_id INT,
    tag_id INT,
    FOREIGN KEY (product_id) REFERENCES Product(id),
    FOREIGN KEY (tag_id) REFERENCES Tag(id)
);


INSERT INTO ProductTag (product_id, tag_id) VALUES
(1, 6),
(1, 7),
(1, 8),
(2, 6),
(3, 1),
(3, 3),
(3, 4),
(3, 5),
(4, 1),
(4, 2),
(4, 8),
(5, 3);


select * from category c;
