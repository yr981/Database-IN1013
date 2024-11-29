--1;
SELECT w.name AS waiter_name, 
       w.surname AS waiter_surname, 
       b.bill_date, 
       COUNT(b.bill_id) AS num_bills
FROM Waiters w
JOIN Bills b ON w.waiter_id = b.waiter_id
GROUP BY w.name, w.surname, b.bill_date
HAVING COUNT(b.bill_id) >= 2;

--2;
SELECT r.room_name, 
       COUNT(t.table_id) AS num_large_tables
FROM Rooms r
JOIN Tables t ON r.room_id = t.room_id
WHERE t.capacity > 6
GROUP BY r.room_name;

--3;
SELECT r.room_name, 
       SUM(b.total_amount) AS total_bills
FROM Rooms r
JOIN Bills b ON r.room_id = b.room_id
GROUP BY r.room_name;

--4;
SELECT h.name AS headwaiter_name, 
       h.surname AS headwaiter_surname, 
       SUM(b.total_amount) AS total_bill_amount
FROM Headwaiters h
JOIN Waiters w ON h.headwaiter_id = w.headwaiter_id
JOIN Bills b ON w.waiter_id = b.waiter_id
GROUP BY h.name, h.surname
ORDER BY total_bill_amount DESC;

--5;
SELECT c.name AS customer_name
FROM Customers c
JOIN Bills b ON c.customer_id = b.customer_id
GROUP BY c.name
HAVING AVG(b.total_amount) > 400.00;

--6;
SELECT w.name AS waiter_name, 
       w.surname AS waiter_surname, 
       b.bill_date, 
       COUNT(b.bill_id) AS num_bills
FROM Waiters w
JOIN Bills b ON w.waiter_id = b.waiter_id
GROUP BY w.name, w.surname, b.bill_date
HAVING COUNT(b.bill_id) >= 3;

