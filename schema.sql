-- Schema for the dating web app

CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE profiles (
    id SERIAL PRIMARY KEY,
    user_id INT REFERENCES users(id),
    bio TEXT,
    profile_picture VARCHAR(255),
    age INT,
    gender VARCHAR(10),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE matches (
    id SERIAL PRIMARY KEY,
    user_id1 INT REFERENCES users(id),
    user_id2 INT REFERENCES users(id),
    match_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE messages (
    id SERIAL PRIMARY KEY,
    match_id INT REFERENCES matches(id),
    sender_id INT REFERENCES users(id),
    message TEXT,
    sent_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);