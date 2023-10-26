-- ABS function returns absolute number of given input

SELECT ABS(-25) -- returns 25

-- CEILING and FLOOR functions return rounded up and down of given input respecitvely

SELECT CEILING(15.2) -- returns 16
SELECT CEILING (-15.2) -- returns -15

SELECT FLOOR(15.2) -- returns 15
SELECT FLOOR (-15.2) --returns -16

-- POWER function returns exponential of specified input to the power of second specified input

SELECT POWER(3,2) -- returns 3^2 = 9

-- SQUARE function returns squared value of given input

SELECT SQUARE(4) -- returns 4^2 = 16

-- SQRT function returns root of given number

SELECT SQRT(16) -- returns 16^(1/2) = 4

-- RAND returns a random float value between 0 and 1. (adding a numeric value sets a seed value for consistant rand)

SELECT RAND() -- returns DIFFERENT random value

SELECT RAND(1) -- returns SAME random value

-- Using RAND and FLOOR functions to generate random value between 0-100

SELECT FLOOR(RAND() * 100)

-- USING WHILE loop to generate and print 10 random numbers between 0-100

DECLARE @counter INT
SET @counter = 1
WHILE (@counter <= 10)
BEGIN
	PRINT FLOOR(RAND() * 100)
	SET @counter = @counter +1
END

-- ROUND function used to round value to specified decimal length

SELECT ROUND(812.337, 2)  -- returns 812.340
SELECT ROUND(812.337, 2, 1) -- returns 812.330, truncates anything after 2 decimals to the right of the decimal point
SELECT ROUND(812.337, -2) -- returns 800.000, rounds anything after 2 decimals to the left of the decimal point