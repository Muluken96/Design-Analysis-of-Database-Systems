create database ClassAssignment;

CREATE TABLE project (
	project_num INT(10) NOT NULL PRIMARY KEY,
    project_code CHAR(4),
    project_title VARCHAR(45),
    first_name VARCHAR(45), 
    last_name VARCHAR(45),  
    project_budget DECIMAL(5,2 ) 
   

);

ALTER TABLE project 
modify project_num INT(4); 

ALTER TABLE project 
modify project_budget decimal(10, 2);

ALTER TABLE project AUTO_INCREMENT = 10;

INSERT INTO Project (project_code, project_title, first_name, last_name, project_budget)
values ('PC01', 'PC01', 'John', 'Smith', '10000.99');

INSERT INTO Project (project_code, project_title, first_name, last_name, project_budget)
values ('PC02', 'CHF', 'Tim', 'Cook', '12000.50');

INSERT INTO Project (project_code, project_title, first_name, last_name, project_budget)
values ('PC03', 'AST', 'Rhonda', 'Smith', '18000.40');

CREATE TABLE PayRoll (
	employee_num INT(10) PRIMARY KEY AUTO_INCREMENT,
    job_id INT(10) NOT NULL, 
    job_desc VARCHAR(40),
    emp_pay DECIMAL (10,2)
);


SELECT * FROM Payroll

ALTER TABLE PayRoll
ADD CONSTRAINT emp_pay;


ALTER TABLE PayRoll
Add CONSTRAINT df_job_desc
DEFAULT 'Data Analyst' FOR job_desc ;

ALTER TABLE PayRoll
Add column pay_date (DATE);


ALTER TABLE PayRoll
ADD FOREIGN KEY (job_id) REFERENCES project_num(job_id); 

INSERT INTO PayRoll (job_id, pay_date, emp_pay)
values ('10', 'current date', '12000.99');

INSERT INTO PayRoll (job_id, pay_date, emp_pay)
values ('11', 'current date', '14000.99');

INSERT INTO PayRoll (job_id, pay_date, emp_pay)
values ('12', 'current date', '16000.99');

UPDATE PayRoll
set pay_pay = pay_pay + emp_pay*0.01 
where employee_num = 2;

SELECT * INTO Project_backup
FROM project
WHERE last_name = 'Smith'; 

CREATE VIEW  PayRoll_View AS
	SELECT job_id, job_desc, pay_date
    FROM PayRoll
WHERE job_id > 10;


 CREATE INDEX IX_PayRoll ON pay_date(date);

DELETE FROM Project
WHERE project_num = 10;








    
