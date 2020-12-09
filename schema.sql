DROP DATABASE IF EXISTS Employee_tracker;
CREATE database Employee_tracker;

USE Employee_tracker;

CREATE TABLE department (
    id INT AUTO_INCREMENT NOT NULL,

  
  name VARCHAR(30) NOT NULL,

  PRIMARY KEY (id)
);

CREATE TABLE role (
    id INT AUTO_INCREMENT NOT NULL,
    title VARCHAR(30) NOT NULL,
    salary decimal(10,2) NOT NULL,
    department_id INT NOT NULL,

  PRIMARY KEY (id)
);

CREATE TABLE employee (
    id INT AUTO_INCREMENT NOT NULL,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    role_id INT NOT NULL,
    manager_id VARCHAR(30),


  PRIMARY KEY (id)
);

SELECT * from department;
SELECT * from role;
SELECT * from employee;

// Departments

INSERT INTO department (name)
VALUES ("Marketing");

INSERT INTO department (name)
VALUES ("Sales");

INSERT INTO department (name)
VALUES ("Customer Service");

INSERT INTO department (name)
VALUES ("Manager");

// Roles, salary, department

INSERT INTO role (title, salary, department_id)
VALUES ("Marketing", 85000, 1);

INSERT INTO role (title, salary, department_id)
VALUES ("Sales", 55000, 1);

INSERT INTO role (title, salary, department_id)
VALUES ("Customer Service", 35000, 2);

INSERT INTO role (title, salary, department_id)
VALUES ("Manager", 100000, 3);


// Employee Info

INSERT INTO employee (first_name, last_name, role_id)
VALUES ("Katie", "Newton", 1);

INSERT INTO employee (first_name, last_name, role_id)
VALUES ("John", "Doe", 1);

INSERT INTO employee (first_name, last_name, role_id)
VALUES ("Jane", "Doe", 2);

INSERT INTO employee (first_name, last_name, role_id)
VALUES ("Howard", "McAllister", 3);
