-- Provide a query that includes the purchased track name AND artist name with each invoice line item.

SELECT t1.*, t2.name, t4.name
FROM invoice_items AS t1
JOIN tracks AS t2 ON t2.TrackId = t1.TrackId
JOIN albums AS t3 ON t2.AlbumId = t3.AlbumId
JOIN artists AS t4 ON t3.ArtistId = t4.ArtistId;