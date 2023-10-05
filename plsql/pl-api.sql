CREATE OR REPLACE PROCEDURE buyItem (branch IN NUMBER, item IN NUMBER, amountToBuy IN NUMBER) IS
    currentAmount number;
BEGIN

    Select Amount into currentAmount FROM PRODUCTSUPPLY WHERE PRODUCTID = item and BRANCHID = branch;

    currentAmount := currentAmount + amountToBuy;

    UPDATE PRODUCTSUPPLY SET AMOUNT = currentAmount WHERE PRODUCTID = item and BRANCHID = branch;

EXCEPTION WHEN NO_DATA_FOUND THEN
    dbms_output.put_line('Item or branch does not exist.');
END buyItem;
/

CREATE OR REPLACE PROCEDURE sellItem (branch IN NUMBER, item IN NUMBER, amountToSell IN NUMBER) IS
    currentAmount number;
BEGIN

    Select Amount into currentAmount FROM PRODUCTSUPPLY WHERE PRODUCTID = item and BRANCHID = branch;

    currentAmount := currentAmount - amountToSell;

    UPDATE PRODUCTSUPPLY SET AMOUNT = currentAmount WHERE PRODUCTID = item and BRANCHID = branch;
EXCEPTION WHEN NO_DATA_FOUND THEN
     dbms_output.put_line('Item or branch does not exist.');
END sellItem;
/

DECLARE
    oldAmount NUMBER;
    newAmount NUMBER;
BEGIN
    select AMOUNT into oldAmount from PRODUCTSUPPLY WHERE BRANCHID = 1 and PRODUCTID = 1;
    dbms_output.put_line(oldAmount);

    buyItem(1 , 1, 2);

    select AMOUNT into newAmount from PRODUCTSUPPLY WHERE BRANCHID = 1 and PRODUCTID = 1;
    dbms_output.put_line(newAmount);
end;
/

CREATE OR REPLACE PROCEDURE HireEmployee(BRANCH IN NUMBER, NAME IN VARCHAR2, WAGE IN NUMBER, POSITION IN VARCHAR2) IS
    CorrectBranchId number;
BEGIN
    SELECT BranchID INTO CorrectBranchId FROM BRANCH
    WHERE BRANCHID = BRANCH;

    IF CorrectBranchId = BRANCH THEN
        INSERT INTO EMPLOYEE (BRANCHID, NAME, WAGE, POSITION)
        VALUES (BRANCH, NAME, WAGE, POSITION);
        DBMS_OUTPUT.PUT_LINE('Employee Hired');
        return;
    end if;
    DBMS_OUTPUT.PUT_LINE('Branch Id not found');
Exception
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Exception Thrown');
END;

CREATE OR REPLACE PROCEDURE LayOffEmployee(BRANCH_ID IN NUMBER, EMP_ID IN NUMBER, EMP_NAME IN VARCHAR2) IS
    SEARCHING_NAME VARCHAR2(50);
BEGIN
    SELECT NAME INTO SEARCHING_NAME FROM EMPLOYEE
    WHERE EMPLOYEEID = EMP_ID;

    IF NOT (SEARCHING_NAME = EMP_NAME) THEN
        DBMS_OUTPUT.PUT_LINE('Employee name does not match the Id (Are you sure you are removing the right employee?)');
        RETURN;
    END IF;

    DELETE FROM EMPLOYEE WHERE BRANCHID = BRANCH_ID AND EMP_ID = EMPLOYEEID;

    IF SQL%ROWCOUNT = 1 THEN
        DBMS_OUTPUT.PUT_LINE('Removed Employee ' || EMP_NAME || ' from branch ' || TO_CHAR(BRANCH_ID));
    ELSE
        DBMS_OUTPUT.PUT_LINE('Did not find employee in branch');
    END IF;
END;