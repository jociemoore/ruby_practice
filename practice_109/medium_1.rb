# -----------------------
# Rotation (Part 1)
# -----------------------

# def rotate_array(array)
#   clone = array.clone
#   clone << clone.shift
# end

# Test Cases:
# -----------

# p rotate_array([7, 3, 5, 2, 9, 1])  == [3, 5, 2, 9, 1, 7]
# p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
# p rotate_array(['a']) == ['a']

# Further Exploration
# --------------------

# def rotate_string(string)
#   rotate_array(string.chars).join
# end

# def rotate_integer(number)
#   rotate_array(number.to_s.chars).join.to_i
# end

# Test Cases:
# -----------

# p rotate_string('hello')
# p rotate_integer(12345)

# ------------------------
# Rotation (Part 2)
# ------------------------

# def rotate_array(array)
#   array[1..-1] + [array[0]]
# end

# def rotate_rightmost_digits(integer, n)
#   digits = integer.to_s.chars
#   substring = digits.slice!(-n, n)
#   digits << rotate_array(substring)
#   digits.join.to_i
# end

# Test Cases:
# -----------

# p rotate_rightmost_digits(735291, 1) == 735291
# p rotate_rightmost_digits(735291, 2) == 735219
# p rotate_rightmost_digits(735291, 3) == 735912
# p rotate_rightmost_digits(735291, 4) == 732915
# p rotate_rightmost_digits(735291, 5) == 752913
# p rotate_rightmost_digits(735291, 6) == 352917

# ------------------------
# Rotation (Part 3)
# ------------------------

# def rotate_array(array)
#   array[1..-1] + [array[0]]
# end

# def rotate_rightmost_digits(number, n)
#   all_digits = number.to_s.chars
#   all_digits[-n..-1] = rotate_array(all_digits[-n..-1])
#   all_digits.join.to_i
# end

# def max_rotation(integer)
#   digits = integer.to_s
#   count = digits.size
#   loop do
#     integer = rotate_rightmost_digits(integer, count)
#     break if count == 1 
#     count -= 1 
#   end
#   integer
# end

# Test Cases:
# -----------

# p max_rotation(735291) == 321579
# p max_rotation(3) == 3
# p max_rotation(35) == 53
# p max_rotation(105) == 15 # the leading zero gets dropped
# p max_rotation(8_703_529_146) == 7_321_609_845


# Further Exploration:
# -------------------

# => Breaking the problem up into the 3 parts definitely made the problem easier to understand. I didn't know exactly what functionality we were heading towards, but at each stage I only had to worry about adding one piece. It also force me to use multiple methods where I probably would have defaulted to one and then asked 'is this method doing too much'.

# => If I didn't have the rotate_rightmost_digits and rotate_array methods, my solution would most likely have looked very different. I would have tried do too much from the beginning as I have not practiced the skill of breaking down a problem and tackling one piece at a time. Its still hard for me to see the parts withou the walk through.

# ------------------------
# 1000 Lights
# ------------------------

# def change_switch(position, all_lights)
#   all_lights[position] == 'on' ? new_status = 'off' : new_status = 'on'
#   new_status
# end

# def toggle_or_not(all_lights, total)
#   2.upto(total) do |num|
#     all_lights.each_with_index do |status, index|
#       status.replace(change_switch(index, all_lights)) if (index + 1) % num == 0
#     end
#   end
# end

# def report(lights)
#   on = []
#   off = []
#   lights.each_with_index{ |on_off, i | on << (i + 1) if on_off == 'on' }
#   lights.each_with_index{ |on_off, i | off << (i + 1) if on_off == 'off' }
#   on[-1] = on[-1].to_s.prepend('and ')
#   off[-1] = off[-1].to_s.prepend('and ')
#    "lights #{off.join(', ')} are now off; #{on.join(', ')} are on."
# end


# number = 10
# lights = []
# number.times { lights << 'on' }
# toggle_or_not(lights, number)
# p report(lights)


# ------------------------
# Diamonds!
# ------------------------

# SPACE = ' '
# STAR = '*'

# def print_diamond(grid_size)
#   return puts STAR if grid_size == 1
#   max_padding = (grid_size / 2)
#   number_stars = 1
#   loop do 
#     max_padding.times { print SPACE }
#     number_stars.times { print STAR }
#     puts
#     break if max_padding == 0 
#     max_padding -= 1
#     number_stars += 2
#   end
#   max_padding += 1
#   number_stars -= 2
#   loop do
#     max_padding.times { print SPACE }
#     number_stars.times { print STAR }
#     puts 
#     break if max_padding == (grid_size / 2)
#     max_padding += 1
#     number_stars -= 2
#   end
# end


# Test Cases:
# -----------

# print_diamond(1)
# print_diamond(3)
# print_diamond(9)



# Further Exploration
# -------------------

# def print_row(grid_size, distance_from_center)
#   number_of_stars = grid_size - 2 * distance_from_center
#   stars = '*' * number_of_stars
#   all_stars = stars.chars
#   all_stars.each_with_index do |star, index| 
#     star.replace(' ') if index != 0 && index != all_stars.size - 1
#   end
#   puts all_stars.join.center(grid_size)
# end

# def diamond(grid_size)
#   max_distance = (grid_size - 1) / 2
#   max_distance.downto(0) { |distance| print_row(grid_size, distance) }
#   1.upto(max_distance)   { |distance| print_row(grid_size, distance) }
# end

# Test Cases:
# -----------
# diamond(9)

# ------------------------
# Stack Machine Interpretation
# ------------------------

# def minilang(command)
#   operations = command.split
#   register = 0
#   stack = []
#   operations.each do |op|
#     case op
#     when 'PUSH' then stack << register
#     when 'ADD' then register += stack.pop
#     when 'SUB' then register -= stack.pop
#     when 'MULT' then register *= stack.pop
#     when 'DIV' then register /= stack.pop
#     when 'MOD' then register %= stack.pop
#     when 'POP' then register = stack.pop
#     when 'PRINT' then print "#{register} \n"
#     else
#       register = op.to_i
#     end
#   end
#   register
# end

# Test Cases:
# -----------

# # # 0
# minilang('5 PUSH 3 MULT PRINT')
# # 15
# minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# # # 5
# # # 3
# # # 8
# minilang('5 PUSH POP PRINT')
# # # 5
# minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# # # 5
# # # 10
# # # 4
# # # 7
# minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# # # 6
# minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# # # 12
# minilang('-3 PUSH 5 SUB PRINT')
# # # 8
# minilang('6 PUSH')
# # # (nothing printed; no PRINT commands)

# Further Exploration:
# -------------------

#rules:
# => Deal with empty stacks, invalid tokens
# => pass to minilang

# Given -->
# (3 + (4 * 5) - 7) / (5 % 3)
# Goal -->
# 3 PUSH 5 MOD PUSH 7 PUSH 5 PUSH 4 MULT PUSH 3 ADD SUB DIV PRINT
# 3 5 % 7 5 4 * 3 + - / PRINT

# Left Off: Need to remove PUSH after commands when there should be no more numbers; 3 is out of place at the end of the string passed to minilang; ADD never gets pushed to the string; refactor.

# -------------------

# def minilang2(maths)
#   stack = []
#   elements = []
#   temp_op = []
#   register = ''
#   maths.split('').each do |char|
#     case char
#     when '+' then elements << 'ADD'
#     when '-' then elements << 'SUB'
#     when '*' then elements << 'MULT'
#     when '/' then elements << 'DIV'
#     when '%' then elements << 'MOD'
#     else          elements << char
#     end
#   end
#   elements.reverse!.reject { |elem| elem == ' '} 
#   elements.each_with_index do |element,index| 
#     next_elem = elements[index + 1]
#     if (next_elem == nil && element.to_i.to_s == element) 
#       stack << element 
#       until temp_op.empty? 
#         stack << temp_op.pop
#       end
#     elsif next_elem == nil
#       next
#     elsif next_elem == '('
#       stack << element  
#     elsif element.to_i.to_s == element && next_elem != '('
#       stack << "#{element} PUSH"
#     elsif element.match(/[A-Z]/)
#       temp_op << "#{element} PUSH"
#     elsif element == '('
#       until temp_op.empty? 
#         stack << temp_op.pop
#       end
#     end
#   end
#   stack << 'PRINT'
#   stack = stack.join(' ')
#   minilang(stack)
# end


# Test Cases:
# -----------
# # minilang2('3 + (4 * 5)') == 23
# minilang2('(3 + (4 * 5) - 7) / (5 % 3)') #== 8 

# ------------------------
# Word to Digit
# ------------------------

# NUMBER_STRINGS = {'zero' => '0', 'one' => '1', 'two' => '2', 'three' => '3', 'four' => '4', 'five' => '5', 'six' => '6', 'seven' => '7', 'eight' => '8', 'nine' => '9'}

# def word_to_digit(string)
#     words = string.split(' ').each_with_index do |word, index|
#         if word.include?('.') 
#           punctuation = true 
#           word.slice!(-1)
#         end
#         word.replace(NUMBER_STRINGS[word]) if NUMBER_STRINGS.keys.include?(word) 
#         word << '.' if punctuation
#     end
#     words.join(' ')
# end

# Test Cases:
# -----------
# p word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'

# Further Exploration
# -------------------

# DIGIT_HASH = {
#   'zero' => '0', 'one' => '1', 'two' => '2', 'three' => '3', 'four' => '4',
#   'five' => '5', 'six' => '6', 'seven' => '7', 'eight' => '8', 'nine' => '9'
# }.freeze

# def word_to_digit(words)
#   each_word = words.split(/\w+/).zip(words.split(/\s/)).flatten
#   each_word.each_with_index do |word, index|
#     if each_word[index - 1] == nil || each_word[index + 1] == nil
#       next
#     elsif word[-1] == ('.')
#       word.delete!('.')
#     elsif word == ' ' && DIGIT_HASH.keys.include?(each_word[index - 1]) && (DIGIT_HASH.keys.include?(each_word[index + 1]) || DIGIT_HASH.keys.include?(each_word[index + 1].slice(0..-2)))
#       word.replace('')
#     end
#   end
#   each_word.each do |word|
#     word.replace(DIGIT_HASH[word]) if DIGIT_HASH.keys.include?(word)
#   end
#   words = each_word.join
# end

# Test Cases:
# -----------
# p word_to_digit('Please call me at five five five five five five one two three four. Thanks.') 

# Phone number
# ------------

# DIGIT_HASH = {
#   'zero' => '0', 'one' => '1', 'two' => '2', 'three' => '3', 'four' => '4',
#   'five' => '5', 'six' => '6', 'seven' => '7', 'eight' => '8', 'nine' => '9'
# }.freeze

# def phone_number?(string)
#   phrase = string.split
#   old_num = nil
#   new_num = nil
#   phrase.each do |item|
#     item = item.delete('.')
#     if item.to_i.to_s == item && item.size == 10
#       digits = item.split('')
#       digits.insert(0, '(')
#       digits.insert(4, ') ')
#       digits.insert(8, '-')
#       old_num = item
#       new_num = digits.join
#     end
#   end
#   string.gsub!(old_num, new_num)
# end


# def word_to_digit(words)
#   each_word = words.split(/\w+/).zip(words.split(/\s/)).flatten
#   each_word.each_with_index do |word, index|
#     if each_word[index - 1] == nil || each_word[index + 1] == nil
#       next
#     elsif word[-1] == ('.')
#       word.delete!('.')
#     elsif word == ' ' && DIGIT_HASH.keys.include?(each_word[index - 1]) && (DIGIT_HASH.keys.include?(each_word[index + 1]) || DIGIT_HASH.keys.include?(each_word[index + 1].slice(0..-2)))
#       word.replace('')
#     end
#   end
#   each_word.each do |word|
#     word.replace(DIGIT_HASH[word]) if DIGIT_HASH.keys.include?(word)
#   end
#   words = each_word.join
#   phone_number?(words)
# end

# Test Cases:
# -----------
# p word_to_digit('Please call me at five five five five five five one two three four. Thanks.') 



# ------------------------
# Fibonacci Numbers (Recursion)
# ------------------------

# def fibonacci(n)
#   return 1 if n <= 2
#   fibonacci(n - 1) + fibonacci(n - 2)
# end

# Test Cases:
# -----------

# p fibonacci(1) == 1
# p fibonacci(2) == 1
# p fibonacci(3) == 2
# p fibonacci(4) == 3
# p fibonacci(5) == 5
# p fibonacci(12) == 144
# p fibonacci(20) == 6765

# ------------------------
# Fibonacco Numbers (Procedural)
# ------------------------

# def fibonacci(n)
#   return 1 if n <= 2
#   fib = [1,1] 
#   3.upto(n) do 
#     fib << fib[-1] + fib[-2]
#     p fib[-1]
#   end
#   fib[-1]
# end
 
# Test Cases:
# -----------

# p fibonacci(20) == 6765
# p fibonacci(100) == 354224848179261915075
# p fibonacci(100_001)

# ------------------------
# Fibonacci Numbers (Last Digit)
# ------------------------

# def fibonacci(nth)
#   first, last = [1, 1]
#   3.upto(nth) do
#     first, last = [last, first + last]
#   end

#   last
# end

# def fibonacci_last(n)
#   fibonacci(n).to_s.chars.last.to_i
# end

# Test Cases:
# -----------

# p fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
# p fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
# p fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
# p fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
# p fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
# p fibonacci_last(123456789) # -> 4


# Further Exploration
# -------------------

PATTERN = 60

def fibonacci_last(nth)
  pattern_match = nth - (PATTERN * ((nth / PATTERN) - 1))
  last_2 = [1, 1]
  3.upto(pattern_match) do
    last_2 = [last_2.last, (last_2.first + last_2.last) % 10]
  end
  last_2.last
end

p fibonacci_last(123456789) # -> 4
