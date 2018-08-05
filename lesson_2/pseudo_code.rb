1) A method that returns the sum of two integers.

-- Informal --

Get the two integers.
Add them together.
Print the result.

-- Formal --

START
GET integer one
SET num1 = integer one

GET integer two
SET num2 = integer two

SET result = num1 + num2

PRINT result

---------------------------------------------------------

2) A method that takes an array of strings, and returns a string that is all those strings concatenated together

-- Informal -- 

Get the array of string.
Iterate though the array adding each new string to the last.
Print the saved value.


-- Formal -- 
START
# Given an array of strings.

SET longest_word = empty string
SET a counter variable

WHILE counter <= array length
  SET longest_word = longest_word + the value in the counter position of the array.

  counter = counter + 1

PRINT longest_word   


---------------------------------------------------------

3) A method that takes an array of integers, and returns a new array with every other element

-- Informal --

Get the array of intergers.
Iterate through the array and save the values in odd positions in the array.
Print the saved value.

-- Formal -- 

START
# Given an array of integers called numbers.

SET numbers2 to a blank array
ITERATE with numbers.each 
  If index is odd
    Push the value to numbers2

PRINT numbers2    
