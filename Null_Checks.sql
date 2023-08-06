-- Replacing NULL using ISNULL()

SELECT ISNULL(NULL, 'No Manager')

-- Self join using ISNULL()

SELECT E.name as Employee, ISNULL(M.name, 'No Manager') AS Manager
FROM tblEmployee E
LEFT JOIN tblEmployee M
ON E.managerID = M.employeeID

-- Replacing NULL using COALESCE()

SELECT COALESCE(NULL, 'No Manager') AS Manager

-- Self join using COALESCE()

SELECT E.name as Employee, COALESCE(M.name, 'No Manager') AS Manager
FROM tblEmployee E
LEFT JOIN tblEmployee M
ON E.managerID = M.employeeID