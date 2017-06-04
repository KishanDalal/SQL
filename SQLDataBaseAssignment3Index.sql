-- DBAS27198 - Database Design 
-- Name: Kishan Dalal
-- Class: Database Design and Implementation  
-- Prof: Salima Mussaji
-- Date: 2016-11-15 
-- Sheridan College, Brampton, Ontario
-- Insert Table Assignment 
-- SQLDatabaseAssignment3Index.sql

-- Customer table index 
CREATE INDEX indcus_Srepno ON customer(Srepno); 

-- Order Table  
CREATE INDEX indorders_Custno ON orders(Custno);

-- OrderProd TABLE
CREATE INDEX indorderprod_orderno ON orderprod(Orderno);
CREATE INDEX indorders_partno ON orderprod(Partno);

-- Invoice TABLE
CREATE INDEX indinvoice_orderno ON invoice(Orderno); 

-- Invprod TABLE
CREATE INDEX indinvprod_invno ON invprod(Invno);
CREATE INDEX indinvprod_partno ON invprod(Partno);

