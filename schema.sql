DROP DATABASE IF EXISTS Employee_tracker;
CREATE database Employee_tracker;

USE Employee_tracker;

CREATE TABLE department (
    id INT AUTO_INCREMENT NOT NULL,

  
  name VARCHAR(30) NOT NULL,

  PRIMARY KEY (id)
);