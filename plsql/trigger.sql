CREATE OR REPLACE TRIGGER product_amount_changed
        BEFORE UPDATE ON PRODUCTSUPPLY
        FOR EACH ROW
DECLARE
    PRODUCT_NAME VARCHAR2(50);
BEGIN
    SELECT NAME INTO PRODUCT_NAME FROM PRODUCT WHERE PRODUCT.PRODUCTID = :new.PRODUCTID;

    IF :NEW.AMOUNT < 0 THEN
        dbms_output.put_line('ERROR (BRANCH ' || :new.BRANCHID || '): SOLD TOO MUCH');
    ELSIF :NEW.AMOUNT > :OLD.AMOUNT THEN
        dbms_output.put_line('NEW PURCHASE (BRANCH ' || :new.BRANCHID || '): added ' || TO_CHAR(:NEW.AMOUNT - :OLD.AMOUNT) || ' new products of type ' || PRODUCT_NAME);
    ELSE
        dbms_output.put_line('NEW SALE (BRANCH ' || :new.BRANCHID || '): sold ' || TO_CHAR(:OLD.AMOUNT - :NEW.AMOUNT) || ' products of type ' || PRODUCT_NAME);
    END IF;
END;
/