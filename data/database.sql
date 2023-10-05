-- Create a table to store users
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    username VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    password_hash VARCHAR(128) NOT NULL
);

-- Create a table to store products
CREATE TABLE products (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    price DECIMAL(10, 2) NOT NULL
);

-- Insert initial data into the users table
INSERT INTO users (username, email, password_hash)
VALUES
    ('user1', 'user1@example.com', 'hashed_password1'),
    ('user2', 'user2@example.com', 'hashed_password2');

-- Insert initial data into the products table
INSERT INTO products (name, description, price)
VALUES
    ('Product 1', 'Description for Product 1', 19.99),
    ('Product 2', 'Description for Product 2', 29.99);

