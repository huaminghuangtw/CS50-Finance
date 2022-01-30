CREATE TABLE users (id INTEGER, username TEXT NOT NULL, hash TEXT NOT NULL, cash NUMERIC NOT NULL DEFAULT 10000.00, PRIMARY KEY(id));     
CREATE TABLE transactions (
 id SERIAL PRIMARY KEY,
 user_id INTEGER NOT NULL,
 name TEXT NOT NULL,
 shares INTEGER NOT NULL,
 price NUMERIC NOT NULL,
 type TEXT NOT NULL,
 symbol TEXT NOT NULL,
 time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
 FOREIGN KEY(user_id) REFERENCES users(id)
);
CREATE TABLE sqlite_sequence(name,seq);
CREATE UNIQUE INDEX username ON users (username);