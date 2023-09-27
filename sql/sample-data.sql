-- Testdaten gemacht mit chat-gpt

-- Branch | 3
INSERT INTO BRANCH (ADDRESS) VALUES ('Limesstr. 14, Leonding');
INSERT INTO BRANCH (ADDRESS) VALUES ('Traunuferstr. 107c, Ansfelden');
INSERT INTO BRANCH (ADDRESS) VALUES ('Kremplstr. 9, Linz');

-- Product | 10
INSERT INTO PRODUCT (NAME, PRICE) VALUES ('iPhone 13', 1.199);
INSERT INTO PRODUCT (NAME, PRICE) VALUES ('Sony TV', 799);
INSERT INTO PRODUCT (NAME, PRICE) VALUES ('Bose Kopfhörer', 349);
INSERT INTO PRODUCT (NAME, PRICE) VALUES ('Dyson Staubsauger', 599);
INSERT INTO PRODUCT (NAME, PRICE) VALUES ('Canon Kamera', 2499);
INSERT INTO PRODUCT (NAME, PRICE) VALUES ('Bosch Geschirrspüler', 899);
INSERT INTO PRODUCT (NAME, PRICE) VALUES ('Nespresso Kaffeemaschine', 199);
INSERT INTO PRODUCT (NAME, PRICE) VALUES ('Amazon Echo', 59);
INSERT INTO PRODUCT (NAME, PRICE) VALUES ('Xiaomi Scooter', 399);
INSERT INTO PRODUCT (NAME, PRICE) VALUES ('KitchenAid Mixer', 499);

-- Customer | 7
INSERT INTO CUSTOMER (NAME, ADDRESS) VALUES ('Sabine Schulz', '222 Musterweg, Musterstadt');
INSERT INTO CUSTOMER (NAME, ADDRESS) VALUES ('Marko Becker', '333 Beispielallee, Beispielort');
INSERT INTO CUSTOMER (NAME, ADDRESS) VALUES ('Lisa Wagner', '444 Teststraße, Teststadt');
INSERT INTO CUSTOMER (NAME, ADDRESS) VALUES ('Max Mustermann', '123 Musterstraße, Musterstadt');
INSERT INTO CUSTOMER (NAME, ADDRESS) VALUES ('Maria Musterfrau', '456 Beispielweg, Beispielstadt');
INSERT INTO CUSTOMER (NAME, ADDRESS) VALUES ('Fritz Müller', '789 Testgasse, Teststadt');
INSERT INTO CUSTOMER (NAME, ADDRESS) VALUES ('Eva Schmidt', '101 Testplatz, Testdorf');

-- Employee | 9
INSERT INTO EMPLOYEE (BRANCHID, NAME, WAGE, POSITION) VALUES (1, 'Anna', 35000, 'Cashier');
INSERT INTO EMPLOYEE (BRANCHID, NAME, WAGE, POSITION) VALUES (1, 'Peter', 32000, 'Cashier');
INSERT INTO EMPLOYEE (BRANCHID, NAME, WAGE, POSITION) VALUES (1, 'Laura', 48000, 'Manager');

INSERT INTO EMPLOYEE (BRANCHID, NAME, WAGE, POSITION) VALUES (2, 'Michael', 42000, 'Cashier');
INSERT INTO EMPLOYEE (BRANCHID, NAME, WAGE, POSITION) VALUES (2, 'Sarah', 50000, 'Manager');
INSERT INTO EMPLOYEE (BRANCHID, NAME, WAGE, POSITION) VALUES (2, 'Daniel', 38000, 'Cashier');

INSERT INTO EMPLOYEE (BRANCHID, NAME, WAGE, POSITION) VALUES (3, 'Sophia', 47000, 'Manager');
INSERT INTO EMPLOYEE (BRANCHID, NAME, WAGE, POSITION) VALUES (3, 'Max', 40000, 'Cashier');
INSERT INTO EMPLOYEE (BRANCHID, NAME, WAGE, POSITION) VALUES (3, 'Dilara', 30000, 'Cashier');

-- ProductSupply
-- Für BRANCHID 1
INSERT INTO PRODUCTSUPPLY (BRANCHID, PRODUCTID, AMOUNT) VALUES (1, 1, 10);
INSERT INTO PRODUCTSUPPLY (BRANCHID, PRODUCTID, AMOUNT) VALUES (1, 2, 10);
INSERT INTO PRODUCTSUPPLY (BRANCHID, PRODUCTID, AMOUNT) VALUES (1, 3, 10);
INSERT INTO PRODUCTSUPPLY (BRANCHID, PRODUCTID, AMOUNT) VALUES (1, 4, 10);
INSERT INTO PRODUCTSUPPLY (BRANCHID, PRODUCTID, AMOUNT) VALUES (1, 5, 10);
INSERT INTO PRODUCTSUPPLY (BRANCHID, PRODUCTID, AMOUNT) VALUES (1, 6, 10);
INSERT INTO PRODUCTSUPPLY (BRANCHID, PRODUCTID, AMOUNT) VALUES (1, 7, 10);
INSERT INTO PRODUCTSUPPLY (BRANCHID, PRODUCTID, AMOUNT) VALUES (1, 8, 10);
INSERT INTO PRODUCTSUPPLY (BRANCHID, PRODUCTID, AMOUNT) VALUES (1, 9, 10);
INSERT INTO PRODUCTSUPPLY (BRANCHID, PRODUCTID, AMOUNT) VALUES (1, 10, 10);

-- Für BRANCHID 2
INSERT INTO PRODUCTSUPPLY (BRANCHID, PRODUCTID, AMOUNT) VALUES (2, 1, 10);
INSERT INTO PRODUCTSUPPLY (BRANCHID, PRODUCTID, AMOUNT) VALUES (2, 2, 10);
INSERT INTO PRODUCTSUPPLY (BRANCHID, PRODUCTID, AMOUNT) VALUES (2, 3, 10);
INSERT INTO PRODUCTSUPPLY (BRANCHID, PRODUCTID, AMOUNT) VALUES (2, 4, 10);
INSERT INTO PRODUCTSUPPLY (BRANCHID, PRODUCTID, AMOUNT) VALUES (2, 5, 10);
INSERT INTO PRODUCTSUPPLY (BRANCHID, PRODUCTID, AMOUNT) VALUES (2, 6, 10);
INSERT INTO PRODUCTSUPPLY (BRANCHID, PRODUCTID, AMOUNT) VALUES (2, 7, 10);
INSERT INTO PRODUCTSUPPLY (BRANCHID, PRODUCTID, AMOUNT) VALUES (2, 8, 10);
INSERT INTO PRODUCTSUPPLY (BRANCHID, PRODUCTID, AMOUNT) VALUES (2, 9, 10);
INSERT INTO PRODUCTSUPPLY (BRANCHID, PRODUCTID, AMOUNT) VALUES (2, 10, 10);

-- Für BRANCHID 3
INSERT INTO PRODUCTSUPPLY (BRANCHID, PRODUCTID, AMOUNT) VALUES (3, 1, 10);
INSERT INTO PRODUCTSUPPLY (BRANCHID, PRODUCTID, AMOUNT) VALUES (3, 2, 10);
INSERT INTO PRODUCTSUPPLY (BRANCHID, PRODUCTID, AMOUNT) VALUES (3, 3, 10);
INSERT INTO PRODUCTSUPPLY (BRANCHID, PRODUCTID, AMOUNT) VALUES (3, 4, 10);
INSERT INTO PRODUCTSUPPLY (BRANCHID, PRODUCTID, AMOUNT) VALUES (3, 5, 10);
INSERT INTO PRODUCTSUPPLY (BRANCHID, PRODUCTID, AMOUNT) VALUES (3, 6, 10);
INSERT INTO PRODUCTSUPPLY (BRANCHID, PRODUCTID, AMOUNT) VALUES (3, 7, 10);
INSERT INTO PRODUCTSUPPLY (BRANCHID, PRODUCTID, AMOUNT) VALUES (3, 8, 10);
INSERT INTO PRODUCTSUPPLY (BRANCHID, PRODUCTID, AMOUNT) VALUES (3, 9, 10);
INSERT INTO PRODUCTSUPPLY (BRANCHID, PRODUCTID, AMOUNT) VALUES (3, 10, 10);

-- Bill | 10
INSERT INTO BILL (EMPLOYEEID, BRANCHID, DATEOFISSUE) VALUES (1, 1, TO_DATE('2023-09-01', 'YYYY-MM-DD'));
INSERT INTO BILL (EMPLOYEEID, BRANCHID, DATEOFISSUE) VALUES (2, 2, TO_DATE('2023-09-02', 'YYYY-MM-DD'));
INSERT INTO BILL (EMPLOYEEID, BRANCHID, DATEOFISSUE) VALUES (3, 3, TO_DATE('2023-09-03', 'YYYY-MM-DD'));
INSERT INTO BILL (EMPLOYEEID, BRANCHID, DATEOFISSUE) VALUES (4, 1, TO_DATE('2023-09-04', 'YYYY-MM-DD'));
INSERT INTO BILL (EMPLOYEEID, BRANCHID, DATEOFISSUE) VALUES (5, 2, TO_DATE('2023-09-05', 'YYYY-MM-DD'));
INSERT INTO BILL (EMPLOYEEID, BRANCHID, DATEOFISSUE) VALUES (6, 3, TO_DATE('2023-09-06', 'YYYY-MM-DD'));
INSERT INTO BILL (EMPLOYEEID, BRANCHID, DATEOFISSUE) VALUES (7, 1, TO_DATE('2023-09-07', 'YYYY-MM-DD'));
INSERT INTO BILL (EMPLOYEEID, BRANCHID, DATEOFISSUE) VALUES (8, 2, TO_DATE('2023-09-08', 'YYYY-MM-DD'));
INSERT INTO BILL (EMPLOYEEID, BRANCHID, DATEOFISSUE) VALUES (9, 3, TO_DATE('2023-09-09', 'YYYY-MM-DD'));
INSERT INTO BILL (EMPLOYEEID, BRANCHID, DATEOFISSUE) VALUES (1, 1, TO_DATE('2023-09-10', 'YYYY-MM-DD'));

-- BillRow
INSERT INTO BILLROW (BILLID, PRODUCTID, AMOUNT) VALUES (1, 3, 2);
INSERT INTO BILLROW (BILLID, PRODUCTID, AMOUNT) VALUES (2, 7, 1);
INSERT INTO BILLROW (BILLID, PRODUCTID, AMOUNT) VALUES (3, 5, 3);
INSERT INTO BILLROW (BILLID, PRODUCTID, AMOUNT) VALUES (4, 2, 2);
INSERT INTO BILLROW (BILLID, PRODUCTID, AMOUNT) VALUES (5, 8, 1);
INSERT INTO BILLROW (BILLID, PRODUCTID, AMOUNT) VALUES (6, 1, 3);
INSERT INTO BILLROW (BILLID, PRODUCTID, AMOUNT) VALUES (7, 6, 2);
INSERT INTO BILLROW (BILLID, PRODUCTID, AMOUNT) VALUES (8, 10, 1);
INSERT INTO BILLROW (BILLID, PRODUCTID, AMOUNT) VALUES (9, 4, 3);
INSERT INTO BILLROW (BILLID, PRODUCTID, AMOUNT) VALUES (10, 9, 2);

COMMIT;