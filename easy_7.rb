# ------------------------
# Combine Two Lists
# ------------------------

# def interleave(arr1, arr2)
#   arr1.zip(arr2).flatten
# end

# p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

# ------------------------
# Lettercase Counter
# ------------------------

# def letter_case_count(str)
#   status = {}
#   lower = 0
#   upper = 0
#   non_alpha = 0 
#   str.each_char do |letter|
#     lower += 1 if letter.match(/^[a-z]/)
#     upper += 1 if letter.match(/^[A-Z]/)
#     non_alpha += 1 if !letter.match(/^[A-Za-z]/)
#   end
#   status[:lowercase] = lower
#   status[:uppercase] = upper
#   status[:neither] = non_alpha
#   status
# end

# p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
# p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
# p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
# p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }

# ------------------------
# Capitalize Words
# ------------------------

# def word_cap(str)
#   str.split.map(&:capitalize).join(' ')
# end

# p word_cap('four score and seven') == 'Four Score And Seven'
# p word_cap('the javaScript language') == 'The Javascript Language'
# p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

# Further Exploration

# def word_cap(str)
#   new_str = str.split.map do |word|
#     letters = word.split('').map(&:downcase)
#     letters[0].upcase!
#     word = letters.join('')
#   end
#   new_str.join(' ')
# end

# p word_cap('four score and seven') == 'Four Score And Seven'
# p word_cap('the javaScript language') == 'The Javascript Language'
# p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'


# ------------------------
# Swap Case
# ------------------------

# def swapcase(str)
#   new_str = str.split.map do |word|
#     letters = word.split('').map do |letter|
#       if letter.match(/^[a-z]/)
#         letter.upcase
#       elsif letter.match(/^[A-Z]/)
#         letter.downcase
#       else
#         letter
#       end
#     end
#     word = letters.join('')
#   end
#   new_str.join(' ')
# end

# p swapcase('CamelCase') == 'cAMELcASE'
# p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'

# ------------------------
# Staggered Caps (Part 1)
# ------------------------

# def staggered_case(str)
#   new_str = str.split('').each_with_index do |char, index|
#     char.upcase! if index.even? 
#     char.downcase! if index.odd?
#   end
#   new_str.join
# end

# p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
# p staggered_case('ALL_CAPS') == 'AlL_CaPs'
# p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

# Further Exploration

# def staggered_case(string, first: 'up')
#   result = ''
#   if first == 'down'
#     need_upper = false 
#   else
#     need_upper = true
#   end
#   string.chars.each do |char|
#     if need_upper
#       result += char.upcase
#     else
#       result += char.downcase
#     end
#     need_upper = !need_upper
#   end
#   result
# end

# p staggered_case('I Love Launch School!', first: 'down') #== 'I LoVe lAuNcH ScHoOl!'


# ------------------------
# Staggered Caps (Part 2)
# ------------------------

# def staggered_case(string)
#   result = ''
#   need_upper = true
#   string.chars.each do |char|
#     if need_upper
#       result += char.upcase
#     else 
#       result += char.downcase
#     end
#     need_upper = !need_upper if char =~ (/^[a-zA-Z]/)
#   end
#   result
# end


# p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
# p staggered_case('ALL CAPS') == 'AlL cApS'
# p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'


# Further Exploration

# def staggered_case(string, non_Alphas: 'off')
#   result = ''
#   need_upper = true
#   string.chars.each do |char|
#     if need_upper
#       result += char.upcase
#     else 
#       result += char.downcase
#     end
#     if non_Alphas == 'off'
#       need_upper = !need_upper if char =~ (/^[a-zA-Z]/)
#     else
#       need_upper = !need_upper
#     end
#   end
#   result
# end


# p staggered_case('I Love Launch School!', non_Alphas: 'on') #== 'I lOvE lAuNcH sChOoL!'
# p staggered_case('ALL CAPS') #== 'AlL cApS'
# p staggered_case('ignore 77 the 444 numbers') #== 'IgNoRe 77 ThE 444 nUmBeRs'


# ------------------------
# Multiplicative Average
# ------------------------

# def show_multiplicative_average(arr)
#   result = (arr.inject(:*) / arr.size.to_f)
#   p "The result is #{format('%.3f', result)}"
# end 

# show_multiplicative_average([3, 5])
# # The result is 7.500

# show_multiplicative_average([2, 5, 7, 11, 13, 17])
# # The result is 28361.667

# Further Exploration 
# => Without the .to_f on the first line of the proposed solution (and in my solution), the printed result will have 3 decimal points, but they will always equal zero. In this scenario, the math would be performed with integers and the decimal points slapped on in the end with Kernel#format.


# ------------------------
# Multiply Lists
# ------------------------

# def multiply_list(arr1, arr2)
#   new_arr = []
#   arr1.each_with_index do |num, index|
#     new_arr << num * arr2[index]
#   end
#   new_arr
# end

# p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]

# Further Exploration

# def multiply_list(arr1, arr2)
#   arr1.zip(arr2).map { |list| list.inject(:*) }
# end

# p multiply_list([3, 5, 7], [9, 10, 11]) #== [27, 50, 77]

# ------------------------
# Multiple All Pairs
# ------------------------

# def multiply_all_pairs(list1, list2)
#   products = list1.product(list2).map { |list| list.inject(:*) }.sort
# end

# p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]

# Further Exploration
# => I used the product method in my solution in order to get arrays of all the possible combinations of integers. Then, I iterated through each array with the map method which transformed the array into one value, the product of the two integers. I did this using the inject method. Finally, I used the sort method to order intergers. 

# ------------------------
# The End is Near But Not Here
# ------------------------

# def penultimate(str)
#   str.split[-2]
# end

# p penultimate('last word') == 'last'
# p penultimate('Launch School is great!') == 'is'

# Further Exploration

def middle_word(str)
  words = str.split
  if words.size <= 1 || words.size.even?
    ''
  else
    middle_index = (words.size / 2).ceil
    words[middle_index]
  end
end

p middle_word('Launch School is the best!') == 'is'
p middle_word('Launch School is great!') == ''
p middle_word('word') == ''
p middle_word('') == ''
