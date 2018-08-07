def multiply_by_five(n)
  n * 5
end

puts "Hello! Which number would you like to multiply by 5?"
number = gets.chomp

puts "The result is #{multiply_by_five(number)}!"

# When the user inputs the number 10, you'd expect the output to be "The result is 50!". This does not occur, however, because on line 6 the chomp method returns a string, which is assigned to the number variable. When the multiply_by_five method is called on line 8, the number variable is passed in as an argument and assignd to the local variable n. The * method is called on the "10" string assigned to n and returns a new string with 5 copies of "10". "1010101010" is the last line of the method and therefore the method's return value. Therefore, the output of line 8 is "The result is 1010101010!".