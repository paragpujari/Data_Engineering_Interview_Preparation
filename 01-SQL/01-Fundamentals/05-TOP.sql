USE SQL_Basics;
------------------------------------------------Basic Level Interview Questions---------------------------------------------------------
---1. Display the top 5 customers
SELECT top 5 * FROM customers
---2. Display the top 10 products
SELECT top 10 * FROM products
---3. Display the top 3 most expensive products
SELECT TOP 3 * FROM products ORDER BY price DESC
---4. Display the top 3 cheapest products
SELECT TOP 3 * FROM products ORDER BY price
---5. Display the top 5 employees based on salary DESC
SELECT top 5 * FROM Employees ORDER BY salary desc
---6. Display the top 3 employees with the lowest salary
SELECT TOP 3 * FROM Employees where salary IS NOT NULL ORDER BY salary
---7. Display the top 5 orders based on order amount desc
SELECT top 5 * FROM orders order by order_amount desc
---8. Display the top 3 orders with the smallest order amount
SELECT top 3 * FROM orders where order_amount > 0 order by order_amount
---9. Display the top 5 customers ordered by customer ID
SELECT top 5 * FROM customers order by customer_id
---10. Display the top 5 customers in reverse customer ID order
SELECT top 5 * FROM customers order by customer_id desc


----------------------------------------Intermediate Level Interview Questions---------------------------------------------------------
---11. Find the top 5 active employees based on salary desc
SELECT top 5 * FROM Employees WHERE status IN ('Active') order by salary desc
---12. Find the top 3 IT employees based on salary desc
SELECT top 3 * FROM Employees WHERE department IN ('IT') order by salary desc
---13. Find the top 3 highest-value orders for customer 101
SELECT top 3 * FROM orders WHERE customer_id = '101' order by order_amount desc
---14. Find the top 5 orders placed in July 2026 based on desc amount
SELECT top 5 * FROM orders WHERE MONTH(order_date) = '07' and YEAR(order_date) = '2026' order by order_amount desc
---15. Find the top 3 highest-paid employees in Delhi
SELECT top 3 * FROM Employees WHERE city IN ('Delhi') order by salary desc
---16. Find the top 3 cheapest Electronics products
SELECT top 3 * FROM products WHERE category IN ('Electronics') order by price
---17. Find the top 5 highest-value successful orders
SELECT top 5 * 
FROM  orders o
JOIN  Payments1 p
ON    o.order_id = p.order_id
WHERE p.payment_status = 'Success'
ORDER BY o.order_amount desc
---18. Find the top 3 successful UPI orders
SELECT top 3 * 
FROM  orders o
JOIN  Payments1 p
ON    o.order_id = p.order_id
WHERE p.payment_mode = 'UPI'
ORDER BY o.order_amount desc
---19. Find the top 5 employees ordered by salary in increasing order, and if salaries are equal, sort by employee name
SELECT top 5 * FROM Employees where salary is not null ORDER BY salary,emp_name
---20. Find the top 5 highest-paid active IT employees
SELECT top 5 * FROM Employees WHERE status = 'active' and department = 'IT' ORDER BY salary desc


-------------------------------------Analytical Based Interview Questions--------------------------------------------------------------
---21. Find the highest-value order
SELECT top 1 * FROM orders order by order_amount desc
---22. Find the customer who placed the highest-value single order
SELECT top 1 c.customer_id, c.customer_name, c.city,o.order_id, o.order_date, o.order_amount
FROM customers c
JOIN orders    o
ON   c.customer_id = o.customer_id
ORDER BY o.order_amount DESC

---23. Find the top 3 customers based on their total order amount DESC
SELECT top 3 c.customer_name,SUM(o.order_amount) as total_order_amount
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_name
ORDER BY SUM(o.order_amount) DESC

---24. Find the top 3 customers by number of orders DESC
SELECT TOP 3 customer_id,COUNT(order_id) as total_orders
FROM orders
GROUP BY customer_id
ORDER BY 2 DESC

---25. Find the top 3 cities having the highest-paid employee
SELECT city,MAX(salary) as Highest_salary
FROM Employees 
WHERE salary IS NOT NULL
GROUP BY city
order by 2 desc

---26. Find the top 3 departments based on average salary in desc
SELECT TOP 3 department,AVG(salary) AS Average_salary
FROM Employees
WHERE department IS NOT NULL
GROUP BY department
ORDER BY 2 DESC

---27. Find the top 3 products in the Electronics category by price desc
SELECT top 3 * FROM products WHERE category IN ('Electronics') order by price desc

---28. Find the top 3 customers based on total successful payment order value desc
SELECT TOP 3 o.customer_id,SUM(o.order_amount) as Total_order_value
FROM orders o
JOIN Payments1 p
ON   o.order_id = p.order_id
WHERE  p.payment_status = 'Success'
GROUP BY o.customer_id
ORDER BY 2 DESC

---29. Find the top 3 customers based on successful UPI transaction value
SELECT TOP 3 o.customer_id,SUM(o.order_amount) as Total_transaction_value
FROM orders o
JOIN Payments1 p
ON   o.order_id = p.order_id
WHERE  p.payment_status = 'Success' AND p.payment_mode = 'UPI'
GROUP BY o.customer_id
ORDER BY 2 DESC

---30. Find the top 3 customers with the highest number of successful orders
SELECT TOP 3 o.customer_id,COUNT(p.order_id) AS Total_successful_orders
FROM orders o
JOIN Payments1 p
ON   o.order_id = p.order_id
WHERE p.payment_status = 'Success'
GROUP BY o.customer_id
ORDER BY 2 DESC