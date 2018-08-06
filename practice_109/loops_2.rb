# ----------------------------
# Even or Odd?
# ----------------------------

# count = 1

# loop do
#   if count.even?
#     puts "#{count} is even!"
#   else
#     puts "#{count} is odd!"
#   end
#   break if count == 5
#   count += 1
# end


# ----------------------------
# Catch the Number
# ----------------------------

# loop do
#   number = rand(100)
#   puts number
#   break if (1...10).cover?(number)
# end

# ----------------------------
# Conditional Loop
# ----------------------------


# process_the_loop = [true, false].sample

# if process_the_loop
#   loop do
#     puts "The loop was processed!" 
#     break
#   end
# else 
#   puts "The loop WASN'T processed!"
# end



# ----------------------------
# Get the Sum
# ----------------------------

# loop do
#   puts 'What does 2 + 2 equal?'
#   answer = gets.chomp.to_i
#   if answer == 4 
#     puts "That's correct!"
#     break
#   else
#     puts "Wrong answer. Try again!"
#   end
# end

# ----------------------------
# Insert Numbers
# ----------------------------

# numbers = []

# loop do
#   puts 'Enter any number:'
#   input = gets.chomp.to_i
#   numbers << input
#   break if numbers.size == 5
# end
# puts numbers

# ----------------------------
# Empty the Array
# ----------------------------

# names = ['Sally', 'Joe', 'Lisa', 'Henry']

# loop do
#   puts names.pop
#   break if names.empty?
# end

# ----------------------------
# Stop Counting
# ----------------------------

# 5.times do |index|
#   puts index
#   break if index == 2
# end

# 5.times do |index|
#   puts index
#   break if index == 4
# end

# # => prints 5 values

# 5.times do |index|
#   puts index
#   break if index < 7
# end

# => prints 1 value

# ----------------------------
# Only Even
# ----------------------------

# number = 0

# until number == 10
#   number += 1
#   if number.odd?
#     next
#   end
#   puts number
# end

# => 'next' goes after the incrementation of number because that needs to happen on each iteration. 'next' must go before puts because we don't want the number to be printed if it is odd -- 'next' moves on to the subsequent iteration without running any lines of code that come afterwards.


# ----------------------------
# First to Five
# ----------------------------

# number_a = 0
# number_b = 0

# loop do
#   number_a += rand(2)
#   number_b += rand(2)
#   next unless number_a == 5 || number_b == 5 
#   puts "5 was reached!"
#   break 
# end

# ----------------------------
# First to Five - If/Else Statement
# ----------------------------

# number_a = 0
# number_b = 0

# loop do
#   number_a += rand(2)
#   number_b += rand(2)
#   if number_a == 5 || number_b == 5 
#     puts "5 was reached!"
#     break
#   end
# end


# ----------------------------
# Greeting
# ----------------------------


def greeting(count)
  puts 'Hello!'
  count -= 1
end

number_of_greetings = 2

while number_of_greetings > 0
  number_of_greetings = greeting(number_of_greetings)
end