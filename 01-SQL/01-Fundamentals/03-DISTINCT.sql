USE SQL_Basics;
---------------------------------------------------Basic Level Interview Questions----------------------------------------------------------
---1. Find all unique cities from Customers
SELECT DISTINCT city AS Unique_city FROM customers
---2. Find all unique customer IDs from Customers
SELECT DISTINCT customer_id as Unique_customer_id FROM customers
---3. Find all unique order dates from Orders
SELECT DISTINCT order_date as unique_order_date FROM orders
---4. Find all unique payment modes from Payments1
SELECT DISTINCT payment_mode as unique_payment_modes FROM Payments1
---5. Find all unique payment statuses
SELECT DISTINCT payment_status as unique_payment_status FROM Payments1
---6. Find all unique employee departments
SELECT DISTINCT department as unique_employee_departments FROM Employees
---7. Find all unique employee cities
SELECT DISTINCT city as Unique_employee_cities FROM Employees
---8. Find all unique product categories
SELECT DISTINCT category as unique_product_category FROM products
---9. Find all unique customer cities from Customers and sort them alphabetically
SELECT DISTINCT city as unique_customer_cities FROM customers ORDER BY 1
---10. Find unique combinations of employee department and city
SELECT DISTINCT department,city FROM Employees

-----------------------------------------Intermediate Level Interview Questions-------------------------------------------------------------
---11. Find unique combinations of payment mode and payment status
SELECT DISTINCT payment_mode, payment_status FROM Payments1
---12. Find unique combinations of customer city and customer name
SELECT DISTINCT city, customer_name FROM customers
---13. Find unique order amounts
SELECT DISTINCT order_amount as unique_order_amount FROM orders
---14. Find unique combinations of order date and order amount
SELECT DISTINCT order_date, order_amount FROM orders
---15. Find unique employee departments and employee statuses
SELECT DISTINCT department, status FROM Employees
---16. Find unique customer cities that have orders
SELECT DISTINCT b.city
FROM orders a
JOIN customers b
ON   a.customer_id = b.customer_id
---17. Find unique customer names who have placed orders
SELECT DISTINCT b.customer_name as customer_names
FROM orders a
JOIN customers b
ON   a.customer_id = b.customer_id
---18. Find unique payment modes used for successful payments
SELECT DISTINCT payment_mode as unique_payment_modes
FROM Payments1 
WHERE payment_status = 'Success'
---19. Find unique employee cities for active employees
SELECT DISTINCT city as unique_employee_cities FROM Employees WHERE status = 'Active'
---20. Find unique product categories for products priced above ₹5,000
SELECT DISTINCT category as unique_product_categories FROM products where price > 5000

----------------------------------------------Analytical Level Interview Questions----------------------------------------------------------
---21. A business analyst wants to know how many different cities currently have customers
SELECT DISTINCT city, customer_name FROM customers

SELECT COUNT(DISTINCT city) AS Unique_customers FROM customers

---22. How many different payment modes are being used
SELECT COUNT(DISTINCT payment_mode) as Total_payment_modes FROM Payments1
---23. How many different payment statuses exist
SELECT COUNT(DISTINCT payment_status) AS Total_payment_status FROM Payments1
---24. How many different cities have employees
SELECT COUNT(DISTINCT city) AS Total_cities FROM Employees
---25. How many different cities have customers who have placed at least one order
SELECT DISTINCT city as unique_cities FROM(
SELECT a.customer_id, b.order_id, a.city 
FROM customers a
JOIN orders b
ON a.customer_id = b.customer_id
)a;
---26. How many unique customers have placed orders
SELECT COUNT(DISTINCT customer_id) AS Total_unique_customers FROM orders
---27. How many different payment modes have successfully processed payments
SELECT COUNT(DISTINCT payment_mode) as total_payment_modes FROM Payments1 WHERE payment_status = 'Success'
---28. Find the number of unique product categories for products costing more than ₹10,000
SELECT COUNT(DISTINCT category) as unique_product_category FROM products WHERE price > 10000
---29. Find the number of unique department-city combinations in the company
SELECT COUNT(1) AS Total_unique_department_city_records FROM(
SELECT DISTINCT department, city FROM Employees
)a
---30. Find the number of unique customer-city combinations among customers who have placed orders
SELECT count(1) as unique_records FROM(
SELECT DISTINCT customer_id, city as unique_cities FROM(
SELECT a.customer_id, b.order_id, a.city 
FROM customers a
JOIN orders b
ON a.customer_id = b.customer_id
)a
)b;