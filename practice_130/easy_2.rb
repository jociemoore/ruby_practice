# ------------
# From-To-Step Sequence Generator
# ------------

# def step(start, ending, step)
#   num = start
#   loop do 
#     yield(num)
#     break if num >= ending
#     num += step
#   end
#   [start, ending]
# end

# p step(1, 10, 3) { |value| puts "value = #{value}" }

# # My first thought is to return the "original" range in order to closely mimick the Range::step method. Since we don't really have an "original" range, I think the next best thing would be to return the start and end values.

# ------------
# Zipper
# ------------

# def zip(arr1, arr2)
#   zipped_arrays = []
#   arr1.each_with_index do |elem,index|
#     zipped_arrays << [elem, arr2[index]]
#   end
#   zipped_arrays
# end

# p zip([1, 2, 3], [4, 5, 6]) # == [[1, 4], [2, 5], [3, 6]]

# ------------
# map
# ------------

# def map(array)
#   array.each_with_object([])  do |elem, array|
#     array << yield(elem)
#   end
# end

# p map([1, 3, 6]) { |value| value**2 } #== [1, 9, 36]
# p map([]) { |value| true } #== []
# p map(['a', 'b', 'c', 'd']) { |value| false } #== [false, false, false, false]
# p map(['a', 'b', 'c', 'd']) { |value| value.upcase } #== ['A', 'B', 'C', 'D']
# p map([1, 3, 4]) { |value| (1..value).to_a } # == [[1], [1, 2, 3], [1, 2, 3, 4]]


# -------------------
# Further Exploration
# -------------------

# require 'set'

# def map(collection)
#   collection.each_with_object([])  do |elem, collection|
#     collection << yield(elem)
#   end
# end

# p map({'fruit' => 'apple', 'vegetable' => 'carrot', 'protein' => 'ham'}) { |item| item[1] + 's' }
# p map(Set[1,2,3]) { |item| item + 1 }

# ------------
# count
# ------------

# def count(*list_items)
#   true_count = 0
#   list_items.each do |item|
#     true_count += 1 if yield(item)
#   end
#   true_count
# end

# p count(1, 3, 6) { |value| value.odd? } #== 2
# p count(1, 3, 6) { |value| value.even? } #== 1
# p count(1, 3, 6) { |value| value > 6 } #== 0
# p count(1, 3, 6) { |value| true } #== 3
# p count() { |value| true } #== 0
# p count(1, 3, 6) { |value| value - 6 } #== 3

# ------------
# drop_while
# ------------

# def drop_while(array)
#   updated_array = array.clone
#   array.each do |elem|
#     if yield(elem)
#       updated_array.delete(elem)
#     else
#       return updated_array
#     end
#   end 
#   updated_array
# end

# p drop_while([1, 3, 5, 6]) { |value| value.odd? } #== [6]
# p drop_while([1, 3, 5, 6]) { |value| value.even? } #== [1, 3, 5, 6]
# p drop_while([1, 3, 5, 6]) { |value| true } #== []
# p drop_while([1, 3, 5, 6]) { |value| false } #== [1, 3, 5, 6]
# p drop_while([1, 3, 5, 6]) { |value| value < 5 } #== [5, 6]
# p drop_while([]) { |value| true } #== []

# ------------
# each_with_index
# ------------

# def each_with_index(array)
#   array.each do |elem|
#     yield(elem, array.index(elem))
#   end
# end

# result = each_with_index([1, 3, 6]) do |value, index|
#   puts "#{index} -> #{value**index}"
# end

# puts result == [1, 3, 6]

# ------------
# each_with_object
# ------------

# def each_with_object(array, obj)
#   array.each do |elem|
#     yield(elem, obj)
#   end
#   obj
# end


# result = each_with_object([1, 3, 5], []) do |value, list|
#   list << value**2
# end
# p result #== [1, 9, 25]

# result = each_with_object([1, 3, 5], []) do |value, list|
#   list << (1..value).to_a
# end
# p result #== [[1], [1, 2, 3], [1, 2, 3, 4, 5]]

# result = each_with_object([1, 3, 5], {}) do |value, hash|
#   hash[value] = value**2
# end
# p result #== { 1 => 1, 3 => 9, 5 => 25 }

# result = each_with_object([], {}) do |value, hash|
#   hash[value] = value * 2
# end
# p result #== {}


# ------------
# max_by
# ------------

# def max_by(array)
#   block_values = []
#   array.each { |elem| block_values << yield(elem) }
#   max_index = block_values.index(block_values.max)
#   array.empty? ? nil : array[max_index]
# end

# p max_by([1, 5, 3]) { |value| value + 2 } #== 5
# p max_by([1, 5, 3]) { |value| 9 - value } #== 1
# p max_by([1, 5, 3]) { |value| (96 - value).chr } #== 1
# p max_by([[1, 2], [3, 4, 5], [6]]) { |value| value.size } #== [3, 4, 5]
# p max_by([-7]) { |value| value * 3 } #== -7
# p max_by([]) { |value| value + 5 } #== nil

# ------------
# each_cons (Part 1)
# ------------

# def each_cons(array)
#   array.each_with_index do |elem, index|
#     next_elem = array[index + 1]
#     yield(elem, next_elem) if elem && next_elem
#   end
#   nil
# end


# hash = {}
# result = each_cons([1, 3, 6, 10]) do |value1, value2|
#   hash[value1] = value2
# end

# p result #== nil
# p hash #== { 1 => 3, 3 => 6, 6 => 10 }

# hash = {}
# each_cons([]) do |value1, value2|
#   hash[value1] = value2
# end
# p hash #== {}

# hash = {}
# each_cons(['a', 'b']) do |value1, value2|
#   hash[value1] = value2
# end
# p hash #== {'a' => 'b'}

# ------------
# each_cons (Part 2)
# ------------


def each_cons(array, sequence_length)
  case sequence_length
  when 1 
    array.each { |elem| yield(elem) }
  when 2
    array.each_with_index do |elem, index|
      next_elem = array[index + 1]
      next if !next_elem
      yield(elem, next_elem)
    end
  else
    array.each_with_index do |elem, index|
      start = index + 1
      ending = start + (sequence_length - 2)
      next_elems = array[start..ending]
      next if !array[ending]
      yield(elem, *next_elems)
    end
  end
  nil
end



hash = {}
each_cons([1, 3, 6, 10], 1) do |value|
  hash[value] = true
end
p hash #== { 1 => true, 3 => true, 6 => true, 10 => true }

hash = {}
each_cons([1, 3, 6, 10], 2) do |value1, value2|
  hash[value1] = value2
end
p hash #== { 1 => 3, 3 => 6, 6 => 10 }

hash = {}
each_cons([1, 3, 6, 10], 3) do |value1, *values|
  hash[value1] = values
end
p hash #== { 1 => [3, 6], 3 => [6, 10] }

hash = {}
each_cons([1, 3, 6, 10], 4) do |value1, *values|
  hash[value1] = values
end
p hash #== { 1 => [3, 6, 10] }

hash = {}
each_cons([1, 3, 6, 10], 5) do |value1, *values|
  hash[value1] = values
end
p hash #== {}

