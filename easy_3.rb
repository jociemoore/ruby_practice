# ------------------------
# Searching String
# ------------------------

# def get_number(which_num)
#   x = nil
#   loop do
#     puts "Enter the #{which_num} number:"
#     x = gets.chomp
#     break unless x != x.to_i.to_s
#   end
#   x.to_i
# end

# numbers = []
# numbers << get_number('1st')
# numbers << get_number('2nd')
# numbers << get_number('3rd')
# numbers << get_number('4th')
# numbers << get_number('5th')
# last_num = get_number('6th')

# if numbers.include?(last_num)
#   puts "The number #{last_num} appears in #{numbers}."
# else
#   puts "The number #{last_num} does not appear in #{numbers}."
# end

# ------------------------
# Arithmetic Integer
# ------------------------

# puts "Enter the first number:"
# num1 = gets.chomp.to_i
# puts "Enter the second number:"
# num2 = gets.chomp.to_i

# puts "#{num1} + #{num2} = #{num1 + num2}" 
# puts "#{num1} - #{num2} = #{num1 - num2}" 
# puts "#{num1} * #{num2} = #{num1 * num2}" 
# puts "#{num1} / #{num2} = #{num1 / num2}" 
# puts "#{num1} % #{num2} = #{num1 % num2}" 
# puts "#{num1} ** #{num2} = #{num1 ** num2}" 

# => To take into account the edge case of getting a second number equal to zero, we could either validate the inputs and request another input if the user types '0' or we could provide an exception that prints a response whenever a number is divided by zero.

# => If we wanted to use floats instead of integers, we would convert the string the user inputs to_f. 

# ------------------------
# Counting the Number of Characters
# ------------------------

# print "Please write a word or multiple words: "
# input = gets.chomp

# chars = input.split('')
# chars.delete_if { |char| char == ' '}
# total_chars = chars.size

# puts "There are #{total_chars} characters in '#{input}'."

# ------------------------
# Multiplying Two Numbers
# ------------------------

# def multiply(num1, num2)
#   num1 * num2
# end

# multiply(5, 3)

# => Further Exploration
# => if the first argument is an array, the multiply method returns a larger array with the argument array repeated the second number of times.

# ------------------------
# Squaring an Argument
# ------------------------

# def multiply(num1, num2)
#   num1 * num2
# end

# def square(number)
#   multiply(number, number)
# end

# # square(5) == 25
# # square(-8) == 64

# # Further Exploration
# def power(number, exponent)
#   result = number
#   return result = 1 if exponent == 0
#   (exponent-1).times do 
#    result = multiply(result, number)
#   end
#   result
# end

# power(5,3)

# ------------------------
# Exclusive Or
# ------------------------

# def xor?(a,b)
#   (a && !b) || (!a && b) ? true : false
# end

# p xor?(5.even?, 4.even?) == true
# p xor?(5.odd?, 4.odd?) == true
# p xor?(5.odd?, 4.even?) == false
# p xor?(5.even?, 4.odd?) == false

# Further Exploration
# => The xor method I wrote above does as it uses && and ||. The xor operator on the otherhand does not perform short-circuit evaluation because both operands need to be evaluated in order to determine only one of them is true.

# ------------------------
# Odd Lists
# ------------------------

# def oddities(array)
#   new_array = []
#   array.each_with_index { |elem, index| new_array << elem if index.even?}
#   new_array
# end

# # Version 2
# def oddities(array)
#   new_array = []
#   array.select{ |elem| new_array << elem if array.index(elem) % 2 == 0 }
#   p new_array
# end

# # Version 3
# def oddities(array)
#   new_array = array.keep_if { |elem| array.index(elem) % 2 == 0}
#   new_array
# end

# oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
# oddities(['abc', 'def']) == ['abc']
# oddities([123]) == [123]
# oddities([]) == []

# Further Exploration
# def oddities2(array)
#   new_array = []
#   array.each_with_index { |elem, index| new_array << elem if index.odd?}
#   new_array
# end

# p oddities2([2, 3, 4, 5, 6]) == [2, 4, 6]
# p oddities2(['abc', 'def']) == ['abc']

# ------------------------
# Palindromic Strings (Part 1)
# ------------------------

# def palindrome?(word)
#   word == word.reverse
# end

# palindrome?('madam') == true
# palindrome?('Madam') == false          # (case matters)
# palindrome?("madam i'm adam") == false # (all characters matter)
# palindrome?('356653') == true

# Further Exploration
# palindrome?([1,2,3,2,1]) == true

# ------------------------
# Palindromic Strings (Part 2)
# ------------------------

# def real_palindrome?(word)
#   word.delete!(',') if word.include?(",")
#   word.delete!("'") if word.include?("'")
#   word.delete!(' ') if word.include?(' ')
#   word.downcase == word.reverse.downcase
# end

# p real_palindrome?('madam') == true
# p real_palindrome?('Madam') == true           # (case does not matter)
# p real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
# p real_palindrome?('356653') == true
# p real_palindrome?('356a653') == true
# p real_palindrome?('123ab321') == false

# ------------------------
# Palindromic Numbers
# ------------------------

NUMBER = '001121100'

def palindromic_number?(num)
  num.to_s == num.to_s.reverse
end

# p palindromic_number?(34543) == true
# p palindromic_number?(123210) == false
# p palindromic_number?(22) == true
# p palindromic_number?(5) == true
p palindromic_number?(NUMBER) # == true


# => No. I think the numbers are switchin to a different character codes. Make the number a constant.


