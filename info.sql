-- Database: books_database

DROP DATABASE demo_db;

CREATE DATABASE demo_db
  WITH OWNER = admin
       ENCODING = 'UTF8'
       TABLESPACE = pg_default
       CONNECTION LIMIT = -1;

-- Table: books

-- DROP TABLE books;

CREATE TABLE books
(
 id serial NOT NULL,
 name character varying NOT NULL,
 author character varying,
 pages integer,
 publication_date date,
 CONSTRAINT pk_books PRIMARY KEY (id )
)
WITH (
 OIDS=FALSE
);
ALTER TABLE books
 OWNER TO admin;
