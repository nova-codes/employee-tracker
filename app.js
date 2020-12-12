// requires
const fs = require('fs');
const inquirer = require('inquirer');
const cTable = require('console.table');
const mysql = require('mysql');
const figlet = require('figlet');
const chalk = require('chalk');
const clear = require('clear');

// start up
function startApp() {
    clear();

    console.log(
        chalk.cyan(
            figlet.textSync('Employee Tracker', {
                font: 'Slant',
                horizontalLayout: 'full'
            })
        )
    );
};
startApp(); 
inquirerStart();

const connection = mysql.createConnection({
    host: 'localhost',
    port: 3306,
    user: 'root',
    password: 'd8C$9$6f~u&3e',
    database: 'employeetracker'
});

connection.connect(function(err) {
    if (err) throw err;
    console.log('Connected as ID: ' + connection.threadID); 
});

function inquirerStart() {
    inquirer.prompt([{
        type: 'list',
        message: 'What would you like to do?',
        choices: [
            'View All Employees',
            'View All Employees by Role',
            'View All Employees by Department',
            'Update Employee',
            'Add Employee',
            'Remove Employee',
            'View All Roles',
            'Add Role',
            'Remove Role',
            'View All Departments',
            'Add Department',
            'Remove Department',
            'Exit'
        ]
    }, ]).then((result) => {
        // switch cases for user selection
        switch(result.choice) {
            case 'View All Employees':
                viewAllEmployees();
                break;
            
            case 'View All Employees by Role':
                viewAllEmployeesByRole();
                break;

            case 'View All Employees by Department':
                viewAllEmployeesbyDepartment();
                break;

            case 'Update Employee':
                updateEmployee();
                break;
            
            case 'Add Employee':
                addEmployee();
                break;

            case 'Remove Employee':
                removeEmployee();
                break;

            case 'View All Roles':
                viewAllRoles();
                break;
            
            case 'Add Role':
                addRole();
                break;

            case 'Remove Role':
                removeRole();
                break;

            case 'View All Departments':
                viewAllDepartments();
                break;
            
            case 'Add Department':
                addDepartment();
                break;

            case 'Remove Department':
                removeDepartment();
                break;

            case 'Exit':
                connection.end();
                break;
            
            /* default:
                connection.end(); */
        }
    });
};

function viewAllEmployees() {
    connection.query(
        `SELECT employee.id, employee.first_name AS first, employee.last_name AS last, roles.title AS role, department.name AS department, roles.salary, CONCAT (managers.first_name , " " , managers.last_name) AS Manager
        FROM roles
        INNER JOIN employee ON employee.roles_id = roles.id
        INNER JOIN department ON department.id = roles.department_id
        LEFT JOIN employee AS managers ON employee.manager_id = managers.id
        ORDER BY employee.id;`,

        function(err, res) {
            if (err) throw err;
            console.table(res);

        }
    )
}

//function to call all employees from role table
function viewAllRoles() {
    connection.query("SELECT * FROM roles ", function (err, res) {
        if (err) throw err;
        console.table(res);
        homePage();
    })
}