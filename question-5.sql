-- What was the most purchased track of 2013?

SELECT t3.Name, SUM(t1.quantity)
FROM invoice_items AS t1 
JOIN invoices AS t2 ON t1.invoiceid = t2.invoiceid
JOIN tracks AS t3 ON t1.trackid = t3.trackid
WHERE InvoiceDate LIKE '2013%'
GROUP BY t1.trackid
ORDER BY SUM(t1.quantity) DESC;

-- Black Diamond.