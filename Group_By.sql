-- GROUP BY keyword for grouping summation of salary

SELECT city, SUM(salary) as TotalSalary
FROM tblEmployee
GROUP BY city

-- GROUP BY multiple columns

SELECT city, gender, SUM(salary) as TotalSalary
FROM tblEmployee
GROUP BY city, gender

-- Filtering groups using WHERE keyword

SELECT gender, city, SUM(salary) as TotalSalary, COUNT(ID) as TotalEmployees
FROM tblEmployee
WHERE gender = 'Male'
GROUP BY gender, city

-- Filtering groups using HAVING keyword

SELECT gender, city, SUM(salary) as TotalSalary, COUNT(ID) as TotalEmployees
FROM tblEmployee
GROUP BY gender, city
HAVING gender = 'male'
