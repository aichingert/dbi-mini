SELECT SUM(AMOUNT) FROM BILLROW
    INNER JOIN SYSTEM.BILL B on BILLROW.BILLID = B.BILLID
WHERE B.BRANCHID = 1;

SELECT SUM(SUM(AMOUNT) * PRICE) FROM BILLROW
    INNER JOIN SYSTEM.PRODUCT P on BILLROW.PRODUCTID = P.PRODUCTID
    INNER JOIN SYSTEM.BILL B on BILLROW.BILLID = B.BILLID
WHERE B.BRANCHID = 2
GROUP BY P.PRODUCTID, PRICE;

SELECT DISTINCT(E.NAME) FROM BILL
    INNER JOIN SYSTEM.EMPLOYEE E on E.EMPLOYEEID = BILL.EMPLOYEEID
WHERE DATEOFISSUE = TO_DATE('2023-09-01', 'YYYY-MM-DD');

SELECT P.NAME, SUM(BILLROW.AMOUNT) FROM BILLROW
    INNER JOIN SYSTEM.PRODUCT P on BILLROW.PRODUCTID = P.PRODUCTID
    INNER JOIN SYSTEM.BILL B on BILLROW.BILLID = B.BILLID
WHERE B.DATEOFISSUE BETWEEN TO_DATE('2023-09-01', 'YYYY-MM-DD') AND TO_DATE('2024-09-02', 'YYYY-MM-DD')
GROUP BY P.NAME
ORDER BY SUM(BILLROW.AMOUNT) DESC
FETCH NEXT 10 ROWS ONLY;

SELECT DISTINCT(PR.NAME) FROM BILLROW BR
    INNER JOIN SYSTEM.PRODUCT PR on BR.PRODUCTID = PR.PRODUCTID
    INNER JOIN SYSTEM.BILL BI on BR.BILLID = BI.BILLID
WHERE BI.DATEOFISSUE NOT BETWEEN TO_DATE('2023-09-01', 'YYYY-MM-DD') AND TO_DATE('2023-09-02', 'YYYY-MM-DD');

SELECT DISTINCT(CU.NAME) FROM BILL BI
    INNER JOIN SYSTEM.CUSTOMER CU on BI.CUSTOMERID = CU.CUSTOMERID
WHERE BI.EMPLOYEEID = 1;
