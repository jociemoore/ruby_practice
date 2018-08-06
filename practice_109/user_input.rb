# ---------------------
# Repeat After Me
# ---------------------

# puts "Type anything you want:"
# input = gets.chomp
# puts input

# ---------------------
# Your Age in Months
# ---------------------

# puts '=> What is your age in years?'
# age_years = gets.to_i
# puts "#{age_years * 12} months old"

# ---------------------
# Print Something - Part 1
# ---------------------

# puts 'Do you want to print something? (y/n)'
# answer = gets.chomp.downcase
# puts 'something' if answer == 'y'

# ---------------------
# Print Something - Part 2
# ---------------------

# loop do
#   puts 'Do you want to print something? (y/n)'
#   answer = gets.chomp.downcase
#   if answer != 'y' && answer != 'n'
#     puts "Invalid input! Please enter y or n."
#     next
#   elsif answer == 'y'
#     puts 'something' 
#   end
#   break
# end


# ---------------------
# Launch School Printer - Part 1
# ---------------------

# input = nil 

# loop do
#   puts '=> How many output lines do you want? Enter a number >= 3:'
#   input = gets.chomp.to_i
#   break if input >= 3
#   puts "That's not enough lines."
# end

# input.times do 
#   puts "Launch School is the best!"
# end

# ---------------------
# Passwords
# ---------------------

# PASSWORD = 'password123'

# loop do
#   puts '=> Please enter your password:'
#   answer = gets.chomp
#   break if answer == PASSWORD
#   puts "=> Invalid password!"
# end
# puts 'Welcome!'



# ---------------------
# User Name and Password
# ---------------------

# USERNAME = 'user123'
# PASSWORD = 'password123'

# loop do
#   puts '=> Please enter your username:'
#   username_try = gets.chomp
#   puts '=> Please enter your password:'
#   password_try = gets.chomp  
#   break if username_try == USERNAME && password_try == PASSWORD
#   puts "=> Invalid username or password!"
# end
# puts 'Welcome!'


# ---------------------
# Dividing Numbers
# ---------------------

# num =  nil
# den = nil

# def valid_number?(number_string)
#   number_string.to_i.to_s == number_string
# end

# loop do 
#   puts '=> Please enter the numerator:'
#   num = gets.chomp
#   break if valid_number?(num) 
#   puts 'Not a valid number.'
# end

# loop do 
#   puts '=> Please enter the denominator:'
#   den = gets.chomp
#   break if valid_number?(den) && den != '0'
#   puts 'Not a valid number.'
# end

# puts "#{num.to_i} / #{den.to_i} is #{num.to_i/den.to_i}"


# ---------------------
# Launch School Printer - Part 2
# ---------------------

# loop do
#   number_of_lines = nil
#   loop do
#     puts '>> How many output lines do you want? Enter a number >= 3 (press q to quit):'
#     number_of_lines = gets.chomp
#     if number_of_lines.downcase == 'q' 
#       break
#     elsif number_of_lines.to_i >= 3
#       number_of_lines = number_of_lines.to_i
#       break
#     end
#     puts ">> That's not enough lines."
#   end
  
#   while number_of_lines.is_a?(Integer) && number_of_lines > 0
#     puts 'Launch School is the best!'
#     number_of_lines -= 1
#   end
#   break if number_of_lines.is_a?(String) && number_of_lines.downcase == 'q'
# end

# ---------------------
# Opposites Attract
# ---------------------

#input: 2 non-zero integers, 1 positive, 1 negative
#output: the sum
#loop asking for a number, asks again if not valid or are equal to 0
# if both are negative or positive, start over
#add the two numbers together

def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end


numbers = []
loop do 
  numbers = []
  x = ''
  loop do
    break if numbers.size == 2
    puts "=> Please enter a positive or negative number:"
    x = gets.chomp
    if valid_number?(x) == false
      puts '=> Invalid input.'
    else
      numbers << x 
    end
  end

  numbers.map! { |num| num.to_i }

  break if (numbers[0] > 0 && numbers[1] < 0) || (numbers[0] < 0 && numbers[1] > 0)
  puts '=> Sorry, one integer must be positive and one must be negative.'
  puts '=> Please start over.'
end

sum = numbers.inject(:+)
puts "#{numbers[0]} + #{numbers[1]} = #{sum}"

