DROP DATABASE IF EXISTS employeetracker;

CREATE DATABASE employeetracker;

USE employeetracker;

-- DEPARTMENT TABLE --
CREATE TABLE department
(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(30)
);

-- ROLE TABLE --
CREATE TABLE roles
(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(30),
    salary DECIMAL,
    department_id INT,
    CONSTRAINT FK_depart FOREIGN KEY (department_id) REFERENCES department (id) ON DELETE CASCADE
);

-- EMPLOYEE TABLE --
CREATE TABLE employee 
(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    manager_id INT,
    roles_id INT,
    CONSTRAINT FK_manager FOREIGN KEY (manager_id) REFERENCES employee(id),
    CONSTRAINT FK_roles FOREIGN KEY (roles_id) REFERENCES roles(id) ON DELETE CASCADE
);