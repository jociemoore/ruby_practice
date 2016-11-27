# => I want to write out my path before starting each problem.
# => TEST OFTEN!!!
# => I want to stop if I start hack and slashing --> 1) Am I on the wrong path? --> pseudo code 2) Am I learning how a method works? --> irb
# => I want to decribe all my answers afterwards.

# ------------------------
# Welcome Stranger
# ------------------------

#input: array of 2 or more items, hash with 2 keys
#output: string
#happy path
# join the name array into one variable
# concatenate the sentence together

# def greetings(name, details)
#   fullname = name.join(' ')
#   'Hello, ' + fullname + '! Nice to have a ' + details[:title] + ' ' + details[:occupation] + ' around.'
# end

# p greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
# => Hello, John Q Doe! Nice to have a Master Plumber around.

# => Solution Description: First, I used the join method to combine the elementes in the name array into one string and stored it in the fullname variable. Then I concatenated (with the + method) the string literals,  variable, and element references to form the sentence. The method return this sentence.

# Further Exploration

# def greetings(name, status)
#   fullname = name.join(' ')
#   title = status[:title]
#   job = status[:occupation]
#   "Hello, #{fullname}! Nice to have a #{title} #{job} around."
# end

# p greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })

# ------------------------
# Double Doubles
# ------------------------

#input: integer
#output: integer
#rules:
# => double numbers should be returned as is. 
#happy path
# argument = number
# => check if number is a double number: turn to string --> does the number consist of an even number of digits? 
# => true a)split in two b)compare 2 sides --> match?
# => if true, return number
# => if no, double_num = false 
# => number consists of odd numbers, double_num = false
# => if double_num == false, multiply number by 2
# => return number

# def twice(number)
#   num_str = number.to_s
#   if num_str.size.even?
#     half = num_str.size / 2 
#     if num_str[0..half - 1] != num_str[half..-1]
#       double_num = false
#     end
#   else
#     double_num = false
#   end
#   number = number * 2 if double_num == false
#   number
# end

# p twice(37) == 74
# p twice(44) == 44
# p twice(334433) == 668866
# p twice(444) == 888
# p twice(107) == 214
# p twice(103103) == 103103
# p twice(3333) == 3333
# p twice(7676) == 7676
# p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
# p twice(5) == 10

# => Solution Description: First, I converted number to a string so that I could count the digits with the size method. The if statement then checks to see if the string size is an even number with the even? method. If not, number is not a double number so double_num is set to false, and therefore number gets multiplied by 2 is reassigned to this value. If the string size is even, I then get the inde number for the digit just right of half the string size. Then, I check to see if the first half of the string equals the second half of the string by referenceing the string parts with a range. Double_num is set to false if there is no match, which means number gets multiplied by 2 and reassigned to this value. Number is returned in all cases.

# ------------------------
# Always Return Negative
# ------------------------

# def negative(number)
#   number = -number if number > 0
#   number
# end

# p negative(5) == -5
# p negative(-3) == -3
# p negative(0) == 0  

# => Solution Description: Whoops, I forgot to do the prep work on this problem. Only if number is greater than 0 do I reassign number to the negative of itself. Number is returned in all cases.

# Further Exploration
# => I like the conciseness! At this stage, I always seem to come up with the most round about way to solve the problem. For instance, the first solution I had above turned the number into a string, concatenated the dash, and then turned it back into an integer. It worked, but it was messy. Although the proposed solution is short, I think the question of its superiority stems from its readability. Its not intuitive off the bat. Perhaps the best solutions are somewhere between my wordy ones and the clever, short ones.

# ------------------------
# Counting Up
# ------------------------

#input: integer
#output: array of integers
#rules:
# => argument always greater than 0
#happy path
# => create a new array
# => starting at 1, push the parameter to the new array --> do this upto the argument integer
# return the array

# def sequence(number)
#   list = []
#   1.upto(number) { |num| list << num }
#   list
# end

# p sequence(5) == [1, 2, 3, 4, 5]
# p sequence(3) == [1, 2, 3]
# p sequence(1) == [1]

# => Solution Description: First I created an empty array. Then, I used the upto method starting at one to iterate and push each number to the list array until the given integer was reached. The list array is returned.

# Further Exploration
# => With an argument of -1, my method returns an empty array.

# def sequence(number)
#   list = []
#   1.upto(number.abs) { |num| list << num }
#   if number < 0 
#     list.map! { |num| -num }
#     list.unshift(0)
#   end
#   list
# end


# p sequence(-5) 

# ------------------------
# Uppercase Check
# ------------------------

#input: string
#output: true/false
#rules:
# => non-alphabetic characters should be ignored.
#happy path:
# => check that the argument equals the argument to upcase

# def uppercase?(string)
#   string == string.upcase
# end

# p uppercase?('t') == false
# p uppercase?('T') == true
# p uppercase?('Four Score') == false
# p uppercase?('FOUR SCORE') == true
# p uppercase?('4SCORE!') == true
# p uppercase?('') == true

# => Solution Description: This one line method checks to see if the given string is equal to the uppercased version of the string. The expression will evaluate to true or false depending on the argument and therefore return the appropriate boolean.

# Further Exploration
# => Whether or not an empty strind should return true or false probably depends on how you wish to use this method in a program. If all that matters is that there are no lowercase characters in the string then I think the method is fine written as it. If, however, what mattered is that you know alphabetical chracters exist in the argument AND they are all uppercase, then I think the method should return false when an empty string is passed to the uppercase? method.


# ------------------------
# How long are you?
# ------------------------

#input: string
#output: array of words and word lengths
#happy path
# create a new array count
# => split the string by words
# => iterate thru the new array (formed by the split method), get the size of each string, concatenate the string itself and the string.size to the count array
# => return the count array

# def word_lengths(string)
#   count = []
#   string.split(' ').each do |word|
#     count << "#{word} #{word.size}"
#   end
#   count
# end

# p word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

# p word_lengths("baseball hot dogs and apple pie") ==
#   ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

# p word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

# p word_lengths("Supercalifragilisticexpialidocious") ==
#   ["Supercalifragilisticexpialidocious 34"]

# p word_lengths("") == []

# => Solution Description: First, I created a new array to hold each word and their word count. Then, I split the string into words, which formed a new array I could iterate through. I iterated through each word and pushed it and its size to the count array using the shovel operator. The count array is returned.

# ------------------------
# Name Swapping
# ------------------------

#input: string -> firstname lastname
#output: string -> lastname, firstname
#happy path
# => split the string 
# => reverse the resulting array
# => join with ', '

# def swap_name(name)
#   name.split.reverse.join(', ')
# end  

# p swap_name('Joe Roberts') #== 'Roberts, Joe'

# => Solution Description: Here I split the name string, which gave me an array of words (without an argument the split method will split at whitespace). I then reversed the elements in the array and joined them together with a comma and a space. Since there is only one line to the method the reversed name as a string is returned.

# ------------------------
# Sequence Count
# ------------------------

#input: 2 integers -> a count and the starting number
#output: array with count elements; elements are multiples of the starting number
#rules:
# => count always > 0
# => if count == 0 --> return value == an empty array
#happy path
# => create a new empty array multiples
# => iterate count times, pushing starting number * the iteration to the multiples array
# return multiples array

# def sequence(count, first)
#   multiples = []
#   (1..count).each do |num|
#     multiples << first * num
#   end
#   multiples
# end

# def sequence(count, first)
#   (1..count).to_a.map! { |num| first * num }
# end

# p sequence(5, 1) == [1, 2, 3, 4, 5]
# p sequence(4, -7) == [-7, -14, -21, -28]
# p sequence(3, 0) == [0, 0, 0]
# p sequence(0, 1000000) == []


# => Solution Description: I wrote the solution that I laid out in the prep above. Then I remembered something that Dalton said in a study session recently -- that when he initializes an empty array, pushes elements to it, and then returns it, he usually gets the feeling he could use the map method instead. So I tried it, it worked, and the solution is much more concise. I used a range up to count and converted it to an array. Then, I iterated through the array using map! and changed the values in the elements by multiplying them by the starting number. Becuase this is the only line in the method the mutated array is returned.

# ------------------------
# Grade Book
# ------------------------

#input: 3 integers
#output: a string -> the letter grade
#rules: 
# => 90 <= score <= 100  --> 'A'
# => 80 <= score < 90    --> 'B'
# => 70 <= score < 80    --> 'C'
# => 60 <= score < 70    --> 'D'
# => 0 <= score < 60     --> 'F'
#happy path
# => determine the average of the 3 grades
# => use a case statement to determine the letter grade
# => the case that evaluates to true will return the appropriate letter grade value

# def get_grade(grade1, grade2, grade3)
#   average = (grade1 + grade2 + grade3) / 3
#   case 
#   when 100 < average                    then 'A++'
#   when 90 <= average && average <= 100  then 'A'
#   when 80 <= average && average <  90   then 'B'
#   when 70 <= average && average <  80   then 'C'
#   when 60 <= average && average <  70   then 'D'
#   else                                       'F'
#   end
# end

# p get_grade(95, 90, 93)  #== "A"
# p get_grade(50, 50, 95)  #== "D"
# p get_grade(105, 99, 103)  #== "A++"

# => Solution Description: Here I calculated the average and storded the value in the variable average. Then I wrote a case statement that returns the appropriate letter string based on the expression that evaluates to true.


# ------------------------
# Grocery List
# ------------------------

#input: array of arrays --> list of fruit and quantities
#output: array of strings for every fruit
#happy path:
# => create new array complete_list
# => iterate through the given array
# => take arr[1] and push arr[0] to complete_list that many times
# => return complete_list

def buy_fruit(list)
  complete_list = []
  list.each do |item|
    item[1].times do 
      complete_list << item[0]
    end
  end
  complete_list
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) == ["apples", "apples", "apples", "orange", "bananas","bananas"]

# => Solution Description: First, I created a new empty array called complete_list. Then, I iterated through the given array with the each method and pushed the value in the 0 index position to the complete_list the number of times specified in the 1 index position. Lastly, I returned the complete_list array.
