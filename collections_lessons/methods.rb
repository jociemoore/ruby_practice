# numbers = [1,2,3]
# counter = 0

# loop do
#   break if counter == numbers.size
#   puts numbers[counter]
#   counter += 1
# end

# --------------------------------------------------

# [1,2,3].each do |num|
#   puts num
# end

# --------------------------------------------------


# hash = {a: 1, b: 2, c: 3}

# hash.each do |key, value|
#   puts "The key is #{key} and the value is #{value}"
# end

# --------------------------------------------------

# def a_method
#   [1,2,3].each do |num|
#     puts num
#   end

#   puts 'hi'
# end

# p a_method

# --------------------------------------------------

# [1,2,3].select do |num|
#   num + 1 
#   puts num
# end


# --------------------------------------------------

# [1,2,3].map do |num|
#   num.odd?
# end

# --------------------------------------------------

# [1,2,3].any? do |num|
#   num > 2 
# end


# --------------------------------------------------

# {a: "ant", b: "bear", c: "cat"}.any? do |key, value|
#   value.size > 4
# end

# --------------------------------------------------


# [1,2,3].all? do |num|
#   num > 2 
# end

# --------------------------------------------------

# {a: "ant", b: "bear", c: "cat"}.all? do |key, value|
#   value.length >= 3 
# end


# --------------------------------------------------

# [1,2,3].each_with_index do |num, index|
#   puts "The index of #{num} is #{index}."
# end

# --------------------------------------------------

# {a: "ant", b: "bear", c: "cat"}.each_with_index do |pair, index|
#   puts "The index of #{pair} is #{index}."
# end

# --------------------------------------------------

# [1,2,3].each_with_object([]) do |num, array|
#   array << num if num.odd?
# end

# --------------------------------------------------

# {a: "ant", b: "bear", c: "cat"}.each_with_object([]) do |pair, array|
#   array << pair.last
# end

# --------------------------------------------------

# {a: "ant", b: "bear", c: "cat"}.each_with_object({}) do |(key, value), hash|
#   hash[value] = key
# end

# --------------------------------------------------

# [1,2,3].first

# --------------------------------------------------


# {a: "ant", b: "bear", c: "cat"}.first(2)

# --------------------------------------------------

# [1,2,3].include?(1)

# --------------------------------------------------

# {a: "ant", b: "bear", c: "cat"}.include?("ant")

# --------------------------------------------------

# [1,2,3].partition do |num|
#   num.odd?
# end

# --------------------------------------------------

# odd, even = [1,2,3].partition do |num|
#   num.odd?
# end

# p odd
# p even


# --------------------------------------------------

long, short = {a: "ant", b: "bear", c: "cat"}.partition do |key, value|
  value.size > 3
end

p long.to_h
p short.to_h






