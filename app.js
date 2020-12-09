// requires
const fs = require('fs');
const inquirer = require('inquirer');
const cTable = require('console.table');
const mysql = require('mysql');
const figlet = require('figlet');
const chalk = require('chalk');

// start up
function startApp() {
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

const connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: 'rootroot',
    database: 'employee-tracker'
});

connection.connect(function(err) {
    if (err) throw err;
    console.log('Connected as ID: ' + connection.threadID); 
})