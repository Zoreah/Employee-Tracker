var mysql = require("mysql");
var inquirer = require("inquirer");

const confirm = require('inquirer-confirm');

var connection = mysql.createConnection({
  host: "localhost",

 // Your port; if not 3306
  port: 3306,

  // Your username
  user: "root",

  // Your password
  password: "root",
  database: "Employee_tracker"
});

var showRoles;
var showDepartments;
var showEmployees;


connection.connect(function(err) {
    if (err) throw err;
    runSearch();
  });

  function runSearch() {
    inquirer
      .prompt({
        name: "action",
        type: "rawlist",
        message: "Hello, What would you like to do?",
        choices: viewOptions 
  
        
      })

      .then(function(answer) {
        switch (answer.action) {
        case viewOptions [0]:
          departmentView();
          break;
  
        case viewOptions [1]:
          roleView();
          break;
  
        case viewOptions [2]:
          employeeView();
          break;
  
        case viewOptions [3]:
          connection.end();
          break;
  
    
        }
      });
  }

  function departmentView() {
      var 
  }
