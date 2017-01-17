# ------------
# Question #1
# ------------

# arr1 = ['a', 'b', ['c', ['d', 'e', 'f', 'g']]]

# p arr1[2][1][3]

# arr2 = [{first: ['a', 'b', 'c'], second: ['d', 'e', 'f']}, {third: ['g', 'h', 'i']}]

# p arr2[1][:third][0]

# arr3 = [['abc'], ['def'], {third: ['ghi']}]

# p arr3[2][:third][0][0]

# hsh1 = {'a' => ['d', 'e'], 'b' => ['f', 'g'], 'c' => ['h', 'i']}

# p hsh1['b'][1]

# hsh2 = {first: {'d' => 3}, second: {'e' => 2, 'f' => 1}, third: {'g' => 0}}

# p hsh2[:third].keys[0]

# ------------
# Question #2
# ------------

# arr1 = [1, [2, 3], 4]

# arr1[1][1] = 4
# p arr1

# arr2 = [{a: 1}, {b: 2, c: [7, 6, 5], d: 4}, 3]

# arr2[2] = 4
# p arr2

# hsh1 = {first: [1, 2, [3]]}

# hsh1[:first][2][0] = 4
# p hsh1

# hsh2 = {['a'] => {a: ['1', :two, 3], b: 4}, 'b' => 5}

# hsh2[['a']][:a][2] = 4
# p hsh2

# ------------
# Question #3
# ------------

# a = 2
# b = [5, 8]
# arr = [a, b] # => [2, [5,8]]

# arr[0] += 2 # => [4, [5,8]]
# arr[1][0] -= a  # => [4, [1,8]]

# p a
# p b
# => a = 2 because arr[0] += 2 points the value at the 0 index to a number. a is not mutated and cannot be because its a fixnum. (NOTE: if a is reassigned then the value at the 0 index is mutated in this case.)
# => b = [3, 8] because you subtract the value of a from b[0] ( 5 - 2 = 3). b is mutated because b is an array, and arr[1][0] = a reassigns the value at the 0 index of b to a new value.

# ------------
# Question #4
# ------------

# hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

# hsh.each do |_, value|
#   value.each do |string|
#     string.chars.each do |char| 
#       puts char if 'aeiouAEIOU'.include?(char)
#     end
#   end
# end

# ------------
# Question #5
# ------------

# arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

# arr.map do |array|
#   array.sort do |a,b|
#     b <=> a
#   end
# end


# ------------
# Question #6
# ------------

# arr = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]

# arr.map do |hash|
#   hash2 = hash.dup
#   hash2.each do |key, value|
#     hash2[key] += 1
#   end
# end

# ------------
# Question #7
# ------------

# arr = [[2], [3, 5, 7], [9], [11, 13, 15]]

# arr.map do |array|
#   array.select do |num|
#     num % 3 == 0
#   end
# end

# => [[], [3], [9], [15]]

# ------------
# Question #8
# ------------

# arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]

# hsh = {}
# arr.each do |sub_arr|
#   hsh[sub_arr[0]] = sub_arr[1]
# end
# p hsh

# ------------
# Question #9
# ------------

# arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]

# arr.sort_by do |sub_arr|
#   sub_arr = sub_arr.reject { |num| num.even?}
# end

# # => [[1, 8, 3], [1, 6, 7], [1, 4, 9]]

# ------------
# Question #10
# ------------

# hsh = {
#   'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
#   'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
#   'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
#   'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
#   'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
# }

# hsh.map do |_, details|
#   if details[:type] == 'fruit'
#     details[:colors].map(&:upcase)
#   else
#     details[:size].capitalize
#   end
# end

# # result = [['RED', 'GREEN'], 'Medium', ['RED', 'GREEN'], ['ORANGE'], 'Large']

# ------------
# Question #11
# ------------

# arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

# arr.select do |hash|
#   values = hash.values.flatten
#   values.all? do |num|
#     num.even?
#   end
# end

# ------------
# Question #12
# ------------

arr = [['stars', 'river'], 'letter', ['leaves', ['horses', 'table']]]

flat_arr = []

arr.each do |elem|
  if elem.class == Array
    elem.each do |el|
      if el.class == Array
        el.each do |word|
          flat_arr << word
        end
      else
        flat_arr << el
      end
    end
  else
    flat_arr << elem
  end
end

p flat_arr





