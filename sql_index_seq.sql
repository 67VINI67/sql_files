--this code is to create the sequence algorithm
CREATE SEQUENCE seq1
    INCREMENT BY 1
    START WITH 1004
    MINVALUE 1004
    MAXVALUE 9999
    NOCYCLE
    CACHE 5;

SELECT * FROM USER_SEQUENCES;
 --dual is a dummy table, dual is used coz it is mandatory to use from keyword
select seq1.NEXTVAL from dual;
 
select seq1.CURRVAL from dual;

--this code is to insert the sequence value, like the current sequence value in to a table
INSERT INTO EMP VALUES(seq1.NEXTVAL, 'Jaya', 'Trainee', 7782, sysdate, 5000, 100, 20);
 
