# ------------
# Example #1
# ------------

# [[1, 2], [3, 4]].each do |arr|
#   puts arr.first
# end
# # 1
# # 3
# # => [[1, 2], [3, 4]]

# => The each method is called on the array object [[1,2],[3,4]]. Each nested array is passed to the block, which outputs the first element in the argument array. The block itself returns nil everytime because the puts method is the last line evaluated by the block and it always returns nil. The each method, however, doesn't care about the return value from the block and returns the calling object.

# ------------
# Example #2
# ------------

# [[1, 2], [3, 4]].map do |arr|
#   puts arr.first
# end
# # 1
# # 3
# # => [nil, nil]

# The main difference between the each method used in example 1 and the map method used in example 2 is how each method handles the return value of the block. While each does not do anything with this value, map does. The return value of the block equals the value of each element in the new array returned by the map method.

# ------------
# Example #3
# ------------

# [[1, 2], [3, 4]].map do |arr|
#   puts arr.first
#   arr.first
# end

# 1
# 3 
# [1,3]

# => The map method is called on the array [[1,2],[3,4]]. Each array element is passed into the block. The first element of each sub-array is outputted by the puts method and returned by the first method call on each sub-array. This value is also the return value of the block. The map method returns a new array containing the transformed data, which in this case, is the first element in each sub-array: [1,3].

# ////////////////////////////////////////////////////

# line                   |  1
# Action                 |  method call - map
# Object                 |  outer array 
# Side Effect            |  none
# Return Value           |  [1, 3]
# Is Return Value Used?  |  no

# ////////////////////////////////////////////////////

# line                   |  2
# Action                 |  method call - puts
# Object                 |  element at arr[0]
# Side Effect            |  outputs integer
# Return Value           |  nil
# Is Return Value Used?  |  no

# ////////////////////////////////////////////////////

# line                   |  3
# Action                 |  method call - first
# Object                 |  arr -- array argument
# Side Effect            |  none
# Return Value           |  element at arr[0]
# Is Return Value Used?  |  yes, its the return value 
#                        |  of the block

# ////////////////////////////////////////////////////

# line                   |  1-4
# Action                 |  block execution
# Object                 |  array argument
# Side Effect            |  none
# Return Value           |  elements at arr[0] 
#                        |  for each sub-array
# Is Return Value Used?  |  yes, used by map to form
#                        |  a new array

# ////////////////////////////////////////////////////


# ------------
# Example #4
# ------------

# my_arr = [[18, 7], [3, 12]].each do |arr|
#   arr.each do |num|
#     if num > 5
#       puts num
#     end
#   end
# end

# 18
# 7
# 3
# 12
# [[18, 7], [3, 12]]

# => The each method is called on the array [[18, 7],[3, 12]]. Each sub-array is passed into the block. Another each method is called on the argument array, which iterates through each integer element with the sub-array: num. If num is greater than 5, the puts method will output the value num. The block's return value is nil. The second each method returns the value of the sub-array because the each method returns the calling object. Likewise, the first each method returns the first calling object [[18, 7],[3, 12]] and this is what is stored in the my_arr variable.

# ////////////////////////////////////////////////////

# line                   |  1 
# Action                 |  method call - each #1
# Object                 |  array: [[18, 7],[3, 12]]
# Side Effect            |  none
# Return Value           |  [[18, 7],[3, 12]]
# Is Return Value Used?  |  assigned to my_arr

# ////////////////////////////////////////////////////

# line                   |  1 - 7
# Action                 |  block execution
# Object                 |  arr -- sub array
# Side Effect            |  none
# Return Value           |  arr
# Is Return Value Used?  |  ignored

# ////////////////////////////////////////////////////

# line                   |  2
# Action                 |  method call - each #2
# Object                 |  arr
# Side Effect            |  none
# Return Value           |  arr
# Is Return Value Used?  |  ignored

# ////////////////////////////////////////////////////

# line                   |  2 - 6
# Action                 |  block execution
# Object                 |  num
# Side Effect            |  none
# Return Value           |  nil
# Is Return Value Used?  |  ignored

# ////////////////////////////////////////////////////

# line                   |  3 
# Action                 |  if statement condition: >
# Object                 |  num
# Side Effect            |  none
# Return Value           |  nil
# Is Return Value Used?  |  yes, return value of the 
#                        |  block

# ////////////////////////////////////////////////////

# line                   |  4
# Action                 |  method call - puts
# Object                 |  num
# Side Effect            |  string is outputted 
# Return Value           |  nil
# Is Return Value Used?  |  yes, return value of the
#                        |  if statement

# ////////////////////////////////////////////////////

# ------------
# Example #5
# ------------

[[1, 2], [3, 4]].map do |arr|
  arr.map do |num|
    num * 2
  end
end

# return value: [[2,4],[6,8]]

# The map method is called on the array [[1, 2], [3, 4]]. Each sub-array is passed to the block. Within the block a second map method is called on the sub-array (arr). Each integer element is passed into the block, where the value is multiplied by 2. The transformed value is returned by the block. The second map method will return a new array of the new element values:[2,4] and [6,8] The first map method will return a new array of the new arrays containing the transformed element values: [[2,4],[6,8]]

# ////////////////////////////////////////////////////

# line                   |  1
# Action                 |  method call - map
# Object                 |  [[1, 2], [3, 4]]
# Side Effect            |  none
# Return Value           |  [[2,4],[6,8]] 
# Is Return Value Used?  |  no 

# ////////////////////////////////////////////////////

# line                   |  1 - 5
# Action                 |  block execution
# Object                 |  sub arrays (arr)
# Side Effect            |  none
# Return Value           |  [2,4],[6,8] - transformed arr
# Is Return Value Used?  |  yes, map's return value 

# ////////////////////////////////////////////////////

# line                   |  2
# Action                 |  method call - map
# Object                 |  arr - sub arrays
# Side Effect            |  none
# Return Value           |  [2,4], [6,8]
# Is Return Value Used?  |  yes, block's return value

# ////////////////////////////////////////////////////


# line                   |  2 - 4
# Action                 |  block execution
# Object                 |  num
# Side Effect            |  none
# Return Value           |  2, 4, 6, 8
# Is Return Value Used?  |  yes, map's return value 

# ////////////////////////////////////////////////////

# line                   |  3
# Action                 |  multiplication
# Object                 |  num
# Side Effect            |  none
# Return Value           |  2, 4, 6, 8
# Is Return Value Used?  |  yes, block's return value 

# ////////////////////////////////////////////////////


# ------------
# Example #6
# ------------

[{ a: 'ant', b: 'elephant' }, { c: 'cat' }].select do |hash|
  hash.all? do |key, value|
    value[0] == key.to_s
  end
end
# => [{ :c => "cat" }]

# => The select method is called on the array [{ a: 'ant', b: 'elephant' }, { c: 'cat' }], which contains 2 hashes of varying lengths. Each hash is passed to the block where the all? method is called on the current hash. The current hash is passed to the block, where the first letter of the value string is compared to the string version of the key. This expression returns a boolean which is used by the inner block which in turn is used by the all? method. If the block returns true for each key-value pair, then the all? method will also return true. This return value is used by the outer block which in turn is used by the select method. If the block returns true, the current hash will be selected. The select method returns a new array of all hashes that returned true: [{c: 'cat'}]. 

# => If any? is used instead of all?, then the return value of the any? method would be true if the inner block returns true for any key-value pair. Therefore, the select will return a new of all hashes for which at least one key-value pair matched.

# ------------
# Example #7
# ------------

# arr = [['1', '8', '11'], ['2', '6', '13'], ['2', '12', '15'], ['1', '8', '9']]

# arr.sort_by do |sub_arr|
#   sub_arr.map do |num|
#     num.to_i
#   end
# end

# ------------
# Example #8
# ------------

# [[8, 13, 27],['apple', 'banana', 'cantaloupe']].map do |arr|
#   arr.select do |item|
#     if item.to_s.to_i == item
#       item > 13
#     else
#       item.size < 6
#     end
#   end
# end

# ------------
# Example #9
# ------------

# [[[1], [2], [3], [4]], [['a'], ['b'], ['c']]].map do |element1|
#   element1.each do |element2|
#     element2.partition do |element3|
#       element3.size > 0
#     end
#   end
# end
# # => [[[1], [2], [3], [4]], [["a"], ["b"], ["c"]]]

# => We start with an array of 2 arrays: [[1], [2], [3], [4]] and ['a'], ['b'], ['c']]. The first sub-array contains 4 arrays containing integers. The second sub-array contains 3 arrays containing strings. 

# => The map method is called on the original array. Each 3- or 4- element sub-array is passed to the outer block and calls the each method. Each sub-array within the 3- or 4- element sub-array is passed to the inner block and calls the partition method. The partition method divides the sub-arrays into 2 partition arrays based on the size of the sub-array. If sub-array is greater than 3, then the element3.size > 0 expression returns true to the inner-most block. If not, then the element3.size > 0 expression returns false to the inner-most block. 

# => The block's return value is used by the partition method which forms the 2 partition arrays -- one holding all sub-arrays for which the block returns true and the other containing all sub-arrays for which the block returned false. The 2 partition arrays equal the return value of the inner block which is ignored by the each method. The return value of the each method is always the calling object, and therefore each 3- or 4-element sub-array returned to the outer block, which is used by the map method. The map method returns a new array containing the origrinal sub-arrays. 

# ------------
# Example #10
# ------------

[[[1, 2], [3, 4]], [5, 6]].map do |arr|
  arr.map do |el|
    if el.to_s.size == 1    # it's an integer
      el + 1
    else                    # it's an array
      el.map do |n|
        n + 1
      end
    end
  end
end

# final return value: [[[2,3], [4,5]], [6,7]]  

# [[[1, 2], [3, 4]], [5, 6]]
# =>[[[2,3], [4,5]], [6,7]]

  # [[1,2], [3,4]]              =>[[2,3], [4,5]]
      # [1,2]               =>[2,3] 
          # 1          =>2 
          # 2          =>3 
      # [3,4]               =>[4,5] 
          # 3          =>4
          # 4          =>5
  
  # [5,6]                       =>[6,7]
    # 5                     =>6
    # 6                     =>7
  



