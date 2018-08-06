# -----------------------
# Runaway Loop
# -----------------------

# loop do
#   puts 'Just keep printing...'
#   break
# end

# -----------------------
# Loopception
# -----------------------

# loop do
#   puts 'This is the outer loop.'

#   loop do
#     puts 'This is the inner loop.'
#     break
#   end
#   break
# end

# puts 'This is outside all loops.'

# -----------------------
# Control the Loop - Part A
# -----------------------

# iterations = 1

# loop do
#   puts "Number of iterations = #{iterations}"
#   iterations += 1
#   break if iterations > 5
# end


# -----------------------
# Control the Loop - Part B
# -----------------------

# iterations = 1

# loop do
#   puts "Number of iterations = #{iterations}"
#   break if iterations >= 5
#   iterations += 1
# end



# -----------------------
# Loop on Command
# -----------------------

# loop do
#   puts 'Should I stop looping?'
#   answer = gets.chomp
#   break if answer.downcase == 'yes'
# end

# -----------------------
# Say Hello
# -----------------------

# say_hello = true
# counter = 1

# while say_hello
#   puts 'Hello!'
#   counter += 1
#   say_hello = false if counter > 5
# end

# -----------------------
# Print While
# -----------------------

# numbers = []

# while numbers.size < 5
#   numbers << rand(100)
# end

# puts numbers

# -----------------------
# Count Up
# -----------------------

# count = 1 

# until count > 10
#   puts count
#   count += 1
# end

# -----------------------
# Print Until
# -----------------------

# numbers = [7, 9, 13, 25, 18]
# count = 0

# until count == numbers.size
#   puts numbers[count]
#   count += 1 
# end

# -----------------------
# That's Odd
# ----------------------- 

# for i in 1..100
#   if !(i % 2 == 0)
#     puts i
#   end
# end

# -----------------------
# Greet Your Friends
# ----------------------- 

friends = ['Sarah', 'John', 'Hannah', 'Dave']

for person in friends 
  puts "Hello, #{person}!"
end
