CREATE TABLE Branch (
                        BranchId NUMBER NOT NULL,
                        Address VARCHAR2(50) NOT NULL,
                        PRIMARY KEY(BranchId)
);

CREATE TABLE Product (
                         ProductId NUMBER NOT NULL,
                         Name NUMBER NOT NULL,
                         Price NUMBER NOT NULL,
                         PRIMARY KEY(ProductId)
);

CREATE TABLE Customer (
                          CustomerId NUMBER NOT NULL,
                          Name VARCHAR2(50) NOT NULL,
                          Address VARCHAR2(50) NOT NULL,
                          PRIMARY KEY(CustomerId)
);

CREATE TABLE Employee (
                          EmployeeId NUMBER NOT NULL,
                          BranchId NUMBER NOT NULL,
                          Name VARCHAR2(50) NOT NULL,
                          Wage Number NOT NULL,
                          Position VARCHAR2(50) NOT NULL,
                          PRIMARY KEY(EmployeeId),
                          FOREIGN KEY(BranchId)
);

CREATE TABLE Bill (
                      BillId NUMBER NOT NULL,
                      EmployeeId NUMBER NOT NULL,
                      BranchId NUMBER NOT NULL,
                      Date DATE NOT NULL,
                      PRIMARY KEY(BillId),
                      FOREIGN KEY(EmployeeId, BranchId)
);

CREATE TABLE BillRow (
                         BillId NUMBER NOT NULL,
                         ProductId NUMBER NOT NULL,
                         Amount NUMBER NOT NULL,
                         PRIMARY KEY(BillId, ProductId)
);

CREATE TABLE ProductSupply (
                               BranchId NUMBER NOT NULL,
                               ProductId NUMBER NOT NULL,
                               Amount NUMBER NOT NULL,
                               PRIMARY KEY(BranchId, ProductId),
);