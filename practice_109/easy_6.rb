# ------------------------
# Cute angles
# ------------------------

# MINUTES_IN_DEGREE = 60
# SECONDS_IN_MINUTE = 60

# def dms(num)
#   return %(0°00'00") if num == 0
#   degrees = num.to_i
#   minutes = ((num % degrees) * MINUTES_IN_DEGREE).round(2)
#   seconds = ((minutes - minutes.to_i) * SECONDS_IN_MINUTE).round
#   minutes = format('%02d', minutes)
#   seconds = format('%02d', seconds)
#   %(#{degrees}°#{minutes}'#{seconds}")
# end


# puts dms(30) == %(30°00'00")
# puts dms(76.73) == %(76°43'48")
# puts dms(254.6) == %(254°36'00")
# puts dms(93.034773) == %(93°02'05")
# puts dms(0) == %(0°00'00")
# puts dms(360) == %(360°00'00") || dms(360) == %(0°00'00")

# Further Exploration

# MINUTES_IN_DEGREE = 60
# SECONDS_IN_MINUTE = 60

# def dms(num)
#   return %(0°00'00") if num == 0
#   degrees = num.to_i
#   minutes = (((num % degrees) * MINUTES_IN_DEGREE).round(2)).abs
#   seconds = (((minutes - minutes.to_i) * SECONDS_IN_MINUTE).round).abs
#   minutes = format('%02d', minutes)
#   seconds = format('%02d', seconds)
#   %(#{degrees}°#{minutes}'#{seconds}")
# end

# puts dms(-76.73) == %(-76°43'48")

# ------------------------
# Delete vowels
# ------------------------

# VOWELS = 'aeiou'

# def remove_vowels(array)
#   array.each do |word| 
#     word.each_char { |char| word.delete! char if VOWELS.include?(char.downcase) }
#   end
# end

# p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
# p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
# p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']

# => My solution included iterating through each string in the array, then iterating through each letter in the array, and deleting it if the lowercase version of the character was in the constant VOWELS. The mutated array is returned to the caller.

# ------------------------
# Fibonacci Number Location By Length
# ------------------------

# def find_fibonacci_index_by_length(digits)
#   fibonacci_nums = [1,1]
#   loop do 
#     new_num = fibonacci_nums[-2] + fibonacci_nums[-1]
#     fibonacci_nums << new_num
#     return fibonacci_nums.index(new_num) + 1 if fibonacci_nums[-1].to_s.size >= digits
#   end
# end

# find_fibonacci_index_by_length(2) == 7
# find_fibonacci_index_by_length(10) == 45
# find_fibonacci_index_by_length(100) == 476
# find_fibonacci_index_by_length(1000) == 4782
# find_fibonacci_index_by_length(10000) == 47847

# ------------------------
# Reversed Arrays (Part 1)
# ------------------------

# def reverse!(array)
#   clone_array = array.clone
#   max_index = array.size - 1
#   index = 0
#   clone_index = max_index
#   if max_index >= 0 
#     loop do
#       array[index] = clone_array[clone_index]
#       break if index == max_index
#       index += 1
#       clone_index -= 1
#     end
#   end
#   array
# end


# list = [1,2,3,4]
# result = reverse!(list) # => [4,3,2,1]

# list = %w(a b c d e)
# p reverse!(list) # => ["e", "d", "c", "b", "a"]

# list = ['abc']
# p reverse!(list) # => ["abc"]

# list = []
# p reverse!([]) # => []

# ------------------------
# Reversed Arrays (Part 2)
# ------------------------

# def reverse(array)
#   reversed_array = []
#   reversed_index = -1
#   array.size.times do 
#     reversed_array << array[reversed_index]
#     reversed_index -= 1
#   end
#   reversed_array
# end

# p reverse([1,2,3,4]) == [4,3,2,1]          # => true
# p reverse(%w(a b c d e)) == %w(e d c b a)  # => true
# p reverse(['abc']) == ['abc']              # => true
# p reverse([]) == []                        # => true

# list = [1, 2, 3]                      # => [1, 2, 3]
# new_list = reverse(list)              # => [3, 2, 1]
# list.object_id != new_list.object_id  # => true
# list == [1, 2, 3]                     # => true
# new_list == [3, 2, 1]                 # => true


# Further Exploration

# def reverse(array)
#   reverse_array = (1..array.size).each_with_object([]) do |elem, obj|
#     obj << array[-elem]
#   end
# end

# p reverse([1,2,3,4]) #== [4,3,2,1]          # => true

# ------------------------
# Combining Arrays
# ------------------------

# def merge(arr1, arr2)
#   merged_arrays = arr1 + arr2
#   merged_arrays.uniq!
# end

# p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]

# Further Exploration 
# => I concatenated the two arrays together using '+' to form a new array. Then I used the uniq! to delete any duplicates.

# ------------------------
# Halvsies
# ------------------------

# def halvsies(array)
#   half = (array.size/2.0 - 1).ceil
#   halves = []
#   halves << arr1 = array.slice(0..half)
#   halves << arr2 = array.slice((half + 1)..(array.size - 1))
# end


# p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
# p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
# p halvsies([5]) == [[5], []]
# p halvsies([]) == [[], []]

# Further Exploration

# => The proposed solution divides by 2.0 instead of just 2 so that the output is a float and not just an integer. This allows the method to handle arrays with an odd number of elements.

# => My solution was similar in that I used the slice and ceil methods. I used a range with slice instead of start and length arguments.

# ------------------------
# Find the Duplicate
# ------------------------

# def find_dup(array)
#   array.each do |num| 
#     count = array.count(num)
#     return num if count > 1
#   end
# end

# p find_dup([1, 5, 3, 1]) #== 1
# p find_dup([18,  9, 36, 96, 31, 19, 54, 75, 42, 15,
#           38, 25, 97, 92, 46, 69, 91, 59, 53, 27,
#           14, 61, 90, 81,  8, 63, 95, 99, 30, 65,
#           78, 76, 48, 16, 93, 77, 52, 49, 37, 29,
#           89, 10, 84,  1, 47, 68, 12, 33, 86, 60,
#           41, 44, 83, 35, 94, 73, 98,  3, 64, 82,
#           55, 79, 80, 21, 39, 72, 13, 50,  6, 70,
#           85, 87, 51, 17, 66, 20, 28, 26,  2, 22,
#           40, 23, 71, 62, 73, 32, 43, 24,  4, 56,
#           7,  34, 57, 74, 45, 11, 88, 67,  5, 58]) #== 73

# Further Exploration
# => I solved this problem by iterating through the array with the each method, counting all instances of the element, and returning the element only if there were more than 1 instances. 

# ------------------------
# Does My List Include This?
# ------------------------

# def include?(array, item)
#   match = array.find { |elem| elem == item }
#   match == item && !array.empty?
# end

# p include?([1,2,3,4,5], 3) == true
# p include?([1,2,3,4,5], 6)  == false
# p include?([], 3) == false
# p include?([nil], nil) == true
# p include?([], nil) == false

# Further Exploration

# def include?(array, item)
#   array.count(item) > 0
# end

# p include?([1,2,3,4,5], 3) == true
# p include?([1,2,3,4,5], 6)  == false
# p include?([], 3) == false
# p include?([nil], nil) == true
# p include?([], nil) == false

# ------------------------
# Right Triangles
# ------------------------

# def triangle(num)
#   stars = 1
#   loop do
#     print "#{' ' * (num-stars)}#{'*' * stars}\n"
#     break if stars == num
#     stars += 1
#   end
# end

# triangle(5)

# Further Exploration

# # upside down
# def triangle(num)
#   stars = num
#   loop do
#     print "#{' ' * (num-stars)}#{'*' * stars}\n"
#     break if stars == 1
#     stars -= 1
#   end
# end

# triangle(5)

# right angle in any corner
def triangle(num, corner)

  case corner 
  when 'top-left'
    stars = num
    spaces = num - stars   
    num.times do
      print "#{'*' * stars}#{' ' * spaces}\n"
      stars -= 1
      spaces += 1
    end 
  when 'top-right'
    stars = num
    spaces = num - stars    
    num.times do
      print "#{' ' * spaces}#{'*' * stars}\n"
      stars -= 1
      spaces += 1
    end 
  when 'bottom-left'
    stars = 1
    spaces = num - stars
    num.times do
      print "#{'*' * stars}#{' ' * spaces}\n"
      stars += 1
      spaces -= 1
    end
  else
    stars = 1
    spaces = num - stars
    num.times do
      print "#{' ' * spaces}#{'*' * stars}\n"
      stars += 1
      spaces -= 1
    end
  end

end

triangle(5, 'bottom-left')



