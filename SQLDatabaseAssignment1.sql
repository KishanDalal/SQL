-- DBAS27198 - Database Design 
-- Kishan Dalal
-- Brampton
-- Create Table Assignment 
-- createtab.sql

-- DROP TABLE invprod
-- DROP TABLE invoice
 
/* -- PART TABLE 
CREATE TABLE part 
(
Partno CHAR(4), 
Pardec VARCHAR(15),
Onhand INTEGER(11),
Partclass CHAR(2),
Unitprice DECIMAL(6,2),

CONSTRAINT pkpart PRIMARY KEY (Partno),
CONSTRAINT chkpart CHECK(Partclass IN ('AP', 'HW', 'KI', 'SP'))

);
*/

/* -- SALEREP TABLE
CREATE TABLE salerep 
(
Srepno CHAR(3) NOT NULL, 
Srepname VARCHAR(25) NOT NUll, 
Srepstreet VARCHAR(30) NOT Null, 
Srepprov VARCHAR(3) NOT NULL,
Sreppcode VARCHAR(6) NOT NULL,
Totcomm DECIMAL(8,2),
Commrate DECIMAL(3,2),

CONSTRAINT pkslsrep PRIMARY KEY (Srepno)

);
*/


/* -- CUSTOMER TABLE
CREATE TABLE customer
(
 Custno CHAR(3),
 Custname VARCHAR(25) NOT NULL,
 Custstreet VARCHAR(30) NOT NULL,
 Custcity VARCHAR(15) NOT NULL,
 Custprov VARCHAR(3) NOT NULL,
 Custpcode VARCHAR(6) NOT NULL,
 Disc DECIMAL(3,1),
 Balance DECIMAL(7,2),
 Credlimit DECIMAL(5),
 Srepno CHAR(3),
 
 CONSTRAINT fksrepno FOREIGN KEY (Srepno) REFERENCES salerep(Srepno),
 PRIMARY KEY (Custno)
);
*/

/* -- ORDERS TABLE 
CREATE TABLE orders
(
	Orderno CHAR(5) NOT NULL,
	Orderdate DATE,
	Custno CHAR(3) NOT NULL, 
	
	CONSTRAINT pkorderno PRIMARY KEY (Orderno),
	CONSTRAINT fkorder FOREIGN KEY (Custno) REFERENCES customer (Custno)
);
*/

/* -- ORDERPROD TABLE 
CREATE TABLE orderprod
(
	Orderno CHAR(5), -- PK 
	Partno CHAR(4),
	Orderqty DECIMAL(5), 
	Orderprice DECIMAL(7,2), 
	
	CONSTRAINT pkorderprod PRIMARY KEY (Orderno, Partno),
	CONSTRAINT fk1orderprod FOREIGN KEY (Orderno) REFERENCES orders(Orderno),
	CONSTRAINT fk2orderprod FOREIGN KEY (Partno) REFERENCES part(Partno),
	CONSTRAINT chqty CHECK (Orderqty>0)
);
*/

/* -- INVOICE TABLE 
CREATE TABLE invoice
(
	Invno CHAR(5),  -- PK 
	Invdate DATE, 
	Orderno CHAR(5),  -- FK 
	
	CONSTRAINT pkinvno PRIMARY KEY (Invno),
	CONSTRAINT fkorderno FOREIGN KEY (Orderno) REFERENCES orders(Orderno)
	
); 
*/


/* -- INVPROD TABLE 
CREATE TABLE invprod 
(
	Invno CHAR(5),  -- PK
	Partno CHAR(4), -- PK 
	Shipqty INTEGER(5),
	
	CONSTRAINT pkinvprod PRIMARY KEY(Invno, Partno),
	CONSTRAINT fk1invno FOREIGN KEY (Invno) REFERENCES invoice(Invno), 
	CONSTRAINT fk2partno FOREIGN Key(Partno) REFERENCES orderprod(Partno)
	
	
);
*/
