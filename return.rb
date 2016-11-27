# ----------------------
# Breakfast, Lunch, or Dinner? (Part 1)
# ----------------------
# def meal
#   return 'Breakfast'
# end

# puts meal

# => Breakfast; The code above prints 'Breakfast' because the value is explicitly returned (its also the last line of the method).

# ----------------------
# Breakfast, Lunch, or Dinner? (Part 2)
# ----------------------

# def meal
#   'Evening'
# end

# puts meal

# => Evening; The code above prints 'Evening' because it is the last line of the method.

# ----------------------
# Breakfast, Lunch, or Dinner? (Part 3)
# ----------------------

# def meal
#   return 'Breakfast'
#   'Dinner'
# end

# puts meal

# => Breakfast; The code above prints 'Breakfast' because the value is explicitly returned. The lines following the return are never executed.

# ----------------------
# Breakfast, Lunch, or Dinner? (Part 4)
# ----------------------

# def meal
#   puts 'Dinner'
#   return 'Breakfast'
# end

puts meal

# => Dinner
# => Breakfast

# => The puts within the method outputs Dinner and Breakfast is explicitly returned and printed by the puts at the method invocation.

# ----------------------
# Breakfast, Lunch, or Dinner? (Part 5)
# ----------------------

# def meal
#   'Dinner'
#   puts 'Dinner'
# end

# p meal

# => Dinner
# => nil

# => The puts within the method prints Dinner, but the return value of the method and the last line of code is nil. The p at method invocation prints nil.


# ----------------------
# Breakfast, Lunch, or Dinner? (Part 6)
# ----------------------

# def meal
#   return 'Breakfast'
#   'Dinner'
#   puts 'Dinner'
# end

# puts meal

# => Breakfast; The method return Breakfast in the first line of the method and then exits the method. The following lines are never executed. 

# ----------------------
# Counting Sheep (Part 1)
# ----------------------

# def count_sheep
#   5.times do |sheep|
#     puts sheep
#   end
# end

# puts count_sheep

# => 0
# => 1
# => 2
# => 3
# => 4
# => 5

# => times method passes in values from 0 to the integer given minus 1. The times method also returns itself which is printed with the puts at the method invocation because the times block is the last line of code executed.

# ----------------------
# Counting Sheep (Part 1)
# ----------------------

# def count_sheep
#   5.times do |sheep|
#     puts sheep
#   end
#   10
# end

# puts count_sheep

# => 0
# => 1
# => 2
# => 3
# => 4
# => 10

# => times method passes in values from 0 to the integer given minus 1. 10 is printed as the last value because it is the last line executed in the method.

# ----------------------
# Counting Sheep  (Part 1)
# ----------------------

# def count_sheep
#   5.times do |sheep|
#     puts sheep
#     if sheep >= 2
#       return
#     end
#   end
# end

# p count_sheep

# => 0
# => 1
# => 2
# => nil


# The 0 through 2 is printed before the conditional expression evaluates to true and return exits the method. The return value is nil as the keyword is used by iteself.

# ----------------------
# Tricky Number
# ----------------------

def tricky_number
  if true
    number = 1
  else
    2
  end
end

puts tricky_number

# => the if condition will we evaluated but I don't think the tricky number is going to return number = 1 because its no a string. 
