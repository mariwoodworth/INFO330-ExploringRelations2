-- Show the sales agent's full name and invoices associated with each sales agent.

SELECT t3.firstname, t3.lastname,  t1.*
FROM invoices as t1
JOIN customers AS t2 ON t1.CustomerId = t2.CustomerId
JOIN employees AS t3 ON t2.SupportRepId = t3.EmployeeId;