--------------------------------------------------------SELECT----------------------------------------------------------------------------------------------------------------
/*
	SELECT ------------------> It helpsin fetching the records from the database table.

	Syntax:---

	SELECT * FROM table_name;

	SELECT col1,......,coln FROM table_name;
*/
-----------------------------------------------------Basic Level Interview Questions--------------------------------------------------------------------------------------------
---1.	Write a SQL query to retrieve all columns and all records from the Customers table
SELECT * FROM customers
---2.	Write a SQL query to display only customer_name and city from the Customers table
SELECT customer_name,city FROM customers
---3.	Write a SQL query to retrieve emp_name, department, and salary from the Employees table
SELECT emp_name,department,salary FROM Employees
---4.	Write a SQL query to display all product names and their prices from the products table
SELECT product_name,price FROM products ORDER BY price
---5.	Write a SQL query to retrieve only order_id, order_date, and order_amount from the Orders table
SELECT order_id, order_date, order_amount FROM orders
---6.   Write a SQL query to display employee names and email addresses from the Employees table
SELECT emp_name,email FROM Employees
---7.	Write a SQL query to retrieve all records from the Departments table
SELECT * FROM Departments
---8.	Write a SQL query to display product_name, category, and price from the products table
SELECT product_name,category,price FROM products ORDER BY price
---9.   Write a SQL query to retrieve payment_id, payment_mode, and payment_status from the Payments1 table
SELECT payment_id,payment_mode, payment_status FROM Payments1 order by 1
---10.	Write a SQL query to display emp_id, emp_name, city, and Hire_Date from the Employees table
SELECT emp_id, emp_name,city,Hire_Date FROM Employees

------------------------------------------------------Intermediate Level Interview Questions-----------------------------------------------------------------------------------
---11.	Write a SQL query to retrieve employee names, departments, and salaries. Display the salary column with the alias Annual_Salary
SELECT emp_name,department,salary, (salary*12) AS Annual_salary FROM Employees ORDER BY 1
---12.	Write a SQL query to retrieve customer names and cities from the Customers table. Display the city column with the alias Customer_Location
SELECT customer_name,city AS Customer_Location FROM customers
---13.	Write a SQL query to retrieve all employee details except the email and birth_date columns
SELECT emp_id,emp_name,department,salary,city,Hire_Date,status,dept_id FROM Employees ORDER BY 1
---14.	Write a SQL query to display employee names, salaries, and hire dates using meaningful column aliases
SELECT emp_name as Employee_Name,salary AS Monthly_Salary,Hire_Date AS Hire_Date FROM Employees
---15.	Write a SQL query to retrieve product names,category and prices. Display the price column as Product_Cost and category as Product_Type
SELECT product_name, category AS Product_Type, price AS Product_Cost FROM products ORDER BY 3
---16.	Write a SQL query to retrieve order_id, customer_id, and order_amount from the Orders table. Display the order amount with the alias Transaction_Value
SELECT order_id, customer_id,order_amount AS Transaction_Value FROM orders ORDER BY 1,2
---17.	Write a SQL query to display employee details along with a calculated column named Monthly_Salary, derived from their annual salary
SELECT emp_id, emp_name,salary AS Monthly_Salary,(salary*12) AS Annual_Salary FROM Employees ORDER BY 1,2,3
---18.	Write a SQL query to retrieve employee names and their departments, displaying the department column as Department_Name
SELECT emp_name, department AS Department_Name FROM Employees
---19.	Write a SQL query to display product names, prices, and a calculated column named Discounted_Price, assuming a 10% discount on every product
SELECT product_name, price,(0.10)*price as discount,price-(0.10*price) as Discounted_Price FROM products
---20.	Write a SQL query to retrieve employee names and salaries along with a calculated column named Salary_After_Increment, assuming a 15% salary increment
SELECT emp_name,salary,(salary+0.15*salary) as Salary_After_Increment FROM Employees ORDER BY salary

--------------------------------------------------Analytical and Scenario Based Questions---------------------------------------------------------------------------
---21. The HR department wants to generate an employee directory containing employee ID, employee name, department, city, and email address. Write a SQL query to retrieve these five columns from the Employees table.
SELECT emp_id, emp_name,department,city,email FROM Employees
---22.	The Finance department wants to prepare a report showing employee names, their current salaries, and their estimated monthly salaries. Write a SQL query to display these details. Assume salary represents annual salary
SELECT emp_name,salary AS Annual_Salary,(salary/12.0) AS Monthly_Salary FROM Employees ORDER BY 1,2,3
---23.	
/*
An e-commerce company wants to generate a product catalog for its website.

The report should contain:
- Product ID
- Product Name
- Category
- Original Price
- Discounted Price (assuming a 20% discount)
Write a SQL query to generate this report
*/
SELECT product_id, product_name,category,price AS Original_Price, (0.20*price) as Discount, price-(0.20*price) as Discounted_Price FROM products ORDER BY price
---24.	The sales department wants to prepare a report containing order ID, customer ID, order date, order amount, and an additional column named Order_Amount_With_Tax. Assume the tax rate is 18%. Write a SQL query to generate the report.
SELECT order_id, customer_id, order_date, order_amount,(order_amount+0.18*order_amount) AS Order_Amount_With_Tax FROM orders
---25.	The HR team wants to create a simplified employee report containing employee name, department, city, and employment status. Write a SQL query to retrieve only these required columns from the Employees table.
SELECT emp_name, department,city, status AS Employment_status FROM Employees
---26.	
/*
A payment processing company wants to generate a transaction report containing:
- Payment ID
- Order ID
- Payment Mode
- Payment Status
Additionally, display a calculated column named Transaction_Reference, combining the payment ID and order ID.

Write a SQL query to generate this report
*/
SELECT payment_id,order_id,payment_mode,payment_status,(payment_id + order_id) AS Transaction_Reference FROM Payments1
---27.	
/*
The HR department is planning a salary revision exercise.

They want to generate a report containing employee ID, employee name, current salary, and proposed salary after a 12% increment.

Write a SQL query to generate this report
*/
SELECT emp_id,emp_name,salary AS current_salary,(salary + 0.12*salary) AS Salary_after_Increment FROM Employees ORDER BY salary
---28.	
/*
An e-commerce company wants to prepare a dataset for customer purchase analysis.

The required columns are:
- Customer ID
- Order ID
- Order Date
- Order Amount
- Order Amount after a 5% service charge
Write a SQL query to generate this dataset from the Orders table
*/
SELECT customer_id,order_id,order_date,order_amount,(order_amount+0.005*order_amount) AS Amount_after_Service_Charge FROM orders
---29. 
/*
The HR department wants to create an employee contact directory.

The report should contain employee name, email address, city, and department.

Additionally, create a calculated column named Employee_Contact by combining employee name and email address.

Write a SQL query to generate this report
*/
SELECT emp_name,email,city,department,CONCAT(emp_name,' ',email) AS Employee_Contact FROM Employees
---30.	
/*
The business analytics team wants to prepare a revenue dataset for further analysis.

The report should contain:
- Order ID
- Customer ID
- Order Date
- Original Order Amount
- Order Amount after a 10% increase
Additionally, create a column named Revenue_Category with a fixed value of Sales
*/
SELECT order_id,customer_id,order_date,order_amount AS Original_order_amount, (order_amount+0.10*order_amount) AS Increased_order_amount, 'Sales' AS Revenue_Category FROM orders

---------------------------------------------Coding Interview Questions-------------------------------------------------------------------------------------------
---31. An organization wants to retrieve employee information for its internal reporting system. Write a SQL query to display emp_id, emp_name, department, salary, and city from the Employees table
SELECT emp_id, emp_name, department,salary,city FROM Employees
---32.	An e-commerce company wants to extract customer information for its CRM system.Write a SQL query to display customer_id, customer_name, and city from the Customers table
SELECT customer_id,customer_name,city FROM customers
---33.	An online shopping company wants to calculate product prices after applying a 15% discount.Write a SQL query to display the product details including the final prices
SELECT product_id, product_name,price AS Original_price,(price - 0.15*price) AS price_after_discount FROM products ORDER BY price
---34.	The HR department wants to prepare a salary revision report by increasing every employee's salary by 20%. Write a SQL query to display emplotee details
SELECT emp_id, emp_name,salary,(0.20)*salary AS Increment_salary,salary+(0.2)*salary AS Salary_after_Increment FROM Employees WHERE department = 'HR' ORDER BY 1
---35.	The Finance department wants to calculate the monthly salary of every employee based on their annual salary. Assume current salary AS Annual salary
SELECT  emp_name,department,salary AS Annual_Salary,(salary/12.0) AS Monthly_Salary FROM Employees WHERE department = 'Finance'
---36.	An e-commerce company wants to calculate the order amount after adding 18% GST. Write a SQL Query to display the order details
SELECT order_id, customer_id, order_amount,(0.18*order_amount) AS gst_amount, order_amount + (0.18*order_amount) AS Final_Order_Amount FROM orders ORDER BY 1
--37.	The IT department wants to generate an employee contact report. Write a SQL query to display the employee details
SELECT emp_id, emp_name,email,SUBSTRING(email,CHARINDEX('@',email)+1,LEN(email)) as Email_Domain FROM Employees WHERE department = 'IT' ORDER BY salary
---38.	The sales team wants to generate a unique reference label for every order. Write a SQL query to display the order details
SELECT order_id, customer_id,order_amount,CONCAT('ORD-',order_id) AS Unique_reference_label FROM orders ORDER BY 1
---39.	An e-commerce company wants to prepare a product pricing report. Write a SQL query to display the product details
SELECT product_id, product_name, category, price,(price + 0.10*price) AS Price_With_10_Percent_Tax,'Retail' AS Product_Type FROM products ORDER BY price
---40.	The management team wants to generate a consolidated employee report for business analysis. Write a SQL query to display the employee details
SELECT emp_id, emp_name,department,salary,(0.10*salary) AS Annual_Bonus,(salary+0.10*salary) AS Total_compensation,'Employee_Report' AS Report_Type FROM Employees ORDER BY 1