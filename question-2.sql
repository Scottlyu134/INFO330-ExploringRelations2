SELECT e.LastName, e.FirstName, i.*
FROM employees e
JOIN customers c ON e.EmployeeId = c.SupportRepId
JOIN invoices i ON c.CustomerId = i.CustomerId
WHERE Title = 'Sales Support Agent'
ORDER BY e.LastName, e.FirstName, i.InvoiceId;