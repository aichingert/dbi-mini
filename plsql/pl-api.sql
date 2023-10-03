CREATE OR REPLACE PROCEDURE buyItem (branch IN NUMBER, item IN NUMBER, amountToBuy IN NUMBER) IS
    currentAmount number;
BEGIN

    Select Amount into currentAmount FROM PRODUCTSUPPLY WHERE PRODUCTID = item and BRANCHID = branch;

    currentAmount := currentAmount + amountToBuy;

    UPDATE PRODUCTSUPPLY SET AMOUNT = currentAmount WHERE PRODUCTID = item and BRANCHID = branch;

EXCEPTION WHEN NO_DATA_FOUND THEN
    --INSERT INTO PRODUCTSUPPLY (BRANCHID, PRODUCTID, AMOUNT) VALUES (branch, item, amountToBuy);
    --check first if item and branch exist (maybe with after insert on PRODUCTSUPPLY)
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