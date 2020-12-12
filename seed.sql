-- DEPARTMENT SEED --
INSERT INTO department (name)
VALUES ('Accounting'),('Legal'),('Engineering'),('Data Management'),('Marketing');

-- ROLES SEED --
INSERT INTO roles (title, salary, department_id)
VALUES 
    ('Compensation Analyst', 73644, 1),
    ('Account Coordinator', 86025, 1),
    ('Senior Financial Analyst', 108750, 1),
    ('Paralegal', 131225, 2),
    ('Legal Assistant', 43375, 2),
    ('Head of Patents', 153510, 2),
    ('Chief Design Engineer', 122383.42, 3),
    ('Mechanical Systems Engineer', 115417, 3),
    ('Automation Specialist', 106620, 3),
    ('Data Coordinator', 48745, 4),
    ('Data Analyst', 56240, 4),
    ('Senior Manager', 95973, 4),
    ('VP Marketing', 158462, 5),
    ('Product Engineer', 57465, 5),
    ('Graphic Designer', 130467, 5);

-- EMPLOYEE SEED --
INSERT INTO employee (first_name, last_name, manager_id, roles_id)
VALUES ('Westleigh', 'Verrell', null, 1),('Biddie', 'Rieme', 5, 1),('Clayborne', 'Cookson', 2, 1),('Arney', 'Cullimore', 2, 1),
       ('Rickey', 'Higginbottam', 2, 1),('Gwendolin', 'Sproule', 5, 1),('Archambault', 'Greson', 4, 1),('Justen', 'Cotelard', 4, 1),('Malissia', 'Whitney', null, 1),('Ethyl', 'Coast', 1, 1),('Letti', 'McNab', 5, 1),('Lura', 'Ffoulkes', null, 1),('Pamela', 'Latan', null, 1),('Gabe', 'Puttnam', null, 1),('Linell', 'Lainton', null, 1),('Zachery', 'Goering', 2, 1),('Aldin', 'Feares', null, 1),('Nessie', 'Longfield', 1, 1),('Georgena', 'Ovington', 1, 1),('Georgi', 'Bodiam', null, 1),('Tabb', 'Dewfall', 1, 1),('Gallard', 'Muddicliffe', 5, 1),('Arden', 'Weafer', 2, 1),('Anna-diana', 'Mancell', null, 1),('Leila', 'Cooper', null, 1),('Roseanna', 'Goodday', 1, 1),('Sue', 'Maycock', null, 1),('Sallee', 'Washtell', null, 1),('Jamie', 'Challen', null, 1),('Dredi', 'Jorin', 1, 1),('Dareen', 'Scoular', 2, 1),('Les', 'Dacre', 2, 1),('Jen', 'Danick', null, 1),('Joscelin', 'Rothon', 5, 1);