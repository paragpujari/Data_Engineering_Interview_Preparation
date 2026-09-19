USE SQL_Basics;
------------------------------------------Basic Level Interview Questions--------------------------------------------------
---1. Select all Employees
SELECT * FROM Employees
---2. Select all customers
SELECT * FROM customers
---3. Select only customer names
SELECT customer_name FROM customers
---4. Select customer ID and name
SELECT customer_id,customer_name FROM customers
---5. Select employee names and departments
SELECT emp_name, department FROM Employees
---6. Select product name and price
SELECT product_name,price FROM products
---7. Select order ID and order amount
SELECT order_id, order_amount FROM orders
---8. Select employee name, salary and city
SELECT emp_name,salary,city FROM Employees
---9. Select customer name and city
SELECT customer_name,city FROM customers
---10. Rename columns using aliases
SELECT customer_id as id, customer_name as name, city as location FROM customers
---11. Select department information
SELECT dept_id, dept_name FROM Departments

------------------------------------------Intermediate Level Interview Questions--------------------------------------------------
---1. Select customer information with aliases(customer_id→ Customer_ID, customer_name→ Customer_Name, city  → Customer_City)
SELECT customer_id as Customer_ID, customer_name as Customer_Name, city AS Customer_City FROM customers
---2. Select employee salary with a calculated column(salary increased by 5000)
SELECT emp_name,salary,(salary + 5000) as new_salary FROM Employees
---3. Calculate annual salary
SELECT emp_name,salary,(salary * 12) as annual_salary FROM Employees
---4. Calculate discounted product price
SELECT product_name, price,(price * 0.90) as discounted_price FROM products
---5. Calculate order amount with tax
SELECT order_id, order_amount,(order_amount + 0.18*order_amount) as Amount_With_Tax FROM orders
---6. Display employee salary with  bonus
SELECT emp_name, salary,(salary + 2000) as salary_with_bonus FROM Employees
---7. Display product price with GST
SELECT product_name, price,(0.18*price) as GST_Amount FROM products
---8. Display product price including GST
SELECT product_name, price,(price + (0.18*price)) as Price_With_GST FROM products
---9. Select employee details with renamed columns
SELECT emp_name as Employee_Name, department as Department, city AS Location, salary AS Monthly_Salary FROM Employees
---10. Select order information with a calculated amount
SELECT order_id, customer_id, order_amount,(order_amount*2) as Double_Amount FROM orders

---------------------------------------Analytical-based Interview Questions----------------------------------------------------
---1. HR wants to understand what employee salaries would look like after a ₹10,000 increment
SELECT emp_name, salary, (salary + 10000) as Projected_salary FROM Employees
---2. Management wants a simple annual compensation view. Calculate annual salary from the monthly salary
SELECT emp_name, department, salary, (salary*12) as annual_salary FROM Employees
---3. The business wants to see the original product price and the price after a 15% markup
SELECT product_name, price, (price + (0.15*price)) as marked_up_price FROM products
---4. Create a customer-location report containing:id,name,city
SELECT customer_id, customer_name,city FROM customers
---5. Management wants to estimate revenue if every order amount increased by 20%
SELECT order_id, customer_id, order_amount, (order_amount + (0.20*order_amount)) as projected_amount FROM orders
---6. HR wants a report showing an employee's current monthly salary and its annual equivalent
SELECT emp_name, department, salary,(salary*12) as annual_salary  FROM Employees
---7. Finance wants to calculate 18% GST for every product
SELECT product_name,category, price as GST, (price + (0.18*price)) as price_with_gst FROM products
---8. The business wants to know what every order would be worth if its amount increased by ₹1,000
SELECT order_id, customer_id, order_amount,(order_amount+1000) as Scenario_amount FROM orders
---9. HR is considering a 10% salary increment. Calculate both the increment amount and new salary
SELECT emp_name, department,salary,(0.10*salary) as increment_amount,(salary + (0.10*salary)) as new_salary FROM Employees
---10. The product team wants to evaluate a 20% discount scenario. Calculate the discount and final price using only the SELECT statement
SELECT product_name, category, price,(0.20*price) as discount_price, price - (0.20*price) as final_price FROM products