# ------------
# Question #1
# ------------

# [1, 2, 3].select do |num|
#   num > 5
#   'hi'
# end

# => The select method returns a new method based on the truthiness of the retun value of the block. 'hi' is a string and strings are truthy, each element will be selectd, and therefore the return value from the select method above will be an array of 1, 2, 3.

# ------------
# Question #2
# ------------

# ['ant', 'bat', 'caterpillar'].count do |str|
#   str.length < 4
# end

# => We can find out how the count method treats the return method by referencing the Ruby Docs. The count method will counter the number of elements for with the block returns a true value. In this exercise, count will return 2.

# ------------
# Question #3
# ------------

# [1, 2, 3].reject do |num|
#   puts num
# end

# => The return value of reject is a new array containing the elements for which the block returns falsy. In this exercise, the return value of the reject method is an array containing all the original elements. This is because the puts method is the last line evaluated in the block, it always returns nil, nil is falsy, and therefore all elements are rejected.

# ------------
# Question #4
# ------------

# ['ant', 'bear', 'cat'].each_with_object({}) do |value, hash|
#   hash[value[0]] = value
# end

# => The return value of the each_with_object method is the initially given object. Here in this exercise, each_with_object will return a hash with the keys being the first letter of the current value and the values being the current value. {'a' => 'ant', 'b' => 'bear', 'c' => 'cat'}

# ------------
# Question #5
# ------------

# hash = { a: 'ant', b: 'bear' }
# hash.shift

# => shift will remove the first key-value pair from the hashs in this example. hash will be mutated to {b: 'bear'} and [a: 'ant'] will be returned (note: in an array, not a hash).

# ------------
# Question #6
# ------------

# ['ant', 'bear', 'caterpillar'].pop.size

# => The pop method will mutate the array by removing the last element and returns the element returned, which is 'catepillar'. The size method is called on 'catepillar' and therefore will return the length of the string, which is 11.

# ------------
# Question #7
# ------------

# [1, 2, 3].any? do |num|
#   puts num
#   num.odd?
# end

# => The any? method returns a boolean based on whether or not the block ever returns anything besides false or nil. In this exercise, the last line of the block will call the odd? method on num which will return a boolean itself. The block will return true for elements 1 and 3. The return value for the expression will be true.

# ------------
# Question #8
# ------------

# arr = [1, 2, 3, 4, 5]
# arr.take(2)

# => We can go to the Ruby Docs to find out more information on the take method. Take will return a new array (therefor the method is not destructive) containing the first 'n' elements in the array. In this exercise, take will return [1, 2]

# ------------
# Question #9
# ------------

# { a: 'ant', b: 'bear' }.map do |key, value|
#   if value.size > 3
#     value
#   end
# end

# => The return value of the map method is a new array that is the same size as the original calling object and contains the transformed values. In this case, [[nil],['bear']].

# ------------
# Question #10
# ------------

# [1, 2, 3].map do |num|
#   if num > 1
#     puts num
#   else
#     num
#   end
# end

# => The block returns nil if the first condition is met and the integer passed into the block as an argument otherwise.

# ------------
# Question #11
# ------------

# arr = ['10', '11', '9', '7', '8']

# arr.map! {|num_s| num_s.to_i}.sort do |a,b|
#   b <=> a
# end

# ------------
# Question #12
# ------------

# books = [
#   {title: 'One Hundred Years of Solitude', author: 'Gabriel Garcia Marquez', published: '1967'},
#   {title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', published: '1925'},
#   {title: 'War and Peace', author: 'Leo Tolstoy', published: '1869'},
#   {title: 'Ulysees', author: 'James Joyce', published: '1922'}
# ]

# books.sort do |a,b|
#   a[:published].to_i <=> b[:published].to_i
# end



