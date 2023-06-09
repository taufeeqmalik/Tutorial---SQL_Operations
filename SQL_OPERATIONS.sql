USE EMPLOYEES;
SELECT * FROM SALARIES
WHERE SALARY > 150000
 AND LAST_NAME = 'PEAC';
 
SELECT * FROM EMPLOYEES
WHERE EMP_NO NOT BETWEEN '10004' AND '10012';

SELECT  COUNT(DISTINCT HIRE_DATE)
FROM EMPLOYEES;

SELECT count(DISTINCT FIRST_NAME)
FROM EMPLOYEES;


SELECT COUNT(*)
FROM SALARIES WHERE SALARY >= 100000;


SELECT COUNT(EMP_NO)
FROM DEPT_MANAGER;


SELECT  DEPT_NAME FROM DEPARTMENTS
WHERE DEPT_NO BETWEEN 'D003' AND 'D006';


SELECT DEPT_NAME FROM DEPARTMENTS
WHERE DEPT_NO IS NOT NULL;

 
SELECT * FROM EMPLOYEES
ORDER BY FIRST_NAME;
 
SELECT * FROM EMPLOYEES
ORDER BY FIRST_NAME DESC;
 
SELECT * FROM EMPLOYEES
ORDER BY HIRE_DATE;
 
SELECT * FROM EMPLOYEES
ORDER BY LAST_NANE DESC;
 
SELECT * FROM EMPLOYEES
WHERE LAST_NAME IN ('ZYKH', 'ZYDA','ZULTNER');
 
SELECT * FROM EMPLOYEES
WHERE LAST_NAME LIKE ('ZY__');
 
SELECT FIRST_NAME,LAST_NAME,GENDER
FROM EMPLOYEES
 
USE EMPLOYEES;
SELECT FIRST_NAME, COUNT(FIRST_NAME) AS NAME_COUNT
FROM EMPLOYEES
GROUP BY FIRST_NAME
ORDER BY FIRST_NAME;

SELECT SALARY, COUNT(EMP_NO) AS emps_with_same_salary
FROM SALARIES
WHERE SALARY > 80000
GROUP BY SALARY
ORDER BY SALARY;

SELECT FIRST_NAME, COUNT(FIRST_NAME) AS NAME_COUNT
FROM EMPLOYEES
GROUP BY FIRST_NAME
HAVING COUNT(FIRST_NAME) > 250
ORDER BY FIRST_NAME ;
 
SELECT EMP_NO, AVG(SALARY) AS AVG_SALARY
FROM SALARIES
GROUP BY EMP_NO
HAVING AVG (SALARY) > 120000
ORDER BY EMP_NO;
 
SELECT FIRST_NAME, COUNT(FIRST_NAME) AS NAME_COUNT
FROM EMPLOYEES
WHERE HIRE_DATE > '1999-01-01'
GROUP BY FIRST_NAME
HAVING COUNT(FIRST_NAME) < 200
ORDER BY FIRST_NAME;


