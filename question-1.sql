-- Show the customer's full name, Invoice ID, Date of the invoice and billing country of 
-- customers who are from Brazil.

SELECT t1.FirstName, t1.LastName, t2.InvoiceId, t2.InvoiceDate, t2.BillingCountry
FROM customers AS t1
JOIN invoices AS t2 ON t1.CustomerId = t2.CustomerId
WHERE t1.country = 'Brazil'
GROUP BY t2.CustomerId;