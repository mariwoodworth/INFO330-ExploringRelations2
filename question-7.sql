-- Find tracks (id, name, and composer) that have never been purchased (that is, they aren't part of a line item in an invoice).

SELECT tracks.trackid, tracks.name, tracks.Composer
FROM tracks
LEFT JOIN invoice_items ON invoice_items.trackid = tracks.TrackId
WHERE invoice_items.trackid IS NULL;