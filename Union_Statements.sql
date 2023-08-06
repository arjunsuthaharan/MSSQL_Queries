-- Union statement

SELECT * FROM tblCANCustomers
UNION
SELECT * FROM tblUSACustomers

-- Union all statement

SELECT * FROM tblCANCustomers
UNION ALL
SELECT * FROM tblUSACustomers