# --------------------
# Part 1
# --------------------

# a = 7

# def my_value(b)
#   b += 10
# end

# my_value(a)
# puts a

# => 7; reassignment does not mutate the object

# --------------------
# Part 2
# --------------------

# a = 7

# def my_value(a)
#   a += 10
# end

# my_value(a)
# puts a

# => 7; reassignment does not mutate the object; the 'a' parameter is a different variable than the 'a' variable outside the method

# --------------------
# Part 3
# --------------------

# a = 7

# def my_value(b)
#   a = b
# end

# my_value(a + 5)
# puts a

# => 7; reassignment does not mutate the object


# --------------------
# Part 4
# --------------------

# a = "Xyzzy"

# def my_value(b)
#   b[2] = '-'
# end

# my_value(a)
# puts a

# => "Xy-zy"; []= is a mutating method and strings are mutable objects

# --------------------
# Part 5
# --------------------

# a = "Xyzzy"

# def my_value(b)
#   b = 'yzzyX'
# end

# my_value(a)
# puts a

# => "Xyzzy"; reassignment does not mutate the object

# --------------------
# Part 6
# --------------------

# a = 7

# def my_value(b)
#   b = a + a
# end

# my_value(a)
# puts a

# => an error related to an undefined variable will occur; 'a' is not passed into the method

# --------------------
# Part 7
# --------------------

# a = 7
# array = [1, 2, 3]

# array.each do |element|
#   a = element
# end

# puts a

# => 3; 'a' is accessible within the block; the last iteration of the each method reassigns 'a' to 3

# --------------------
# Part 8
# --------------------

# array = [1, 2, 3]

# array.each do |element|
#   a = element
# end

# puts a

# => an error related to an undefined variable will occur; 'a' is not defined outside the block and therefore you cannot call the puts method on it in the last line of the program 


# --------------------
# Part 9
# --------------------

# a = 7
# array = [1, 2, 3]

# array.each do |a|
#   a += 1
# end

# puts a

# => 7; the 'a' argument for the each method is a different variable than the 'a' variable defined outside the block

# --------------------
# Part 10
# --------------------

a = 7
array = [1, 2, 3]

def my_value(ary)
  ary.each do |b|
    a += b
  end
end

my_value(array)
puts a

# => an error related to an undefined variable will occur; 'a' is not passed into the method. 

