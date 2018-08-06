# -----------------------
# Create a String
# -----------------------

# str = String.new

# -----------------------
# Quote Confusion
# -----------------------

# puts "It's now 12 o'clock."

# Further Exploration

# puts %q(He said, "It's now 12 o'clock".)
# puts %Q(He said, "It's now 12 o'clock".)

# -----------------------
# Ignoring Case
# -----------------------

# name = 'Roger'

# str1 = 'RoGer'
# str2 = 'DAVE'

# puts 'true' if name.downcase == str1.downcase
# puts 'false' if name.downcase != str1.downcase

# puts 'true' if name.downcase == str2.downcase
# puts 'false' if name.downcase != str2.downcase


# -----------------------
# Dynamic String
# -----------------------

# name = 'Elizabeth'

# puts "Hello, #{name}!"


# -----------------------
# Combining Names
# -----------------------

# first_name = 'John'
# last_name = 'Doe'

# # Further Exploration
# puts full_name = first_name + ' ' + last_name
# puts "#{first_name} #{last_name}"
# first_name << ' '
# puts first_name.concat(last_name)

# -----------------------
# Tricky Formatting 
# -----------------------

# state = 'tExAs'
# state = state.capitalize!
# puts state


# -----------------------
# Goodbye, not Hello
# -----------------------

# greeting = 'Hello!'
# greeting.replace('Goodbye!')
# puts greeting

# -----------------------
# Print the Alphabet
# -----------------------

# alphabet = 'abcdefghijklmnopqrstuvwxyz'
# letters = alphabet.split('')
# letters.each { |letter| puts letter}


# -----------------------
# Pluralize
# -----------------------

# words = 'car human elephant airplane'
# plural_words = words.split(/\W+/).map { |word| word + 's'}
# puts plural_words


# -----------------------
# Are You There?
# -----------------------

# colors = 'blue pink yellow orange'

# puts colors.include?('yellow')
# puts colors.include?('purple')

# Further Exploration
colors = 'blue boredom yellow'

puts colors.include?('red')

# => true; because boredom includes red. If we wanted to check it colors include the color red we should write colors.include?(' red ')



