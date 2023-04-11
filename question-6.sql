-- Find tracks (id, name and composer) that are part of a line in an invoice.

SELECT tracks.TrackId, tracks.name, tracks.Composer
FROM invoice_items
JOIN tracks ON invoice_items.TrackId = tracks.TrackId;