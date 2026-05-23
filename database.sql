-- Create Database (optional)
CREATE DATABASE register;

-- Use database
-- \c register 

-- =========================
-- USERS TABLE
-- =========================
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    username VARCHAR(50) UNIQUE NOT NULL,
    password VARCHAR(50) NOT NULL
);

-- =========================
-- USER DETAILS TABLE
-- =========================
CREATE TABLE user_details (
    id SERIAL PRIMARY KEY,
    user_id INT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    mobile VARCHAR(15),

    CONSTRAINT fk_user
    FOREIGN KEY (user_id)
    REFERENCES users(id)
    ON DELETE CASCADE
);

-- =========================
-- SAMPLE DATA (optional)
-- =========================

INSERT INTO users(username, password) VALUES
('amol', '123'),
('test', '123');

INSERT INTO user_details(user_id, first_name, last_name, email, mobile) VALUES
(1, 'Amol', 'Barde', 'amol@gmail.com', '9876543210'),
(2, 'Test', 'User', 'test@gmail.com', '9999999999');
