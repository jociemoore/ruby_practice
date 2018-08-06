# -------------------
# Repeat Yourself
# -------------------

# def repeat(string, integer)
#   integer.times do 
#     puts string
#   end
# end

# repeat('Hello World', 5)

# -------------------
# Odd
# -------------------

# def is_odd?(num)
#   if (num.is_a?(Float) && num == num.to_i) || num.is_a?(Integer)
#     num.abs % 2 != 0
#   else
#     false
#   end 
# end


# puts is_odd?(2.0)    # => false
# puts is_odd?(5)    # => true
# puts is_odd?(-17)  # => true
# puts is_odd?(-8)   # => false
# puts is_odd?(7.1)  # => false
# puts is_odd?(-5.0) # => true


# -------------------
# List of Digits
# -------------------

# def digit_list(num)
#   digits = num.to_s.split('')
#   digits.map! { |digit| digit.to_i }
# end

# puts digit_list(12345) == [1, 2, 3, 4, 5]
# puts digit_list(7) == [7]
# puts digit_list(375290) == [3, 7, 5, 2, 9, 0]
# puts digit_list(444) == [4, 4, 4]


# -------------------
# How Many?
# -------------------

# def count_occurrences(list)
#   occurrences = {}
#   list.each do |word|
#     if !occurrences.include?(word)
#       frequency = list.count(word)
#       occurrences[word] = frequency
#     end
#   end
#   occurrences.each do |type, count|
#     puts "#{type} => #{count}"
#   end
# end

# vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']

# count_occurrences(vehicles) 

# -------------------
# Reverse It (Part 1)
# -------------------

# def reverse_sentence(string)
#   string.split(' ').reverse!.join(' ')
# end

# puts reverse_sentence('') == ''
# puts reverse_sentence('Hello World') == 'World Hello'
# puts reverse_sentence('Reverse these words') == 'words these Reverse'

# -------------------
# Reverse It (Part 2)
# -------------------

# def reverse_words(string)
#   words = string.split(' ')
#   words.each do |word| 
#     if word.size >= 5 
#       word.reverse! 
#     end
#     word
#   end
#   words.join(' ')
# end

# puts reverse_words('Professional')          # => lanoisseforP
# puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
# puts reverse_words('Launch School')         # => hcnuaL loohcS

# -------------------
# Stringy Strings
# -------------------

# def stringy(num)
#   series = []
#   num.times do |n|
#     series << 0 if n.odd?
#     series << 1 if n.even?
#   end
#   p series.join
# end

# puts stringy(0) == '101010'
# puts stringy(6) == '101010'
# puts stringy(9) == '101010101'
# puts stringy(4) == '1010'
# puts stringy(7) == '1010101'

# # Further Exploration
# def stringy(num, start_with = 1)
#   series = []
#   series << start_with
#   (num-1).times do |n|
#     if series.last == 1
#       series << 0 
#     else
#       series << 1
#     end
#   end
#   p series.join
# end

# puts stringy(6, 0) == '101010'


# -------------------
# Array Average
# -------------------

# def average(array)
#   (array.inject(:+) / array.size).to_f
# end

# puts average([1, 5, 87, 45, 8, 8]) == 25
# puts average([9, 47, 23, 95, 16, 52]) == 40

# -------------------
# Sum of Digits
# -------------------

# def sum(number)
#   digits = number.to_s.split('')
#   digits.map! do |digit| 
#     digit.to_i
#   end
#   digits.reduce(:+)
# end

# puts sum(23) == 5
# puts sum(496) == 19
# puts sum(123_456_789) == 45

# -------------------
# What's my Bonus?
# -------------------

def calculate_bonus(salary, bonus)
 bonus ? salary / 2 : 0
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000

