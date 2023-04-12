SELECT LastName, FirstName, InvoiceId, BillingCountry, InvoiceDate
From customers join invoices on customers.CustomerId = invoices.CustomerId
Where BillingCountry = 'Brazil';