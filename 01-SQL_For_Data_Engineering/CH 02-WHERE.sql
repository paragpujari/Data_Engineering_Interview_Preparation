USE SQL_Basics
----------------------------------------------------------WHERE Statements-----------------------------------------------------------------------------------------

--------------------------------------------------------Basic Level Interview Questions----------------------------------------------------------------------------
---1.	Find customers from Delhi
SELECT * FROM customers WHERE city IN ('Delhi')
---2.	Find employees whose department is IT
SELECT * FROM Employees WHERE department IN ('IT') ORDER BY salary DESC
---3.	Find products costing more than ₹10,000
SELECT * FROM products WHERE price > 10000 ORDER BY price
---4.	Find orders greater than ₹2,000
SELECT * FROM orders WHERE order_amount > 2000 ORDER BY order_amount DESC
---5.	Find active employees
SELECT * FROM Employees WHERE status = 'Active'  ORDER BY salary

-----------------------------------------------------Intermediate Level Interview Questions------------------------------------------------------------------------
---6.	Find IT employees earning more than ₹120,000
SELECT * FROM Employees WHERE department IN ('IT') AND salary > 120000 ORDER BY salary DESC
---7.	Find customers from Delhi or Mumbai
SELECT * FROM customers WHERE city IN ('Delhi') OR city IN ('Mumbai')
---8.	Find products priced between ₹1,000 and ₹10,000
SELECT * FROM products WHERE price BETWEEN 1000 AND 10000 ORDER BY price
---9.	Find orders between ₹500 and ₹2,000
SELECT * FROM orders WHERE order_amount BETWEEN 500 AND 2000 ORDER BY order_amount
---10.	Find employees who are NOT from Delhi
SELECT * FROM Employees WHERE city NOT IN ('Delhi') AND salary IS NOT NULL ORDER BY salary

--------------------------------------------------Analytical Level Interview Questions------------------------------------------------------------------------------
---11.	Find active IT employees earning more than ₹120,000
SELECT * FROM Employees WHERE status = 'Active' AND department = 'IT' AND salary > 120000 ORDER BY salary DESC
---12.	Find employees who are either from Mumbai or Bangalore AND have salary greater than ₹60,000
SELECT * FROM Employees WHERE (city IN ('Mumbai') OR city IN ('Bangalore')) AND salary > 60000 ORDER BY salary DESC
---13.	Find successful UPI payments
SELECT * FROM Payments1 WHERE payment_mode ='UPI' AND payment_status = 'Success'
---14.	Find employees whose department is either IT or Finance and whose status is Active
SELECT * FROM Employees WHERE (department IN ('IT') OR department IN ('Finance')) AND status = 'Active' ORDER BY salary DESC
---15.	Find customers whose city starts with the letter B
SELECT * FROM customers WHERE city LIKE 'B%'

-------------------------------------------------Coding Interview Questions-----------------------------------------------------------------------------------------
---16.	Find all negative-value orders
SELECT * FROM orders WHERE order_amount < 0 order by order_amount desc
---17.	Find employees whose email is missing
SELECT * FROM Employees WHERE email IS NULL ORDER BY salary
---18.	Find employees whose department is missing
SELECT * FROM Employees WHERE department IS NULL order by salary
---19.	Find customers whose name starts with A or P
SELECT * FROM customers WHERE (customer_name LIKE 'A%' OR customer_name LIKE 'P%')
---20.	Find orders where the amount is greater than ₹4,000 OR less than ₹0
SELECT * FROM orders WHERE order_amount > 4000 OR order_amount < 0 ORDER BY order_amount desc