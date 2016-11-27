# ------------------------
# Sum of Sums
# ------------------------

# def sum_of_sums(numbers)
#   sums = []
#   sum = 0
#   index = 0
#   loop do
#     sum += numbers[index]
#     sums << sum
#     break if index == numbers.size - 1
#     index += 1
#   end
#   sums.inject(:+)
# end

# p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
# p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
# p sum_of_sums([4]) == 4
# p sum_of_sums([1, 2, 3, 4, 5]) == 35


# ------------------------
# Madlibs
# ------------------------

# def prompt(message)
#   print "=> #{message}"
# end

# prompt('Enter a noun: ')
# noun = gets.chomp
# prompt('Enter a verb: ')
# verb = gets.chomp
# prompt('Enter an adjective: ')
# adjective = gets.chomp
# prompt('Enter an adverb: ')
# adverb = gets.chomp

# prompt("I have a #{adjective} #{noun} that #{verb} #{adverb}.\n")


# ------------------------
# Leading Substrings
# ------------------------

# def substrings_at_start(string)
#   substrings = []
#   (string.size).times do |num|
#     substrings << string.slice(0, num + 1)
#   end
#   substrings
# end

# p substrings_at_start('abc') == ['a', 'ab', 'abc']
# p substrings_at_start('a') == ['a']
# p substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']

# ------------------------
# All Substrings
# ------------------------

# def substrings_at_start(string, start)
#   substrings = []
#   (string.size - start).times do |num|
#     substrings << string.slice(start, num + 1)
#   end
#   substrings
# end

# def substrings(string)
#   all_substrings = []
#   start = 0 
#   loop do
#     all_substrings << substrings_at_start(string, start)
#     break if start == string.size - 1 
#     start += 1
#   end
#   all_substrings.flatten
# end

# p substrings('abcde') == [
#   'a', 'ab', 'abc', 'abcd', 'abcde', 
#   'b', 'bc', 'bcd', 'bcde',
#   'c', 'cd', 'cde',
#   'd', 'de',
#   'e'
# ]

# ------------------------
# Palindromic Substrings
# ------------------------

# def substrings_at_start(string, start)
#   substrings = []
#   (string.size - start).times do |num|
#     substrings << string.slice(start, num + 1)
#   end
#   substrings
# end

# def substrings(string)
#   all_substrings = []
#   start = 0 
#   loop do
#     all_substrings << substrings_at_start(string, start)
#     break if start == string.size - 1 
#     start += 1
#   end
#   all_substrings.flatten
# end

# def palindromes(string)
#   substrings(string).select do |substring| 
#     substring.size > 1 && (substring == substring.reverse)
#   end
# end

# p palindromes('abcd') == []
# p palindromes('madam') == ['madam', 'ada']
# p palindromes('hello-madam-did-madam-goodbye') == [
#   'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
#   'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
#   '-madam-', 'madam', 'ada', 'oo'
# ]
# p palindromes('knitting cassettes') == [
#   'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
# ]


# # Further Exploration

# def substrings_at_start(string, start)
#   substrings = []
#   (string.size - start).times do |num|
#     substrings << string.slice(start, num + 1)
#   end
#   substrings.map! do |phrase|
#     letters = phrase.split('').map do |letter|
#       letter.replace(' ') if letter !~ (/^[A-Za-z]/)
#       letter
#     end
#     if letters.first == ' ' 
#       letters.delete_at(0)
#       letters.delete_at(-1)
#     end
#     letters.join
#   end
# end

# def substrings(string)
#   all_substrings = []
#   start = 0 
#   loop do
#     all_substrings << substrings_at_start(string, start)
#     break if start == string.size - 1 
#     start += 1
#   end

#   all_substrings.flatten
# end

# def palindromes(string)
#   p_str = substrings(string).select do |substring| 
#     substring.size > 1 && (substring == substring.reverse)
#   end
# end


# p palindromes('hello-madam-did-madam-goodbye') == [
#   'll', 'madam', 'madam did madam', 'madam', 'madam did madam', 'ada',
#   'adam did mada', 'dam did mad', 'am did ma', 'm did m', 'did', 'did',
#   'madam', 'madam', 'ada', 'oo'
# ]

# ------------------------
# fizzbuzz
# ------------------------

# def fizzbuzz(first, last)
#   list = []
#   first.upto(last) do |num|
#     if num % 3 == 0 && num % 5 == 0 
#       list << 'FizzBuzz'
#     elsif num % 3 == 0
#       list << 'Fizz'
#     elsif num % 5 == 0
#       list << 'Buzz' 
#     else
#       list << num
#     end
#   end
#   list.join(', ')
# end

# p fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz

# ------------------------
# Double Char (Part 1)
# ------------------------

# def repeater(string)
#   string.split('').map! { |letter| letter + letter }.join
# end

# p repeater('Hello') == "HHeelllloo"
# p repeater("Good job!") == "GGoooodd  jjoobb!!"
# p repeater('') == ''

# ------------------------
# Double Char (Part 2)
# ------------------------

# def double_consonants(string)
#   result = ''
#   string.split('').each do |char|
#     if char !~ /[aeiou]/ && char =~ /[A-Za-z]/
#       result << char << char
#     else
#       result << char
#     end
#   end
#   result
# end

# p double_consonants('String') == "SSttrrinngg"
# p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
# p double_consonants("July 4th") == "JJullyy 4tthh"
# p double_consonants('') == ""

# ------------------------
# Convert number to reversed array of digits
# ------------------------

# def reversed_number(num)
#   num.to_s.reverse!.to_i
# end

# p reversed_number(12345) == 54321
# p reversed_number(12213) == 31221
# p reversed_number(456) == 654
# p reversed_number(12000) == 21 # Note that zeros get dropped!
# p reversed_number(1) == 1

# Further Exploration
# => The one liner was my first solution and came pretty naturally. However, its a dense solution and perhaps not easy for another person to digest or even for myself to read if I come back to this problem in a few months.

# ------------------------
# Get The Middle Character
# ------------------------
require 'pry'

def center_of(string)
  middle_char_index = string.size / 2.0
  if middle_char_index.to_i == middle_char_index
    middle_right = string[middle_char_index]
    middle_left = string[middle_char_index - 1]   
    [middle_left, middle_right].join
  else
    string[middle_char_index.floor].to_s
  end
end

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'
