def digit_product(str_num)
  digits = str_num.chars.map { |n| n.to_i }
  product = 0

  digits.each do |digit|
    product *= digit
  end

  product
end


p digit_product('12345')
# expected return value: 120
# actual return value: 0

# The actual return value is 0 because when you multiple anything by 0, which is the starting value of product, the result is 0. What happens when each method is called on the digits array is that we multiply 0 by 1, which is 0, and this 0 gets reassigned to the product variable. Then we multiple 0 by 2, which is 0, and this 0 gets reassigned to the product variable. And so on...

# To fix this, initialize the product variable to 1 on line 3.  