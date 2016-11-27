# -----------------------
# New Pet
# -----------------------

# pets = ['cat', 'dog', 'fish', 'lizard']

# my_pet = pets[2]
# puts "I have a pet #{my_pet}!"

# -----------------------
# More Than One
# -----------------------

# pets = ['cat', 'dog', 'fish', 'lizard']

# my_pets = pets.select { |pet| pet == 'fish' || pet == 'lizard' }
# puts "I have a pet #{my_pets[0]} and a pet #{my_pets[1]}!"

# -----------------------
# Free the Lizard
# -----------------------

# pets = ['cat', 'dog', 'fish', 'lizard']
# my_pets = pets[2..3]
# my_pets.pop
# puts "I have a pet #{my_pets[0]}!"

# -----------------------
# One Isn't Enough
# -----------------------

# pets = ['cat', 'dog', 'fish', 'lizard']
# my_pets = pets[2..3]
# my_pets.pop
# my_pets << pets[1]
# puts "I have a pet #{my_pets[0]} and a pet #{my_pets[1]}!"


# -----------------------
# What Color Are You?
# -----------------------

# colors = ['red', 'yellow', 'purple', 'green']

# colors.each { |color| puts "I'm the color #{color}!" }

# -----------------------
# Doubled
# -----------------------

# numbers = [1, 2, 3, 4, 5]

# p doubled_numbers = numbers.map { |num| num * 2 }

# -----------------------
# Divisble by Three
# -----------------------

# numbers = [5, 9, 21, 26, 39]

# divible_by_three = numbers.select { |num| (num % 3) == 0 }
# p divible_by_three

# -----------------------
# Favorite Number (Part 1)
# -----------------------

# [['Dave', 7], ['Miranda', 3], ['Jason', 11]]

# -----------------------
# Favorite Number (Part 2)
# -----------------------

# favorites = [['Dave', 7], ['Miranda', 3], ['Jason', 11]]
# flat_favorites = favorites.flatten!
# p flat_favorites
# p favorites

# -----------------------
# Are We The Same?
# -----------------------

array1 = [1, 5, 9]
array2 = [1, 9, 5]

array1 == array2 ? puts('true') : puts('false')


