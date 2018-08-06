# ------------------------
# Madlibs Revisted
# ------------------------

# require 'yaml'

# filename = 'madlib.txt'
# read_string = File.read filename
# read_array = YAML::load read_string

# noun = ['dawn', 'winter', 'telephone', 'hot dog', 'heat']
# plural = ['bobcats', 'scissors', 'telephone', 'salted carmels', 'parks']
# adjective = ['watery', 'fearful', 'tight', 'wishy-washy', 'fire-engine red']
# adverb = ['swimmingly', 'begrudgingly', 'slowly', 'generously', 'often']
# verb = ['whisk away', 'treat','powder', 'fly', 'trampled']

# read_array = read_array.split.map do |word| 
#   if word.include?('PLURAL')
#     insert = plural.sample
#     plural.delete(insert)
#     word.gsub!('PLURAL', insert)
#   elsif word.include?('NOUN') 
#     insert = noun.sample
#     noun.delete(insert)
#     word.gsub('NOUN', insert)
#   elsif word.include?('ADJECTIVE') 
#     insert = adjective.sample
#     adjective.delete(insert)
#     word.gsub('ADJECTIVE', insert)
#   elsif word.include?('ADVERB')
#     insert = adverb.sample
#     adverb.delete(insert)
#     word.gsub('ADVERB', insert)
#   elsif word.include?('VERB') 
#     insert = verb.sample
#     verb.delete(insert)    
#     word.gsub('VERB', insert)
#   else word
#   end
# end
# p read_array.join(' ')

# ------------------------
# Seeing Stars
# ------------------------

# def star(num)
#   inner_space = (num - 3) / 2
#   outer_space = 0 
#   loop do 
#     outer_space.times { print ' ' }
#     print '*'
#     inner_space.times { print ' ' }
#     print '*'
#     inner_space.times { print ' ' }
#     print "*\n"
#     break if inner_space == 0
#     inner_space -= 1
#     outer_space += 1
#   end
#   num.times { print '*' }
#   puts
#   loop do
#     outer_space.times { print ' ' }
#     print '*'
#     inner_space.times { print ' ' }
#     print '*'
#     inner_space.times { print ' ' }
#     print "*\n"
#     break if outer_space == 0
#     inner_space += 1
#     outer_space -= 1
#   end
# end

# # Test Cases:
# # -----------
# star(7)
# star(9)



# Further Exploration:
# --------------------

# def print_row(diameter, number_of_spaces)
#   spaces = ' ' * number_of_spaces 
#   output = Array.new(2, '*').join(spaces)
#   puts output.center(diameter)
# end

# def circle(diameter)
#   counter = (diameter / 2)
#   distance = 1
#   1.upto(counter) do
#     print_row(diameter, distance) 
#     distance += 2
#   end
#   distance -= 2
#   counter += 1
#   counter.upto(diameter - 2) do 
#     distance -= 2
#     print_row(diameter, distance) 
#   end
# end


# circle(7)


# --------------------

# def print_row(wave_height, start_spaces, delta)
#   spaces0 = ' ' * start_spaces
#   spaces1 = ' ' * ((wave_height + (wave_height - 2)) - delta)
#   spaces2 = ' ' * (3 + delta)
#   output1 = Array.new(2, spaces1)
#   output2 = Array.new(2, spaces2)
#   result = output1.zip(output2).flatten.join('*')
#   puts result.prepend(spaces0 + '*') << ('*') 
# end

# def sine(wave_height)
#   delta = 0
#   first_line_spaces = ' ' * ((wave_height + (wave_height - 2)) + 4 )
#   puts Array.new(3, '*').join(first_line_spaces)
#   2.upto(wave_height - 1 ) do |start_spaces| 
#     print_row(wave_height, start_spaces, delta) 
#     delta += 2
#   end
#   puts Array.new(3, '*').join(first_line_spaces).prepend(' ' * (wave_height + 1))
# end


# sine(3)


# ------------------------
# Transpose 3x3
# ------------------------

# def transpose(array)
#   new_matrix = [[],[],[]]
#   array.each do |arr|
#     arr.each_with_index do |num, index|
#       new_matrix[index] << arr[index]
#     end
#   end 
#   new_matrix
# end

# matrix = [
#   [1, 5, 8],
#   [4, 7, 2],
#   [3, 9, 6]
# ]

# p new_matrix = transpose(matrix)

# # Test Cases:
# # -----------
# p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
# p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]



# Further Exploration
# -------------------

# def transpose!(array)
#   start = 0
#   (0..1).each do |i|
#     array[i].each_with_index do |num, index|
#       next if i == index
#       if array[i + index] == nil  
#         array[i][index], array[index][i] = array[index][i], array[i][index] 
#       else
#         array[i][index], array[i + index][i] = array[i + index][i], array[i][index] if index >= start
#         p array
#       end
#     end
#     start += 1
#   end 
#   array
# end

# matrix = [
#   [1, 5, 8],
#   [4, 7, 2],
#   [3, 9, 6]
# ]

# p new_matrix = transpose!(matrix)

# # Test Cases:
# # -----------
# p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
# p matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]

# ------------------------
# Transpose MxN
# ------------------------

# def transpose(array)
#   new_matrix = []
#   array.max.size.times { new_matrix << [] }
#   array.each do |arr|
#     arr.each_with_index do |num, index|
#       new_matrix[index] << arr[index]
#     end
#   end 
#   new_matrix
# end


# # Test Cases:
# # -----------

# p transpose([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]
# p transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
# p transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) ==
#   [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
# p transpose([[1]]) == [[1]]

# Further Exploration
# -------------------
# In this case, I think I would have done alright had I been given this problem first as the only I have to was use the times method to push the correct number of empty arrays to the new_matrix array. 

# ------------------------
# Rotating Matrices
# ------------------------

# def rotate90(array)
#   new_matrix1 = []
#   new_height = array.max.size
#   new_height.times { new_matrix1 << [] }
#   new_matrix1.each_with_index do |arr, index|
#     new_width = array.size
#     loop do
#       arr << array[new_width - 1][index]
#       break if new_width == 1
#       new_width -= 1 
#     end
#   end
#   new_matrix1
# end

# matrix1 = [
#   [1, 5, 8],
#   [4, 7, 2],
#   [3, 9, 6]
# ]

# matrix2 = [
#   [3, 7, 4, 2],
#   [5, 1, 0, 8]
# ]

# new_matrix1 = rotate90(matrix1)
# new_matrix2 = rotate90(matrix2)
# new_matrix3 = rotate90(rotate90(rotate90(rotate90(matrix2))))

# p new_matrix1 == [[3, 4, 1], [9, 7, 5], [6, 2, 8]]
# p new_matrix2 == [[5, 3], [1, 7], [0, 4], [8, 2]]
# p new_matrix3 == matrix2


# Further Exploration
# -------------------

# def rotate(array, degrees)
#   mutable_array = array
#   return array if degrees == 360
#   repeat = case degrees
#            when 90 then 1
#            when 180 then 2
#            when 270 then 3 
#            else return "Not a compatible number for the degrees parameter."
#            end
#   repeat.times do 
#     new_matrix1 = []
#     new_height = mutable_array.max.size
#     new_height.times { new_matrix1 << [] }
#     new_matrix1.each_with_index do |arr, index|
#       new_width = mutable_array.size
#       loop do
#         arr << mutable_array[new_width - 1][index]
#         break if new_width == 1
#         new_width -= 1 
#       end
#     end
#     mutable_array = new_matrix1
#   end
#   mutable_array
# end

# matrix1 = [
#   [1, 5, 8],
#   [4, 7, 2],
#   [3, 9, 6]
# ]

# new_matrix1 = rotate(matrix1, 270)
# p new_matrix1 #== [[3, 4, 1], [9, 7, 5], [6, 2, 8]]



# ------------------------
# Permutations
# ------------------------

# def permutations(array)
#   return [array] if array.size == 1
#   return results = [array] + [array.reverse] if array.size == 2
#   results = []
#   total_permutations = (1..array.size).to_a.inject(:*)
#   (total_permutations / 2).times { results << [] }
#   results.map! do |element| 
#     loop do 
#       new_sequence = array.shuffle 
#       if !results.include?(new_sequence) 
#         element = new_sequence 
#         break
#       end
#     end
#     element
#   end
#   results.size.times do |index| 
#     new_sequence = results[index].reverse
#     loop do 
#       if !results.include?(new_sequence)
#         results << new_sequence 
#         break
#       else
#         new_sequence = array.shuffle
#       end
#     end
#   end 
#   results.sort
# end

# # Test Cases:
# # -----------

# p permutations([2])
# # -> [[2]]

# p permutations([1, 2])
# # -> [[1, 2], [2, 1]]

# p permutations([1, 2, 3])
# # -> [[1, 2, 3], [1, 3, 2], [2, 1, 3], [2, 3, 1], [3, 1, 2], [3, 2, 1]]

# p permutations([1, 2, 3, 4])
# # # -> [[1, 2, 3, 4], [1, 2, 4, 3], [1, 3, 2, 4],
# # #     [1, 3, 4, 2], [1, 4, 2, 3], [1, 4, 3, 2],
# # #     [2, 1, 3, 4], [2, 1, 4, 3], [2, 3, 1, 4],
# # #     [2, 3, 4, 1], [2, 4, 1, 3], [2, 4, 3, 1],
# # #     [3, 1, 2, 4], [3, 1, 4, 2], [3, 2, 1, 4],
# # #     [3, 2, 4, 1], [3, 4, 1, 2], [3, 4, 2, 1],
# # #     [4, 1, 2, 3], [4, 1, 3, 2], [4, 2, 1, 3],
# # #     [4, 2, 3, 1], [4, 3, 1, 2], [4, 3, 2, 1]]


# ------------------------
# Fix the Bug
# ------------------------

# def my_method(array)
#   if array.empty?
#     []
#   elsif array.size > 1
#     array.map do |value|
#       value * value
#     end
#   else
#     [7 * array.first]
#   end
# end

# # Test Cases:
# # -----------

# p my_method([]) #== []
# p my_method([3]) #== [21]
# p my_method([3, 4]) #== [9, 16]
# p my_method([5, 6, 7]) #== [25, 36, 49

# The buggy program printed:
# []
# nil
# nil
# nil

# ...because the elsif branch with seemingly no condition actually evaluates array.map as a condition. This leaves nothing to evaluate if the condition is met, which it will because an array of integers is truthy, and therefore returning nil.

# ------------------------
# Merge Sorted Lists
# ------------------------

# def merge(arr1, arr2)
#   result = []
#   arr = arr1 + arr2
#   counter = arr.min
#   loop do 
#     arr.count(counter).times { result << counter } if arr.include?(counter)
#     break if counter == arr.max
#     counter += 1
#   end
#   result
# end

# Test Cases:
# -----------

# p merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
# p merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
# p merge([], [1, 4, 5]) == [1, 4, 5]
# p merge([1, 4, 5], []) == [1, 4, 5]


# ------------------------
# Merge Sort
# ------------------------

# Recursive:
# ----------

# def merge_sort(array)
#   return array if array.size == 1
#   arr1 = array.slice(0...array.size/2)
#   arr2 = array.slice(array.size/2..-1)
#   arr1 = merge_sort(arr1)
#   arr2 = merge_sort(arr2)
#   (arr1.sort + arr2.sort).sort
# end

# Non-Recursive:
# --------------

# def split(array)
#   sub_arrays = [array]
#   repeat_splits = array.size / 2
#   repeat_splits.times do 
#     counter = 0
#     size = sub_arrays.size
#     loop do
#         arr = sub_arrays[counter]
#         arr1 = arr.slice(0...arr.size/2)
#         arr2 = arr.slice(arr.size/2..-1)
#         sub_arrays << arr1 if !sub_arrays.include?(arr1)
#         sub_arrays << arr2 if !sub_arrays.include?(arr2)
#         break if counter == size - 1
#         counter += 1 
#     end
#   end
#   sub_arrays.delete_if { |elem| elem.empty? }
# end

# def merge_sort(array)
#   split_arrays = split(array).reverse!
#   merged_arrays = []
#   index = 0
#   loop do  
#     if index > split_arrays.index(split_arrays[-1])
#       return merged_arrays[-1].sort
#     elsif index == split_arrays.index(split_arrays[-1])
#       merged_arrays << split_arrays[index].sort
#       return merged_arrays[-1]
#     else
#       combined_array = split_arrays[index].sort + split_arrays[index + 1].sort
#       merged_arrays << combined_array
#       index += 2
#     end
#   end 
# end
 

# Test Cases:
# -----------

# p merge_sort([9, 5, 7, 1]) == [1, 5, 7, 9]
# p merge_sort([5, 3]) == [3, 5]
# p merge_sort([6, 2, 7, 1, 4]) == [1, 2, 4, 6, 7]
# p merge_sort(%w(Sue Pete Alice Tyler Rachel Kim Bonnie)) == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
# p merge_sort([7, 3, 9, 15, 23, 1, 6, 51, 22, 37, 54, 43, 5, 25, 35, 18, 46]) == [1, 3, 5, 6, 7, 9, 15, 18, 22, 23, 25, 35, 37, 43, 46, 51, 54]



# ------------------------
# Egyptian Fractions
# ------------------------

# Notes: Fibonacci Greedy algorithm --> fractions < 0
# => subtract the largest possible number that can go into the given fraction
# => get the remainder after the subtraction
# => subtract the largest possible number that can go into the remainder fraction
# 1 = 1/2 + 1/3 + 1/6
# how to represent 1 without repeat unit fraction?



#input: rational number
#output: array of denominators
#rules:
# => use rational class
# => positive rational numbers always egytian #s
# => egyptian number = series of different unit fractions
# => infinite ways to form an egyptian number
#happy path:
#algorithm:
#data structure?
#abstraction?


#input: array of denominators
#output: rational number
#rules:
#happy path:
#algorithm:
#data structure?
#abstraction?


def unegyptian()
end


def egyptian()
end


p egyptian(Rational(2, 1))    # -> [1, 2, 3, 6]
p egyptian(Rational(137, 60)) # -> [1, 2, 3, 4, 5]
p egyptian(Rational(3, 1))    # -> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 15, 230, 57960]

p unegyptian(egyptian(Rational(1, 2))) == Rational(1, 2)
p unegyptian(egyptian(Rational(3, 4))) == Rational(3, 4)
p unegyptian(egyptian(Rational(39, 20))) == Rational(39, 20)
p unegyptian(egyptian(Rational(127, 130))) == Rational(127, 130)
p unegyptian(egyptian(Rational(5, 7))) == Rational(5, 7)
p unegyptian(egyptian(Rational(1, 1))) == Rational(1, 1)
p unegyptian(egyptian(Rational(2, 1))) == Rational(2, 1)
p unegyptian(egyptian(Rational(3, 1))) == Rational(3, 1)
