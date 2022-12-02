-- ## Connect to mockup001 database
\c mockup001
-- insert with known id
-- INSERT INTO supplier(scode, sname) VALUES (20, 'Sony');
-- insert with auto id --- serial
INSERT INTO supplier(sname) VALUES ('Sony');
-- insert several values
INSERT INTO supplier(sname) VALUES 
    ('Creative Labs (CA)'),
    ('Creative Labs (NY)'),
    ('Apple'),
    ('Hewlett-Packard');
INSERT INTO supplier (sname) VALUES
    ('lOmega'),
    ('Fujitsu'),
    ('Winchester');
-- insert in table products
INSERT INTO products (pname, pprice, scode) VALUES
    ('Hard drive',240,5),
    ('Memory',120,6),
    ('ZIP drive',150,4),
    ('Floppy disk',5,6),
    ('Monitor',240,1),
    ('DVD drive',180,2),
    ('CD drive',90,2),
    ('Printer',270,3),
    ('Toner cartridge',66,3),
    ('DVD burner',180,2);

