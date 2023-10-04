create table xy(
    idid number not null primary key
);

--insert into xy (idid) values (2);

SELECT sys_context('USERENV', 'CURRENT_USER') FROM dual;

commit;