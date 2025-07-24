CREATE TABLE products (
    product_id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    price NUMERIC(10, 2),
    quantity INT
);
INSERT INTO products (name, price, quantity) VALUES
('Pen', 10, 50),
('Notebook', 40, 30),
('Eraser', 5, 80);

SELECT * FROM products;

-- Assignment

-- ✅ 1. Har product ka total value nikaalo (price × quantity)

SELECT name, price, quantity, price * quantity AS total_value
FROM products;

-- ✅ 2. Har product ka double price calculate karo

SELECT name, price, price * 2 AS double_price
FROM products;

-- ✅ 3. Har product ke price me se 2 rupees minus karo


SELECT name, price, price - 2 AS price_after_minus
FROM products;

-- ✅ 4. Har product ki quantity ko 10 se divide karo

SELECT name, quantity, quantity / 10 AS quantity_divided
FROM products;

-- ✅ 5. Har product ke price ko 3 se divide karke remainder nikaalo

SELECT name, price, price % 3 AS price_remainder
FROM products;
