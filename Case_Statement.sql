-- Case statement for checking null values

SELECT E.name as Employee,
CASE WHEN M.name IS NULL THEN 'No Manager' ELSE M.name END AS Manager
FROM tblEmployee E
LEFT JOIN tblEmployee M
ON E.managerID = M.employeeID
