-- What was the most purchased track of 2013?
SELECT tracks.Name, SUM(invoice_items.Quantity) AS Totalpurchase
FROM invoice_items
JOIN invoices ON invoice_items.InvoiceId = invoices.InvoiceId
JOIN tracks ON invoice_items.TrackId = tracks.TrackId
WHERE invoices.InvoiceDate BETWEEN '2013-01-01' AND '2013-12-31'
GROUP BY invoice_items.TrackId
ORDER BY Totalpurchase DESC
LIMIT 1;