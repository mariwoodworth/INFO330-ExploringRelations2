-- Which sales agent made the most in sales in 2010?

SELECT COUNT(t1.SupportRepId) AS SalesCount, t2.FirstName, t2.LastName
FROM customers AS t1
JOIN employees AS t2 ON t1.SupportRepId = t2.EmployeeId
JOIN invoices AS t3 ON t1.CustomerId = t3.CustomerId 
WHERE t3.InvoiceDate LIKE '2010%'
GROUP BY t1.SupportRepId
ORDER BY SalesCount DESC;

-- Jane Peacock made the most sales in 2010.