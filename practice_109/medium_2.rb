# ------------------------
# Longest Sentence
# ------------------------

# require 'yaml'

# count = [] 
# filename = 'pg84.txt'
# read_string = File.read filename
# read_array = YAML::load read_string

# read_array = read_array.gsub('!', '.').gsub('?','.').split('.')
# read_array.each_with_index do |sentence, index|
#   words = sentence.split
#   count << [words.size, index]
# end

# p read_array[count.sort!.last[1]].strip
# puts "#{count.last[0]} words"



# Further Exploration:
# -------------------

# => To find the longest paragraph, I would split the text by \n instead of . ! ?. To find the longest word, you can use the split method without an argument as it will default to splitting at whitespace (' '). In this case, you wouldn't need the second split method within the loop.

# ------------------------
# Now I Know My ABCs
# ------------------------

# def block_word?(string)
#   spelling_blocks = [['B', 'O'], ['X','K'], ['D','Q'], ['C', 'P'], ['N','A'], ['G','T'], ['R','E'], ['F','S'],['J','W'], ['H', 'U'], ['V','I'], ['L','Y'], ['Z','M']]
#   letters = string.split('')
#   letters.each do |letter| 
#     binding.pry
#     match = []
#     spelling_blocks.each do |block|
#       match << block if letter.upcase == block[0] || letter.upcase == block[1]
#     end
#     match.empty? ? (return false) : spelling_blocks.delete(match[0]) 
#   end
#   true
# end


# Test Cases:
# -----------

# p block_word?('BATCH') #== true
# p block_word?('BUTCH') #== false
# p block_word?('jest') #== true

# Further Exploration:
# -------------------

# I used an array of arrays to organize my blocks and I used the complarison operator and the delete method to check the letters. No two letters in the same block would ever be found because the block is deleted if there is one match. 


# ------------------------
# Lettercase Percentage Ratio
# ------------------------

# def lowercase(string, size)
#   count = 0 
#   string.each_char do |char| 
#     count += 1 if char.match(/[a-z]/)
#   end
#   (count / size) * 100
# end

# def uppercase(string, size)
#   count = 0 
#   string.each_char do |char| 
#     count += 1 if char.match(/[A-Z]/)
#   end
#   (count / size) * 100
# end

# def neither(string, size)
#   count = 0 
#   string.each_char do |char| 
#     count += 1 if char.match(/[^a-zA-Z]/)
#   end
#   (count / size) * 100
# end

# def letter_percentages(string)
#   percentages = {}
#   size = string.size.to_f
#   percentages[:lowercase] = lowercase(string, size)
#   percentages[:uppercase] = uppercase(string, size)
#   percentages[:neither] = neither(string, size)
#   percentages
# end



# Test Cases:
# -----------

# p letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
# p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
# p letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }

# ------------------------
# Matching Parentheses?
# ------------------------

# def balanced?(string)
#   return false if string.count('(') != string.count(')')
#   if string.count('(') > 0 && string.count(')') > 0
#     return false if string.index(')') < string.index('(')
#     return false if (string.reverse).index('(') < string.index(')')
#   end
#   balance = 0 
#   string.chars.each do |char|
#     balance += 1 if char == '(' 
#     balance -= 1 if char == ')' 
#   end
#   balance == 0 ? true : false
# end


# Test Cases:
# ----------
# p balanced?('What (is) this?') == true
# p balanced?('What is) this?') == false
# p balanced?('What (is this?') == false
# p balanced?('((What) (is this))?') == true
# p balanced?('((What)) (is this))?') == false
# p balanced?('Hey!') == true
# p balanced?(')Hey!(') == false
# p balanced?('What ((is))) up(') == false


# Further Exploration:
# -------------------

# def balanced?(string)
#   parens = 0
#   square = 0
#   curly = 0 
#   single = 0 
#   double = 0
#   string.each_char do |char|
#     parens += 1 if char == '('
#     parens -= 1 if char == ')'
#     square += 1 if char == '['
#     square -= 1 if char == ']'
#     curly += 1 if char == '{'
#     curly -= 1 if char == '}'
#     single += 1 if char.match(/[\']/)
#     double += 1 if char.match(/[\"]/)
#     break if parens < 0 || square < 0 || curly < 0 
#   end

#   return true if parens.zero? && square.zero? && curly.zero? && single.even? && double.even?
#   false
# end

# # Test Cases:
# #-----------
# p balanced?('What "is" this? What [is] this?') #== true
# p balanced?('What {is} "this?') #== false

# ------------------------
# Triangle Sides
# ------------------------


# def triangle(side1, side2, side3)
#   all_sides = [side1, side2, side3].sort!
#   case
#   when side1.zero? || side2.zero? || side3.zero?, all_sides[0] + all_sides[1] < all_sides[2] then :invalid
#   when all_sides[0] == all_sides[1] && all_sides[1] == all_sides[2] then :equilateral
#   when all_sides[0] == all_sides[1] || all_sides[1] == all_sides[2] then :isosceles
#   else :scalene
#   end
# end

# # Test Cases:
# # -----------

# p triangle(3, 3, 3) == :equilateral
# p triangle(3, 3, 1.5) == :isosceles
# p triangle(3, 4, 5) == :scalene
# p triangle(0, 3, 3) == :invalid
# p triangle(3, 1, 1) == :invalid


# ------------------------
# Tri-Angles
# ------------------------

# def triangle(angle1, angle2, angle3)
#   all_angles = [angle1, angle2, angle3].sort!
#   case
#   when angle1.zero? || angle2.zero? || angle3.zero?, all_angles.reduce(:+) != 180
#     :invalid
#   when all_angles[0] < 90 && all_angles[1] < 90 && all_angles[2] < 90
#     :acute
#   when all_angles[0] > 90 || all_angles[1] > 90 || all_angles[2] > 90
#     :obtuse
#   else 
#     :right
#   end
# end

# # Test Cases:
# # -----------

# p triangle(60, 70, 50) == :acute
# p triangle(30, 90, 60) == :right
# p triangle(120, 50, 10) == :obtuse
# p triangle(0, 90, 90) == :invalid
# p triangle(50, 50, 50) == :invalid


# ------------------------
# Unlucky Days
# ------------------------

#input: integer --> year
#output: integer --> number of friday 13ths
#rules: 
# => after 1752, gregorian calendar forevermore 
#happy path:
# => initialize variable total = 0
# => iterate through all dates in the year
# => check if friday? and the 13th
# => if yes, increment total by 1
#algorithm --> iterate thru dates
# => create new date
# => loop do
# => check if date if friday && the 13
# => adjust total if necessary
# => store the next_day in date
#data structure?
#abstraction?

# require 'date'

# def friday_13th?(year)
#   total = 0
#   date = Date.new(year)
#   loop do
#     break if date.year == year + 1
#     total += 1 if date.friday? && date.day == 13
#     date = date.next_day
#   end
#   total
# end

# p friday_13th?(2015) == 3
# p friday_13th?(1986) == 1
# p friday_13th?(2019) == 2


# Further Exploration:
# -------------------

# lucky day 
# def friday_7th?(year)
#   lucky_count = 0
#   seventh = Date.new(year, 1, 7)
#   12.times do
#     lucky_count += 1 if seventh.friday?
#     seventh = seventh.next_month
#   end
#   lucky_count
# end

# Test Cases:
# -----------

# p friday_7th?(2015)
# p friday_7th?(1986) 
# p friday_7th?(2019)

# 2nd to last day
# NUMBER_OF_DAYS = [31,28,31,30,31,30,31,31,30,31,30,31]

# def friday_next_to_last?(year)
#   count = 0
#   date = Date.new(year)
#   leap_year = date.leap?
  
#   NUMBER_OF_DAYS.each_with_index do |days,index|
#     position = index + 1
#     if position == 2 && leap_year == true
#       date = Date.new(year, position, 28)
#       date.wday
#     elsif position == 2 && leap_year == false
#       date = Date.new(year, position, 27)
#       date.wday
#     elsif NUMBER_OF_DAYS[index] == 30
#       date = Date.new(year, position, 29)
#       date.wday
#     else 
#       date = Date.new(year, position, 30)
#       date.wday
#     end
#     count += 1 if date.friday?
#     date = date.next_month
#   end
#   count
# end


# Test Cases:
# -----------

# p friday_next_to_last?(2015)
# p friday_next_to_last?(1986) 
# p friday_next_to_last?(2019)

# ------------------------
# Next Featured Number Higher than a Given Value
# ------------------------

# def repeated_digits?(number)
#   digits = number.to_s.split('')
#   combos = digits.permutation(2)
#   combos.each { |combo| return false if combo[0] == combo[1] } 
#   true
# end

# def featured(featured_num)
#   next_featured_num = featured_num + 1
#   loop do
#     checks = []
#     checks[0] = next_featured_num.odd?
#     checks[1] = next_featured_num % 7 == 0
#     checks[2] = repeated_digits?(next_featured_num)
#     if next_featured_num >= 9_876_543_210 
#       next_featured_num = 'There is no possible number that fulfills those requirements.' 
#       break
#     elsif checks.all? { |boolean| boolean == true }
#       break
#     end
#     checks[1] && checks[0] ? next_featured_num += 14 : next_featured_num += 1
#   end
#   next_featured_num
# end

# # Test Cases:
# # -----------

# p featured(12) == 21
# p featured(20) == 21
# p featured(21) == 35
# p featured(997) == 1029
# p featured(1029) == 1043
# p featured(999_999) == 1_023_547
# p featured(999_999_987) == 1_023_456_987

# featured(9_999_999_999) # -> There is no possible number that fulfills those requirements


# ------------------------
# Bubble Sort
# ------------------------

# def bubble_sort!(array)
#   loop do 
#     swaps = false
#     array.each_with_index do |num, index|
#       next_index = index + 1
#       if index != array.index(array.last) && array[index] >   array[next_index]
#         array[index], array[next_index] = array[next_index],  array[index]
#         swaps = true
#       end 
#     end
#     return array if swaps == false
#   end
# end

# # Test Cases:
# # -----------

# array = [5, 3]
# p bubble_sort!(array)
# #array == [3, 5]

# array = [6, 2, 7, 1, 4]
# p bubble_sort!(array)
# #array == [1, 2, 4, 6, 7]

# array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
# p bubble_sort!(array)
# # array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)


# ------------------------
# Sum Square - Square Sum
# ------------------------

def sum_square_difference(number)
  return 'Not a positive number' if number <= 0
  integers = []
  (1..number).each { |num| integers << num }
  square_of_sum = integers.inject(:+)**2
  sum_of_squares = integers.map { |number| number**2 }.inject(:+)
  square_of_sum - sum_of_squares
end

# Test Cases:
# -----------

p sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150




