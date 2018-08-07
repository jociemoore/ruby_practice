def find_first_nonzero_among(numbers)
  numbers.each do |n|
    return n if n.nonzero?
  end
end

# Examples

find_first_nonzero_among(0, 0, 1, 0, 2, 0)
find_first_nonzero_among(1)

# The error message for the first example is the following:
# error_messages.rb:1:in `find_first_nonzero_among': wrong number of arguments (given 6, expected 1) (ArgumentError)
#   from error_messages.rb:9:in `<main>'
# In this example, 0 0 1 0 2 and 0 are passed as arguments to the find_first_nonzero_among method. The first zero is assigned to the local variable numbers and then an ArgumentError occurs because this method is only expecting one argument.


# The error message for the second example is the following:
# error_messages.rb:2:in `find_first_nonzero_among': undefined method `each' for 1:Integer (NoMethodError)
#   from error_messages.rb:10:in `<main>'
# In this example, 1 is passed as an argument to the find_first_nonzero_among method and assigned to the local variable numbers. Then, the each method is called on the numbers variable and a NoMethodError occurs because the each method is not defined on the Integer class or any of its parent classes.