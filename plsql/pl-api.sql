CREATE OR REPLACE PROCEDURE buyItem (branch IN NUMBER, item IN NUMBER, amount IN NUMBER) IS
    currentAmount number;
BEGIN

    Select Amount into currentAmount FROM PRODUCTSUPPLY WHERE PRODUCTID = item and BRANCHID = branch;

    currentAmount := currentAmount + 1;

    UPDATE PRODUCTSUPPLY SET AMOUNT = currentAmount WHERE PRODUCTID = item and BRANCHID = branch;

    -- randcases checken (was wenn wir das produkt noch garnicht haben)
    -- exception ding machen

END;
/

DECLARE
    oldAmount NUMBER;
    newAmount NUMBER;
BEGIN
    select AMOUNT into oldAmount from PRODUCTSUPPLY WHERE BRANCHID = 1 and PRODUCTID = 1;
    dbms_output.put_line(oldAmount);

    buyItem(1 , 1, 1);

    select AMOUNT into newAmount from PRODUCTSUPPLY WHERE BRANCHID = 1 and PRODUCTID = 1;
    dbms_output.put_line(newAmount);
end;
/

CREATE OR REPLACE PROCEDURE HireEmployee(BRANCH IN NUMBER, NAME IN VARCHAR2(50), WAGE IN NUMBER, POSITION IN VARCHAR2(50)) IS
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

