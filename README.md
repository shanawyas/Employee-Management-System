## Project Overview
A Spring boot web application application that lets you add, delete, edit and update employees in different departments for enterprise needs and contact info.You can also create different departments, designations,salary structure for employees. you can also take attendance for employees of your company, create and approved leave request, pay the monthly salary of employees.

Technologies used: Java programming language, Spring Boot, mySql for database , Spring Security.

Front-end UI jsp.
## Installation Process
In this project I am using spring security. For installing the project you need download code and extract it. After that import the project with your IDE. After importing the project you need configure your database to the project like username and password in the application.properties file. After that go to MySQL workbench and create a data base named user_login. After creating the database run the project. After running the project it will created a table automatically named app_user. On this table you need to input some data. on user_name column use user as a username and encryted_password column use this encrypted password $2y$10$m/5VKAdJ8ED.3jw/KJRAXeCrV4vBzePEQ1IOkUuJw2jd7QY9ZsbWi and hit apply. After doing all this process you are good to go.
Now run the application .when it run it asked user name and password to move forward than give the username "user" and Password "msr@gmail.com". That's it the app run perfectly.
