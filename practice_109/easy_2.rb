# -------------------------
# How Old is Teddy?
# -------------------------

# def teddy_age(name='Teddy')
#   age = rand(20..200)
#   "#{name} is #{age} years old!"
# end

# p teddy_age('Sally')
# p teddy_age

# -------------------------
# How bug is the room?
# -------------------------

# def area(length, width)
#   sq_meters = length.to_i * width.to_i
#   sq_feet = sq_meters * 10.7639
#   return sq_meters, sq_feet
# end

# puts "=> Enter the length of the room in meters:"
# length = gets.chomp
# puts "=> Enter the width of the room in meters:"
# width = gets.chomp 
# area_meters, area_feet = area(length, width)
# puts "=> The aread of the room is #{area_meters} square meters (#{area_feet} square feet)."

# # Further Exploration

# CONVERSION_INCHES = 12
# CONVERSION_CENTIMETERS = 30.48

# def area(length, width)
#   sq_feet = length.to_i * width.to_i
#   sq_inches = sq_feet * CONVERSION_INCHES
#   sq_centimeters = sq_feet * CONVERSION_CENTIMETERS
#   return sq_feet, sq_inches, sq_centimeters 
# end

# puts "=> Enter the length of the room in feet:"
# length = gets.chomp
# puts "=> Enter the width of the room in feet:"
# width = gets.chomp 
# area_feet, area_inches, area_centimeters = area(length, width)
# puts "=> The area of the room is #{area_feet} square feet (#{area_inches} square inches or #{area_centimeters} square centimeters)."

# -------------------------
# Tip Calculator 
# -------------------------

# puts 'What is the bill total?'
# bill = gets.chomp.to_f
# puts 'What is the tip percentage?'
# tip = gets.chomp.to_f

# tip_amount = bill * (tip * 0.01)
# total = bill + tip_amount


# puts "The tip is $#{'%.2f' % tip_amount}."
# puts "The total is $#{'%.2f' % total}."

# -------------------------
# When will I retire?
# -------------------------

# puts "What's your age?"
# age = gets.chomp.to_i
# puts 'At what age would you like to retire?'
# goal = gets.chomp.to_i

# year = Time.now.year
# years_left = goal - age
# year_retire = year + years_left

# puts "It's #{year}. You will reture in #{year_retire}."
# puts "You have only #{years_left} of work to go!"

# -------------------------
# Greeting a User
# -------------------------

# puts "What is your name?"
# name = gets.chomp

# if name.include?('!')
#   name.delete!('!')
#   puts "HELLO #{name.upcase}. WHY ARE WE SCREAMING?"
# else
#   puts "Hello #{name}."
# end

# Further Exploration
# print 'What is your name? '
# name = gets.chomp!

# if name[-1] == '!'
#   puts "HELLO #{name.chop!.upcase}. WHY ARE WE SCREAMING?"
# else
#   puts "Hello #{name}."
# end

# -------------------------
# Odd Numbers
# -------------------------

# (1..99).each { |num| puts num if num.odd?}

# Further Exploration

# 1.upto(99) { |i| puts i if i % 2 != 0}

# -------------------------
# Even Numbers
# -------------------------

# (1..99).each { |num| puts num if num.even?}

# -------------------------
# Sum or Product of Consecutive Integers
# -------------------------

# def product(num)
#   product = 1
#   (1..num).each { |i| product = product * i }
#   product
# end

# def sum(num)
#   sum = 0
#   (1..num).each { |i| sum = sum + i }
#   sum
# end

# loop do
#   number = ''
#   loop do
#     puts 'Please enter an integer greater than 0:'
#     number = gets.chomp.to_i
#     break unless !number.is_a?(Integer) || number <= 0 
#   end
#   puts "Enter 's' to compute the sum, 'p' to compute the product."
#   operation = gets.chomp
  
#   case operation
#   when 's' then result = sum(number)
#   when 'p' then result = product(number)
#   else result = 'invalid' 
#   end
  
#   puts "The sum of the integers between 1 and #{number} is #{result}."
#   break unless result == 'invalid'
# end

# Further Exploration

# def product(num)
#   product = (1..num).to_a.inject(:*)
# end

# def sum(num)
#   sum = (1..num).to_a.inject(:+)
# end

# loop do
#   number = ''
#   loop do
#     puts 'Please enter an integer greater than 0:'
#     number = gets.chomp.to_i
#     break unless !number.is_a?(Integer) || number <= 0 
#   end
#   puts "Enter 's' to compute the sum, 'p' to compute the product."
#   operation = gets.chomp
  
#   case operation
#   when 's' then result = sum(number)
#   when 'p' then result = product(number)
#   else result = 'invalid' 
#   end
  
#   puts "The sum of the integers between 1 and #{number} is #{result}."
#   break unless result == 'invalid'
# end

# -------------------------
# String Assignment
# -------------------------

# name = 'Bob'
# save_name = name
# name = 'Alice'
# puts name, save_name

# # => Alice, Bob

# name = 'Bob'
# save_name = name
# name.upcase!
# puts name, save_name

# => BOB, BOB; both print 'BOB' because name points to the object 'Bob', save_name points to the same object 'Bob', the object is mutated by upcase!, and therefore both variable point to object 'Bob' change to 'BOB'.

# -------------------------
# Mutation
# -------------------------

array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value.clone }
array1.each { |value| value.upcase! if value.start_with?('C') }
puts array2

# => ['Moe', 'Larry', 'CURLY', 'Shemp', 'Harpo', 'CHICO', 'Groucho', 'Zeppo']; the elements pushed to array2 are pointing to the same object that exist in array1 so that when the elements in array1 get mutated in place, the change is visible in array2 as well.

# => to avoid this you would have to make a duplication of the array by making a clone of the array1 values as you push them to array2.
