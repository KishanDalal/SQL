-- DBAS27198 - Database Design 
-- Name: Kishan Dalal
-- Class: Database Design and Implementation  
-- Prof: Salima Mussaji
-- Date: 2016-11-15 
-- Sheridan College, Brampton, Ontario
-- Insert Table Assignment 
-- SQLDatabaseAssignment2.sql

-- Note: Do not enable the numbered out comments

-- 1. INSERT INTO part 
-- INSERT INTO part (Partno, Pardec, Onhand, Partclass, Unitprice) VALUES ('KD1', 'Hammer', 2, 'HW','25.5');
-- INSERT INTO part (Partno, Pardec, Onhand, Partclass, Unitprice) VALUES ('KD2', 'Spoon', 100, 'KI','5.5');
-- INSERT INTO part (Partno, Pardec, Onhand, Partclass, Unitprice) VALUES ('KD3', 'Blender', 1, 'AP','50');
-- INSERT INTO part (Partno, Pardec, Onhand, Partclass, Unitprice) VALUES ('KD4', 'Football', 30, 'SP','2');

-- 2. INSERT INTO salerep
-- INSERT INTO salerep (Srepno, Srepname, Srepstreet, Srepprov, Sreppcode, Totcomm, Commrate) VALUES('KD1', 'Nemo', 'Ocean', 'ON', 'ABC123', null, null);
-- INSERT INTO salerep (Srepno, Srepname, Srepstreet, Srepprov, Sreppcode, Totcomm, Commrate) VALUES('KD2', 'Dory', 'Ocean', 'ON', '123456', null, null);


-- 3. INSERT INTO customer
-- INSERT INTO customer (Custno, Custname, Custstreet, Custcity, Custprov, Custpcode, Disc, Balance, Credlimit, Srepno) VALUES('KD1', 'Kishan', 'Confederation Parkway', 'Mississauga', 'ON', 'L5B1RX', 12, 5000, 2000, 'KD1');

-- 4. INSERT INTO orders!
-- INSERT INTO orders (Orderno, Orderdate, Custno) VALUES ('KD1', '2016-11--15', 'KD1');
-- INSERT INTO orders (Orderno, Orderdate, Custno) VALUES ('KD2', '2016-11--16', 'KD1');

-- 5. INSERT INTO orderprod!
-- INSERT INTO orderprod (Orderno, Partno, Orderqty, Orderprice) VALUES ('KD1', 'KD3', 2, 25);
-- INSERT INTO orderprod (Orderno, Partno, Orderqty, Orderprice) VALUES ('KD2', 'KD4', 4, 500);


-- 6. INSERT INTO invoice
-- INSERT INTO invoice (Invno, Invdate, Orderno) VALUES ('KD1', '2016-11-15', 'KD1'); 

-- 7. INSERT INTO invprod
-- INSERT INTO invprod (Invno, Partno, Shipqty) VALUES ('KD1', 'KD3', 2);
