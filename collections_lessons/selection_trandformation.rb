# alphabet = 'abcedefghijklmnopqrstuvwxyz'
# selected_chars = '' 
# counter = 0 

# loop do
#   current_char = alphabet[counter]

#   if current_char == 'g'
#     selected_chars << current_char
#   end 

#   counter += 1
#   break if counter == alphabet.size
# end 

# p selected_chars

# --------------------------------------------------


# fruits = ['apple', 'banana', 'pear']
# transformed_elements = []
# counter = 0

# loop do
#   current_element = fruits[counter]

#   transformed_elements << current_element + 's'

#   counter += 1
#   break if counter == fruits.size
# end 

# p transformed_elements

# --------------------------------------------------

# def select_vowels(str)
#   selected_chars = '' 
#   counter = 0 

#   loop do
#     current_char = str[counter]

#     if 'aeiouAEIOU'.include?(current_char)
#       selected_chars << current_char
#     end

#     counter += 1
#     break if counter == str.size
#   end
#   selected_chars
# end

# p select_vowels('the quick brown fox')

# sentence = ' I wandered lonely as a cloud'
# p select_vowels(sentence)

# number_of_vowels = select_vowels('hello world').size
# p number_of_vowels


# --------------------------------------------------

# def select_fruit(list)
#   items = list.keys
#   counter = 0
#   fruits = {}

#   loop do
#     break if counter == list.size

#     current_item = items[counter]

#     if list[current_item] == 'Fruit'
#       fruits[current_item] = 'Fruit'
#     end

#     counter += 1
#   end  
#   fruits
# end

# produce = {
#   'apple' => 'Fruit',
#   'carrot' => 'Vagetable',
#   'pear' => 'Fruit',
#   'broccoli' => 'Vegetable'
# }

# p select_fruit(produce)

# --------------------------------------------------

# def double_numbers!(numbers)
#   counter = 0

#   loop do 
#     break if counter == numbers.size

#     numbers[counter] *= 2
    
#     counter += 1
#   end
#   numbers
# end

# my_numbers = [1, 4, 3, 7, 2, 6]
# p double_numbers!(my_numbers)
# p my_numbers

# --------------------------------------------------

# def double_odd_numbers(numbers)
#   doubled_numbers = []
#   counter = 0

#   loop do
#     break if counter == numbers.size

#     current_number = numbers[counter]
#     current_number *= 2 if numbers.index(current_number).odd?
#     doubled_numbers << current_number

#     counter += 1
#   end

#   doubled_numbers
# end

# my_numbers = [1, 4, 3, 7, 2, 6]
# p double_odd_numbers(my_numbers)
# p my_numbers

# --------------------------------------------------

# def general_select(produce_list, selection_criteria)
#   produce_keys = produce_list.keys
#   counter = 0
#   selected_fruits = {}

#   loop do
#     break if counter == produce_keys.size

#     current_key = produce_keys[counter]
#     current_value = produce_list[current_key]

#     if current_value == selection_criteria
#       selected_fruits[current_key] = current_value
#     end 

#     counter += 1
#   end

#   selected_fruits
# end


# produce = {
#   'apple' => 'Fruit',
#   'carrot' => 'Vegetable',
#   'pear' => 'Fruit',
#   'broccoli' => 'Vegetable'
# }

# p general_select(produce, 'Fruit')
# p general_select(produce, 'Vegetable')
# p general_select(produce, 'Meat')


# --------------------------------------------------

# def multiply(numbers, multiplier)
#   counter = 0

#   loop do 
#     break if counter == numbers.size

#     numbers[counter] *= multiplier
    
#     counter += 1
#   end
#   numbers
# end

# my_numbers = [1, 4, 3, 7, 2, 6]
# p multiply(my_numbers, 3)

# --------------------------------------------------

# def select_letter(sentence, character)
#   selected_chars = ''
#   counter = 0

#   loop do
#     break if counter == sentence.size
#     current_char = sentence[counter]

#     if current_char == character
#       selected_chars << current_char
#     end

#     counter += 1
#   end

#   selected_chars
# end

# question = 'How many times does a particular character appear in this sentence?'
# p select_letter(question, 'a').size
# p select_letter(question, 't').size
# p select_letter(question, 'z').size


# --------------------------------------------------

alphabet = 'abcedefghijklmnopqrstuvwxyz'

for char in alphabet.chars
  puts char
end







