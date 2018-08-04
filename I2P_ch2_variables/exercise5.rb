# x = 0 
# 3.times do
#   x += 1
# end
# puts x 

# no error, x = 3

# y = 0 
# 3.times do
#   y += 1 
#   x = y
# end
# puts x

# error: undefined local variable or method 'x' 
# We get this error because the x variable is not available outside the do/end block.