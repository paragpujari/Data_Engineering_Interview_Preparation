USE SQL_Basics;
--------------------------------------------Basic Level Interview Questions------------------------------------------------------
---1. Count employees in each department
SELECT department,COUNT(1) AS Total_employees
FROM Employees
WHERE department IS NOT NULL
GROUP BY department
---2. Find the total salary paid by each department
SELECT department, SUM(salary) AS Total_salary
FROM Employees
WHERE department IS NOT NULL
GROUP BY department
---3. Find the average salary of each department
SELECT department, AVG(salary) AS Average_salary
FROM Employees
WHERE department IS NOT NULL
GROUP BY department
---4. Find the maximum salary in each department
SELECT department, MAX(salary) AS Maximum_salary
FROM Employees
WHERE department IS NOT NULL
GROUP BY department
---5. Find the minimum salary in each department
SELECT department, MIN(salary) AS Minimum_salary
FROM Employees
WHERE department IS NOT NULL
GROUP BY department
---6. Count employees in each city
SELECT city, COUNT(1) AS Total_employees
FROM Employees
GROUP BY city
---7. Find the number of customers in each city
SELECT city,COUNT(1) AS Total_customers
FROM customers
GROUP BY city
---8. Find the total order amount for each customer
SELECT customer_id,SUM(order_amount) as Total_order_amount
FROM orders
GROUP BY customer_id
---9. Count orders placed by each customer
SELECT customer_id,COUNT(1) as Total_orders
FROM orders
GROUP BY customer_id
---10. Find the highest order amount for each customer
SELECT customer_id,MAX(order_amount) as Highest_order_amount
FROM orders
GROUP BY customer_id


--------------------------------------Intermediate Level Interview Questions------------------------------------------------------
---11. Find departments having more than 2 employees
SELECT department,COUNT(1) AS Total_employees
FROM Employees
WHERE department IS NOT NULL
GROUP BY department
HAVING COUNT(1) > 2 
ORDER BY 2 DESC
---12. Find departments whose average salary is greater than ₹80,000
SELECT department,AVG(salary) AS Average_salary
FROM Employees
WHERE department IS NOT NULL
GROUP BY department
HAVING AVG(salary) > 80000 
ORDER BY 2 DESC
---13. Find customers who placed more than 3 orders
SELECT customer_id,COUNT(1) AS Total_orders
FROM orders
GROUP BY customer_id
HAVING COUNT(1) > 3
order by 2 desc
---14. Find customers whose total order amount exceeds ₹5,000
SELECT customer_id,SUM(order_amount) AS Total_order_amount 
FROM orders
GROUP BY customer_id
HAVING SUM(order_amount) > 5000
ORDER BY 2 DESC
---15. Find the number of orders for each customer where the order amount is greater than ₹1,000
SELECT customer_id,COUNT(1) AS Total_orders
FROM orders 
WHERE order_amount > 1000
GROUP BY customer_id
ORDER BY 2 DESC
---16. Find the total positive order amount for each customer
SELECT customer_id,SUM(order_amount) AS Total_order_amount
FROM orders 
WHERE order_amount > 0
GROUP BY customer_id
ORDER BY 2 DESC
---17. Find the average order amount for each customer, considering only orders above ₹1,000
SELECT customer_id,AVG(order_amount) AS Average_order_amount
FROM orders 
WHERE order_amount > 1000
GROUP BY customer_id
ORDER BY 2 DESC
---18. Find the number of employees in each department and city combination
SELECT department,city,COUNT(1) AS Total_employees 
FROM Employees
WHERE department IS NOT NULL
GROUP BY department,city
order by 3 desc
---19. Find the total salary by department and employee status
SELECT department,status,SUM(salary) AS Total_salary
FROM Employees
WHERE department IS NOT NULL
GROUP BY department,status
ORDER BY 3 DESC
---20. Find customers having at least 2 orders and total order value above ₹5,000
SELECT customer_id,COUNT(1) AS Total_orders,SUM(order_amount) AS Total_order_amount
FROM orders
GROUP BY customer_id
HAVING COUNT(1) >= 2 AND SUM(order_amount) > 5000
ORDER BY 2 DESC, 3 DESC

----------------------------------------Advanced Level Interview Questions------------------------------------------------------
---21. Calculate total salary per department
SELECT department,SUM(salary) AS Total_salary
FROM Employees
WHERE  department IS NOT NULL
GROUP BY department
ORDER BY 2 DESC
---22. Find customers whose average order amount is greater than ₹2,000
SELECT customer_id,AVG(order_amount) AS Average_order_amount
FROM orders
GROUP BY customer_id
HAVING AVG(order_amount) > 2000
ORDER BY 2 DESC
---23. Find the city having the highest number of employees
SELECT TOP 1 city,COUNT(1) AS Total_employees
FROM Employees
GROUP BY city 
ORDER BY 2 DESC
---24. Find each customer's total order amount and number of orders
SELECT customer_id,SUM(order_amount) AS Total_order_amount,COUNT(1) AS Total_orders
FROM orders
GROUP BY customer_id
ORDER BY 2 DESC, 3 DESC
---25. Find customers who have placed at least 3 orders with an average order value above ₹1,000
SELECT customer_id,COUNT(1) AS Total_orders,AVG(order_amount) AS Average_order_value
FROM orders
GROUP BY customer_id
HAVING COUNT(1) >= 3 AND AVG(order_amount) > 1000
---26. Find the total successful payment amount by payment mode
SELECT p.payment_mode,SUM(o.order_amount) AS successful_payment_amount
FROM orders o
JOIN Payments1 p
ON   o.order_id = p.order_id
WHERE p.payment_status = 'Success'
GROUP BY p.payment_mode
ORDER BY 2 DESC
---27. Find the number of successful, pending and failed payments
SELECT payment_status,COUNT(1) AS Total_payments
FROM Payments1
GROUP BY payment_status
ORDER BY 2 DESC
---28. Find the total order amount for each customer city
SELECT c.city,SUM(o.order_amount) AS Total_order_amount
FROM customers c
JOIN orders    o
ON   c.customer_id = o.customer_id
GROUP BY c.city
ORDER BY 2 DESC
---29. Find cities where customers have placed more than 2 orders and total order value exceeds ₹5,000
SELECT c.city,COUNT(1) AS Total_orders,SUM(o.order_amount) as Total_order_amount
FROM customers c
JOIN orders    o
ON   c.customer_id = o.customer_id
GROUP BY c.city 
HAVING COUNT(1) > 2 AND SUM(o.order_amount) > 5000
ORDER BY 2 DESC, 3 DESC
---30. Find each department's employee count, average salary and highest salary, showing only departments with at least 2 employees and average salary above ₹60,000
SELECT department,COUNT(1) AS Employee_count,AVG(salary) AS Average_salary,MAX(salary) AS Highest_salary
FROM Employees
WHERE department IS NOT NULL
GROUP BY department
HAVING COUNT(1) >= 2 AND AVG(salary) > 60000