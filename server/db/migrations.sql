CREATE DATABASE soundtrack;

\c soundtrack;

CREATE TABLE soundtracks(id SERIAL PRIMARY KEY, movie VARCHAR(255), composer VARCHAR(255), year VARCHAR(255));

