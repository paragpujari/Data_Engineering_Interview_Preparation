USE SQL_Basics;
------------------------------------Basic Level Interview Questions------------------------------------------------------
---1. Display all customers ordered by customer_id in ascending order
SELECT * FROM customers ORDER BY customer_id
---2. Display all customers ordered by customer_name alphabetically
SELECT * FROM customers ORDER BY customer_name
---3. Display all customers ordered by city alphabetically
SELECT * FROM customers ORDER BY city
---4. Display all products ordered by price from lowest to highest
SELECT * FROM products ORDER BY price
---5. Display all products ordered by price from highest to lowest
SELECT * FROM products ORDER BY price DESC
---6. Display all employees ordered by salary from lowest to highest
SELECT * FROM Employees ORDER BY salary
---7. Display all employees ordered by salary from highest to lowest
SELECT * FROM Employees ORDER BY salary DESC
---8. Display all orders ordered by order_date from oldest to newest
SELECT * FROM orders ORDER BY order_date
---9. Display all orders ordered by order_amount from highest to lowest
SELECT * FROM orders ORDER BY order_amount DESC
---10. Display all payments ordered by payment_id from highest to lowest
SELECT * FROM Payments1 ORDER BY payment_id DESC

---------------------------------Intermediate Level Interview Questions--------------------------------------------------
---11. Display employees ordered by department alphabetically and, within each department, by salary from highest to lowest
SELECT * FROM Employees ORDER BY department,salary DESC
---12. Display customers ordered by city alphabetically and customer_name alphabetically within each city
SELECT * FROM customers ORDER BY city,customer_name
---13. Display products ordered by category alphabetically and then price from highest to lowest
SELECT * FROM products ORDER BY category,price DESC
---14. Display orders ordered by customer_id ascending and, for each customer, order_amount from highest to lowest
SELECT * FROM orders ORDER BY customer_id,order_amount DESC
---15. Display orders ordered by order_date from newest to oldest. If two orders have the same date, sort by order_amount from highest to lowest
SELECT * FROM orders ORDER BY order_date DESC,order_amount DESC
---16. Display employees with Active employees first and Inactive employees afterward, then sort salary from highest to lowest
SELECT * FROM Employees ORDER BY status,salary DESC
---17. Display products ordered by category ascending and product_name ascending
SELECT * FROM products ORDER BY category, product_name
---18. Display only:order_id, customer_id,order_amount and arrange them from highest order amount to lowest
SELECT order_id, customer_id,order_amount FROM orders ORDER BY order_amount DESC
---19. Employee salary ranking order Display: emp_name, department, salary with the highest-paid employee first
SELECT emp_name, department, salary FROM Employees ORDER BY salary desc
---20. Sort customers by ID descending Display: customer_id, customer_name, city with the highest customer ID first
SELECT customer_id, customer_name, city FROM customers ORDER BY customer_id desc


------------------------------------Advanced Level Interview Questions------------------------------------------------------
---21. The business wants to see the most valuable orders first for revenue review.Display all orders with the highest order_amount first.
SELECT * FROM orders ORDER BY order_amount desc
---22. The finance team wants to investigate the smallest order amounts.Find the lowest-value orders
SELECT * FROM orders ORDER BY order_amount
---23. The company wants its customer list alphabetically by city and then alphabetically by customer name
SELECT * FROM customers ORDER BY city,customer_name
---24. HR wants employees arranged from the highest salary to the lowest salary
SELECT emp_id, emp_name, department, salary FROM Employees ORDER BY salary desc
---25. HR wants employees grouped by department and wants the highest-paid employee within each department to appear first
SELECT department,salary FROM Employees order by department,salary desc
---26. The operations team wants to review negative or very small order amounts first.Sort orders from the lowest amount to the highest amount.
SELECT * FROM orders order by order_amount
---27. Management wants the newest orders displayed first
SELECT * FROM orders order by order_date desc
---28. Management wants to examine each customer's orders together, with the largest order for each customer shown first
SELECT customer_id,order_id,order_date,order_amount FROM orders ORDER BY order_amount desc
---29. The product team wants products organized by category, with the most expensive product in each category appearing first
SELECT * FROM products ORDER BY category,price desc
---30. The payment team wants payments displayed first by payment_status alphabetically and then by payment_id from highest to lowest
SELECT * FROM Payments1 ORDER BY payment_status,payment_id desc