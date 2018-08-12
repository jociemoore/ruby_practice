# -----------
# Buggy Code
# -----------

numbers = [5, 2, 9, 6, 3, 1, 8]

even_numbers = numbers.map do |n|
  n if n.even?
end

p even_numbers # expected output: [2, 6, 8]


# The code is not producing the expected output because it uses the map method. The map method is used for transformation and will return a new array that is the same length as the array it was called on. The output here is [nil, 2, nil, 6, nil, nil, 8]


# -----------------
# Refactored Code
# -----------------


numbers = [5, 2, 9, 6, 3, 1, 8]

even_numbers = numbers.select do |n|
  n.even?
end

p even_numbers # expected output: [2, 6, 8]
