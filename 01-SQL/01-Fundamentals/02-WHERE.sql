USE SQL_Basics;
-------------------------------------------Basic Level Interview Questions--------------------------------------------------
---1. Find all customers from Mumbai
SELECT * FROM customers WHERE city IN ('Mumbai')
---2. Find all customers from Delhi
SELECT * FROM customers WHERE city IN ('Delhi')
---3. Find all orders where the order amount is greater than ₹2000
SELECT * FROM orders WHERE order_amount > 2000
---4. Find all orders where the order amount is less than ₹1000
SELECT * FROM orders WHERE order_amount < 1000
---5. Find all employees whose salary is greater than ₹100,000
SELECT * FROM Employees WHERE salary > 100000
---6. Find all employees working in the IT department
SELECT * FROM Employees WHERE department IN ('IT')
---7. Find all active employees
SELECT * FROM Employees WHERE status IN ('Active')
---8. Find all products belonging to the Electronics category
SELECT * FROM products WHERE category IN ('Electronics')
---9. Find all products whose price is greater than ₹10,000
SELECT * FROM products WHERE price > 10000
---10. Find the order where order_id = 31
SELECT * FROM orders WHERE order_id IN (31)


------------------------------------Intermediate Level Interview Questions-------------------------------------------------
---11. Find employees who are in IT AND have salary greater than ₹120,000
SELECT * FROM Employees WHERE department IN ('IT') AND salary > 120000
---12. Find customers from either Mumbai OR Delhi
SELECT * FROM customers WHERE city IN ('Mumbai','Delhi')
---13. Find orders between ₹1,000 and ₹3,000
SELECT * FROM orders WHERE order_amount BETWEEN 1000 AND 3000
---14. Find employees whose salary is between ₹60,000 and ₹100,000
SELECT * FROM Employees WHERE salary BETWEEN 60000 AND 100000
---15. Find customers from Mumbai, Delhi, or Hyderabad
SELECT * FROM customers WHERE city IN ('Mumbai','Delhi','Hyderabad')
---16. Find employees who are NOT from Delhi
SELECT * FROM Employees WHERE city NOT IN ('Delhi')
---17. Find successful UPI payments
SELECT * FROM Payments1 WHERE payment_mode = 'UPI' AND payment_status = 'Success'
---18. Find payments that are either Pending OR Failed
SELECT * FROM Payments1 WHERE payment_status = 'Pending' OR payment_status = 'Failed'
---19. Find products whose category is Electronics and price is greater than ₹50,000
SELECT * FROM products WHERE category IN ('Electronics') AND price > 50000
---20. Find employees hired after January 1, 2024
SELECT * FROM Employees WHERE Hire_Date > '2024-01-01'

---------------------------------------Analytical Based Interview Questions--------------------------------------------------
---21. Find high-value orders above ₹4,000
SELECT * FROM orders WHERE order_amount > 4000
---22. Find suspicious orders where the order amount is negative
SELECT * FROM orders WHERE order_amount < 0
---23. Find active employees earning more than ₹100,000
SELECT * FROM Employees WHERE status IN ('Active') and salary > 100000
---24. Find employees who are either from Delhi OR Bangalore AND have salary above ₹70,000
SELECT * FROM Employees WHERE city IN ('Delhi','Bangalore') AND salary > 70000
---25. Find employees who are NOT in IT or HR
SELECT * FROM Employees WHERE department NOT IN ('IT','HR')
---26. Find employees whose email is missing
SELECT * FROM Employees WHERE email IS NULL
---27. Find employees who have a department assigned
SELECT * FROM Employees WHERE dept_id IS NOT NULL
---28. Find customers whose name starts with A
SELECT * FROM customers WHERE customer_name LIKE 'A%'
---29. Find customers whose name contains the letter a
SELECT * FROM customers WHERE customer_name LIKE '%a%'
---30. Find successful payments made through either UPI or Cash
SELECT * FROM Payments1 WHERE payment_mode IN ('UPI','Cash') AND payment_status = 'Success'