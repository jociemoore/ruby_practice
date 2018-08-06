# ------------------------
# Short Long Short
# ------------------------

# def longest_str(str1, str2)
#   if str1.length < str2.length
#     shortest, longest = str1, str2 
#   else
#     shortest, longest = str2, str1 
#   end
#   return[shortest, longest]
# end

# def short_long_short(str1, str2)
#   shortest, longest = longest_str(str1,str2)
#   shortest + longest + shortest
# end

# short_long_short('abc', 'defgh') == "abcdefghabc"
# short_long_short('abcde', 'fgh') == "fghabcdefgh"
# short_long_short('', 'xyz') == "xyz"

# ------------------------
# What Century is That?
# ------------------------

# ENDINGS = {'0' => 'th', '1' => 'st', '2' => 'nd', '3' => 'rd', '4' => 'th', '5' => 'th', '6' => 'th', '7' => 'th', '8' => 'th', '9' => 'th'}

# def century(year)
#   year = year.to_s
#   num = year.chop.chop
#   num_i = num.to_i

#   if year.length < 3
#     century = '1st'
#   elsif (num[-2] == '1' && year[-1] == '0')
#     century = num + 'th'
#   elsif num[-2] == '1' || num[-1] == '9'
#     century = (num_i + 1).to_s + 'th'
#   elsif year[-1] == '0'
#     century = num + ENDINGS[num[-1]]
#   else
#     century = (num_i + 1).to_s + ENDINGS[(num[-1].to_i + 1).to_s]
#   end
# end

# century(2001) == '21st'
# century(1965) == '20th'
# century(256) == '3rd'
# century(5) == '1st'
# century(10103) == '102nd'
# century(1052) == '11th'
# century(1127) == '12th'
# century(11201) == '113th'

# ------------------------
# Leap Years (Part 1)
# ------------------------

# def leap_year?(year)
#   return false if year % 4 != 0
#   return true if year % 100 != 0
#   return true if year % 400 == 0 
#   false
# end

# input = ''
# loop do
#   print 'Please enter a year greater than 0: '
#   input = gets.chomp.to_i
#   break if input > 0
# end
# p leap_year?(input)



# Further Exploration
# def leap_year?(year)
#   if year % 100 == 0
#     false
#   elsif year % 400 == 0
#     true
#   else
#     year % 4 == 0
#   end
# end

# => The above code will fail to return true for any years divisible by 400 because the 1st condition of the if statment will always be met. 

# => You can reverse the order of the tests but only if you tweak the condition statements like I did above. It seems a tad more complext than the suggested solution. 

# => You can simplify the code I wrote above to the following:

# def leap_year?(year)
#   year % 4 == 0 && year % 100 != 0 || year % 100 == 0 && year % 400 == 0 
# end

# ------------------------
# Leap Years (Part 2)
# ------------------------

# def leap_year?(year)
#   if year >= 1752
#     year % 4 == 0 && year % 100 != 0 || year % 100 == 0 && year % 400 == 0 
#   else
#     year % 4 == 0
#   end
# end

# Further Exploration
# I went to www.history.com to learn more about the difference between the Julian and Gregorian calendars. Interesting stuff! Pope Gregory VIII introduced his calendar in order to make Easter fall closer to the spring equinox. Although the Gregorian calendar was an imporvement in this regard it still is not perfect. The Julian calendar was 11 days off the solar year, whereas the Gregorian is only 26 seconds off. In the year 4909 we will be off the solor year by 1 day. I wonder who will implement the next calendar adjustment. 

# ------------------------
# Multiples of 3 and 5
# ------------------------

# def multisum(number)
#   multiple = []
#   (1..number).each do |num|
#     multiple << num if num % 3 == 0 || num % 5 == 0
#   end
#   multiple.inject(:+)
# end

# p multisum(3) == 3
# p multisum(5) == 8
# p multisum(10) == 33
# p multisum(1000) == 234168

# ------------------------
# Running Totals
# ------------------------

# def running_total(array)
#   totals = []
#   sum = 0 
#   array.map do |num| 
#     sum += num
#     totals << sum
#   end
#   totals
# end

# Version 2
# def running_total(array)
#   sum = 0 
#   array.each_with_object([]) do |num, arr| 
#     arr << sum += num
#   end
# end

# p running_total([2, 5, 13]) == [2, 7, 20]
# p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
# p running_total([3]) == [3]
# p running_total([]) == []

# ------------------------
# Convert a String to a Number!
# ------------------------

# def string_to_integer(string)
#   digits_s = string.chars
#   digits_n = []
#   number = 0
#   digits_s.each do |digit|
#     (0..9).each { |num| digits_n << num if num.to_s == digit }
#   end
#   digits_n.reverse!
#   index = 0 
#   multiplier = 1
#   loop do
#     number += digits_n[index] * multiplier
#     break if index == digits_n.size - 1
#     index += 1
#     multiplier *= 10
#   end
#   number
# end

# p string_to_integer('4321')  == 4321
# p string_to_integer('570')  == 570



# ------------------------
# Convert a String to a Signed Number!
# ------------------------

# DIGITS = {
#   '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
#   '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
# }

# def string_to_integer(string)
#   digits = string.chars.map { |char| DIGITS[char] }

#   value = 0
#   digits.each { |digit| value = 10 * value + digit }
#   value
# end

# def string_to_signed_integer(string)
#   sign = ''
#   if string.start_with?('+') || string.start_with?('-')
#     digits = string.chars
#     sign = digits.shift 
#     string = digits.join
#   end
#   if sign == '-'
#     string_to_integer(string) * -1
#   else
#     string_to_integer(string) 
#   end
# end

# p string_to_signed_integer('4321') # == 4321
# p string_to_signed_integer('-570') # == -570
# p string_to_signed_integer('+100') # == 100

# Further Exploration

# def string_to_signed_integer(string)
#   if !string.start_with?('-') && !string.start_with?('+')
#     string.prepend(' ') 
#   end
#   number = string[1..-1]
#   get_integer = string_to_integer(number)
#   case string[0]
#   when '-' 
#     -get_integer
#   when '+' 
#     get_integer
#   else 
#     get_integer
#   end
# end

# p string_to_signed_integer('4321') # == 4321
# p string_to_signed_integer('-570') # == -570
# p string_to_signed_integer('+100') # == 100


# ------------------------
# Convert a Number to a String!
# ------------------------

# def number_size(integer)
#   divisor = 1
#   loop do
#     digit = integer / divisor
#     break if digit < 10
#     divisor *= 10 
#   end
#   divisor
# end

# def integer_to_string(integer)
#   digits = []
#   places = number_size(integer)
#   loop do
#     digit = integer / places
#     digits << digit
#     integer = integer - (digit * places)
#     break if places == 1
#     places /= 10 
#   end
#   digits.join
# end


# p integer_to_string(4321)  == '4321'
# p integer_to_string(0) == '0'
# p integer_to_string(5000)  == '5000'

# Further Exploration

# -----------------------------------
# Mutating String Methods without !
# => <<, [], clear, concat, insert, prepend, replace
# -----------------------------------
# Mutating Array Methods without !
# => <<, [], clear, concat, delete, delete_at, delete_if, insert, keep_if, pop, push, replace, shift, unshift
# -----------------------------------
# Mutating Hash Methods without !
# => delete, delete_if, keep_if, replace, shift

# => Could not find non-mutating methods with !



# ------------------------
# Convert a Signed Number to a String!
# ------------------------

def number_size(integer)
  divisor = 1
  loop do
    digit = integer / divisor
    break if digit < 10
    divisor *= 10 
  end
  divisor
end

def integer_to_string(integer)
  digits = []
  places = number_size(integer)
  loop do
    digit = integer / places
    digits << digit
    integer = integer - (digit * places)
    break if places == 1
    places /= 10 
  end
  digits.join
end


# def signed_integer_to_string(number)
#   abs_number = number.abs
#   if number < 0 
#     integer_to_string(abs_number).prepend('-')
#   elsif number > 0
#     integer_to_string(abs_number).prepend('+')
#   else 
#     integer_to_string(abs_number)
#   end 
# end


# p signed_integer_to_string(4321) == '+4321'
# p signed_integer_to_string(-123) == '-123'
# p signed_integer_to_string(0) == '0'


# Further Exploration

def signed_integer_to_string(number)
  get_string = integer_to_string(number.abs)
  case number <=> 0
  when -1 then "-#{get_string}"
  when +1 then "+#{get_string}"
  else         get_string
  end
end

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'
