# ------------------------
# ASCII String Value
# ------------------------

# def ascii_value(string)
#   sum = 0
#   each_value = string.chars.map { |char| char.ord }
#   each_value.each { |num| sum += num }
#   sum
# end

# ascii_value('Four score') == 984
# ascii_value('Launch School') == 1251
# ascii_value('a') == 97
# ascii_value('') == 0

# Further Exploration
# mystery method  = .chr
# With a longer string char.ord.chr returns just the first letter.

# ------------------------
# After Midnight (Part 1)
# ------------------------

# def time_of_day(minutes)
#   hours_minutes = minutes.divmod(60)
#   hr = hours_minutes[0]
#   min = hours_minutes[1]

#   if hr.abs > 24
#     hr = hr % 24
#   end

#   if min.abs > 60
#     min = min % 60
#   end

#   if hr == -24
#     hours = '00'
#   elsif hr >= 0 && hr < 10
#     hours = '0' + hr.to_s 
#   elsif hr >= 10
#     hours = hr.to_s 
#   else
#     hours = (24 + hr).to_s
#   end

#   if min >= 0 && min < 10
#     minutes = '0' + min.to_s 
#   elsif min >= 10
#     minutes = min.to_s 
#   else
#     minutes = (60 + min).to_s
#   end

#   hour_format = hours + ':' + minutes
# end

# p time_of_day(0) == "00:00"
# p time_of_day(-3) == "23:57"
# p time_of_day(35) == "00:35"
# p time_of_day(-1437) == "00:03"
# p time_of_day(3000) == "02:00"
# p time_of_day(800) == "13:20"
# p time_of_day(-4231) == "01:29"


# Further Exploration
# require 'date'

# MINUTES_PER_HOUR = 60
# HOURS_PER_DAY = 24
# MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

# def time_of_day(delta_minutes)
#   day, delta_minutes =  delta_minutes.divmod(MINUTES_PER_DAY)
#   day = 7 + day if day < 0 
#   weekday = Date::DAYNAMES[day]
#   hours, minutes = delta_minutes.divmod(MINUTES_PER_HOUR)
#   time = format('%02d:%02d', hours, minutes)
#   weekday + ' ' + time
# end

# time_of_day(-4231) == 'Thursday 01:29'

# ------------------------
# After Midnight (Part 2)
# ------------------------

SECONDS_PER_MINUTE = 60
MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

# def before_midnight(time)
#   hours_minutes = time.split(':')
#   hours_to_minutes = hours_minutes[0].to_i * MINUTES_PER_HOUR
#   total_minutes = MINUTES_PER_DAY - (hours_to_minutes + hours_minutes[1].to_i)
#   return 0 if total_minutes == MINUTES_PER_DAY
#   total_minutes
# end

# def after_midnight(time)
#   hours_minutes = time.split(':')
#   hours_to_minutes = hours_minutes[0].to_i * MINUTES_PER_HOUR
#   total_minutes = hours_to_minutes + hours_minutes[1].to_i
#   return 0 if total_minutes == MINUTES_PER_DAY
#   total_minutes
# end


# Further Exploration
# require 'time'

# def after_midnight(time_str)
#   hours, minutes = time_str.split(':').map(&:to_i)
#   t = Time.gm(1970, 01,01, hours, minutes, 0)
#   t = t.to_i / SECONDS_PER_MINUTE
#   if t == MINUTES_PER_DAY 
#     t = 0
#   end
#   t
# end

# def before_midnight(time_str)
#   hours, minutes = time_str.split(':').map(&:to_i)
#   t = Time.gm(1970, 01,01, hours, minutes, 0)
#   t = MINUTES_PER_DAY - (t.to_i / SECONDS_PER_MINUTE)
#   if t == MINUTES_PER_DAY 
#     t = 0
#   end
#   t
# end

# p after_midnight('00:00') #== 0
# p before_midnight('00:00') #== 0
# p after_midnight('12:34') #== 754
# p before_midnight('12:34') #== 686
# p after_midnight('24:00') #== 0
# p before_midnight('24:00') #== 0

# ------------------------
# Letter Swap
# ------------------------

# def swap(string)
#   new_words = string.split.map do |word|
#     frozen_word = word
#     frozen_letters = frozen_word.split('')
#     letters = word.split('')
#     new_last = frozen_letters[0]
#     new_first = frozen_letters[-1]
#     letters[0].replace(new_first)
#     letters[-1].replace(new_last)
#     letters.join
#   end
#   new_words.join(' ')
# end

# p swap('Oh what a wonderful day it is') #== 'hO thaw a londerfuw yad ti si'
# p swap('Abcde') #== 'ebcdA'
# p swap('a')  #== 'a'

# Further Exploration

# def swap_first_last_characters(a, b)
#   a, b = b, a
# end

# => If the above method was used, it would return the two swapped letters for each word only.

# ------------------------
# Clean up the words
# ------------------------

# def cleanup(string)
#   new_str = []
#   string.downcase.split('').each_with_index do |letter, index|
#     if !('a'..'z').include?(letter) && new_str[-1] != ' ' 
#       new_str << ' '
#     elsif ('a'..'z').include?(letter)
#       new_str << letter
#     end
#   end
#   new_str.join
# end

# p cleanup("---what's my +*& line?") #== ' what s my line '

# ------------------------
# Letter Counter (Part 1)
# ------------------------

# def word_sizes(string)
#   word_frequency = {}
#   word_length = string.split.map! { |word| word.length }
#   word_length.sort.select do |size| 
#     occurances = word_length.count(size)
#     word_frequency[size] = occurances
#   end
#   word_frequency
# end

# p word_sizes('Four score and seven.')# == { 3 => 1, 4 => 1, 5 p => 1, 6 => 1 }
# p word_sizes('Hey diddle diddle, the cat and the fiddle!') #==p  { 3 => 5, 6 => 1, 7 => 2 }
# p word_sizes("What's up doc?") #== { 6 => 1, 2 => 1, 4 => 1 }
# p word_sizes('') #== {}

# ------------------------
# Letter Counter (Part 2)
# ------------------------

# def word_sizes(words_string)
#   counts = Hash.new(0)
#   words_string.split.each do |word|
#      new_string = ''
#     word.downcase.chars.each do |char| 
#        new_string << char if ('a'..'z').include?(char)
#     end
#     counts[new_string.size] += 1
#   end
#   counts
# end



# p word_sizes('Four score and seven.') #== { 3 => 1, 4 => 1, 5 p => 2 }
# p word_sizes('Hey diddle diddle, the cat and the fiddle!')  #==p  { 3 => 5, 6 => 3 }
# p word_sizes("What's up doc?") #== { 5 => 1, 2 => 1, 3 => 1 }
# p word_sizes('') #== {}

# ------------------------
# Alphabetical Numbers
# ------------------------

# NUMBERS = { 0 => 'zero', 1 => 'one', 2 => 'two', 3 => 'three',
#             4 => 'four', 5 => 'five', 6 => 'six', 
#             7 => 'seven', 8 => 'eight', 9 => 'nine', 
#             10 => 'ten', 11 => 'eleven', 12 => 'twelve', 
#             13 => 'thirteen', 14 => 'fourteen', 
#             15 => 'fifteen', 16 => 'sixteen', 
#             17 => 'seventeen', 18 => 'eighteen', 
#             19 => 'nineteen' }

# def alphabetic_number_sort(array)
#   number_words = NUMBERS.values.sort!
#   number_words.map! { |num_word| NUMBERS.key(num_word) }
# end

# p alphabetic_number_sort((0..19).to_a) == [ 8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17, 6, 16, 10, 13, 3, 12, 2, 0 ]

# Further Exploration
# => sort_by was used instead of sort_by! because sort_by! would mutated the array as you are sorting and therefore return an inaccurate value.

# NUMBER_WORDS = %w(zero one two three four
#                   five six seven eight nine
#                   ten eleven twelve thirteen fourteen
#                   fifteen sixteen seventeen eighteen nineteen)

# def alphabetic_number_sort(numbers)
#   sorted_numbers = NUMBER_WORDS.sort
#   sorted_numbers.map! do |num|
#     num = NUMBER_WORDS.index(num)
#   end
#   sorted_numbers
# end

# p alphabetic_number_sort((0..19).to_a) == [ 8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17, 6, 16, 10, 13, 3, 12, 2, 0 ]


# ------------------------
# ddaaaiillyy ddoouubbllee
# ------------------------

# def crunch(string)
#   string.squeeze
# end

# p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
# p crunch('4444abcabccba') == '4abcabcba'
# p crunch('ggggggggggggggg') == 'g'
# p crunch('a') == 'a'
# p crunch('') == ''


# Further Exploration

# def crunch(text)
#   index = 0
#   crunch_text = ''
#   while index <= text.length - 1
#     crunch_text << text[index] unless text[index] == text[index + 1]
#     index += 1
#   end
#   crunch_text
# end

# p crunch('ddaaiillyy ddoouubbllee')# == 'daily double'

# => when iterating to text.length - 1 you will receive a return value of false because the last letter never gets pushed to the new array. 

# def crunch(text)
#   crunch_text = ''
#   last_char = ''
#   text.each_char do |char|
#     if char != last_char
#       crunch_text << char
#     end
#     last_char = char
#   end
#   crunch_text
# end

# p crunch('ddaaiillyy ddoouubbllee')# == 'daily double'

# => each_char or char was not used originally because you would not have access to index.


# Regex Method
# def crunch(text)
#   crunch_text = ''
#   last_char = ''
#   text.each_char do |char|
#     p %r{#{char}}
#     p %r{#{last_char}}
#     if !%r{#{char}}.match(last_char)
#       crunch_text << char
#     end
#     last_char = char
#   end
#   crunch_text
# end

# p crunch('ddaaiillyy ddoouubbllee')# == 'daily double'

# ------------------------
# Bannerizer
# ------------------------
# def print_border(width)
#   print '+' 
#   dash_counter = 1
#   loop do
#     print '-'
#     break if dash_counter == width - 2
#     dash_counter += 1
#   end
#   puts '+'
# end

# def print_whitespace(width)
#   print '|'
#   dash_counter = 1
#   loop do
#     print ' '
#     break if dash_counter == width - 2 
#     dash_counter += 1
#   end
#   puts '|'
# end

# def print_in_box(headline)
#   width = headline.size + 4
#   print_border(width)
#   print_whitespace(width)
#   print "| #{headline} |"
#   puts
#   print_whitespace(width)
#   print_border(width)
# end

# print_in_box('To boldly go where no one has gone before.')
# print_in_box('')

# Further Exploration

# # Headline is too long
# def print_in_box(message)
#    horizontal_rule = "+#{'-' * (message.size + 2)}+"
#    empty_line = "|#{' ' * (message.size + 2)}|"
#    if message.size + 4 < 80
#      puts horizontal_rule
#      puts empty_line
#      puts "| #{message} |"
#      puts empty_line
#      puts horizontal_rule
#    else
#     extra_chars = message.size + 4 - 80
#     puts "The headline is #{extra_chars} characters too long."
#   end
# end

# print_in_box('To boldly go where no one has gone before. To boldly go where no one has gone before.')

# Wrapping text with the box
def print_in_box(message)

   if message.size + 4 < 80
     horizontal_rule = "+#{'-' * (message.size + 2)}+"
     empty_line = "|#{' ' * (message.size + 2)}|" 
     puts horizontal_rule
     puts empty_line
     puts "| #{message} |"
     puts empty_line
     puts horizontal_rule
   else
     extra_chars = -(message.size + 4 - 80)
     part2 = message.slice!(extra_chars..-1)

     horizontal_rule = "+#{'-' * (message.size + 2)}+"
     empty_line = "|#{' ' * (message.size + 2)}|" 
     puts horizontal_rule
     puts empty_line
     puts "| #{message} |"
     puts "| #{part2}#{' ' * ((message.size + 4) - (part2.size + 4))} |"
     puts empty_line
     puts horizontal_rule
   end
end

print_in_box('To boldly go where no one has gone before. To boldly go where no one has gone before.')
