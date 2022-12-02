-- ## Create database
CREATE DATABASE mockup001
    WITH 
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'C'
    LC_CTYPE = 'C'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1
    TEMPLATE template0;
-- ## Connect to mockup001 database
\c mockup001

-- ## Table supplier
CREATE TABLE supplier(
   scode SERIAL PRIMARY KEY,
   sname VARCHAR(100) NOT NULL
);

CREATE SEQUENCE seq_products
    INCREMENT 10
    START 1000;

-- ## Table products
CREATE TABLE products(
    pcode INTEGER PRIMARY KEY DEFAULT NEXTVAL('seq_products'),
    pname VARCHAR(100) NOT NULL,
    pprice INTEGER NOT NULL,
    scode INTEGER NOT NULL,
    CONSTRAINT Pk_supplier_products
        FOREIGN KEY (scode) REFERENCES supplier(scode)
);