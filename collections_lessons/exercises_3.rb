# ------------
# Question #1
# ------------

# flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

# flintstones.each_with_object({}) do |element, hash|
#   hash[element] = flintstones.index(element)
# end

# ------------
# Question #2
# ------------

# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

# ages.values.reduce(:+)

# ------------
# Question #3
# ------------

# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

# ages.select! do |_, age|
#   age < 100
# end

# ------------
# Question #4
# ------------

# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

# p ages.values.min

# ------------
# Question #5
# ------------

# flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# flintstones.each_with_index do |flintstone, index|
#   puts index if flintstone[0,2] == 'Be'
# end

# ------------
# Question #6
# ------------

# flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# flintstones.map! do |flintstone|
#   flintstone[0,3]
# end

# ------------
# Question #7
# ------------

# statement = "The Flintstones Rock"

# letters = statement.delete(' ').chars.sort
# frequency = letters.each_with_object({}) do |char, hash|
#   if !hash.keys.include?(char)
#     hash[char] = 1
#   else
#     hash[char] += 1
#   end
# end

# p frequency

# ------------
# Question #8
# ------------

# numbers = [1, 2, 3, 4]
# numbers.each do |number|
#   p number
#   numbers.shift(1)
# end

# # => 1
# # => 3

# numbers = [1, 2, 3, 4]
# numbers.each do |number|
#   p number
#   numbers.pop(1)
# end

# # => 1
# # => 2

# ------------
# Question #9
# ------------

# words = "the flintstones rock"

# words = words.split.map! do |word|
#   word.capitalize
# end

# p words.join(' ')

# ------------
# Question #10
# ------------

# munsters = {
#   "Herman" => { "age" => 32, "gender" => "male" },
#   "Lily" => { "age" => 30, "gender" => "female" },
#   "Grandpa" => { "age" => 402, "gender" => "male" },
#   "Eddie" => { "age" => 10, "gender" => "male" },
#   "Marilyn" => { "age" => 23, "gender" => "female"}
# }

# update = munsters.each_with_object({}) do |data, hash|
#     case data[1]['age']
#     when (0..17)
#       data[1]['age_group'] = 'kid'
#     when (18..64)
#       data[1]['age_group'] = 'adult'
#     else
#       data[1]['age_group'] = 'senior'
#     end
#     hash[data[0]] = data[1]
# end

# p update

# ------------
# Question #11
# ------------

# munsters = {
#   "Herman" => { "age" => 32, "gender" => "male" },
#   "Lily" => { "age" => 30, "gender" => "female" },
#   "Grandpa" => { "age" => 402, "gender" => "male" },
#   "Eddie" => { "age" => 10, "gender" => "male" }
# }

# total_male_age = 0 

# munsters.each do |name, details|
#   total_male_age += details['age'] if details['gender'] == 'male'
# end

# p total_male_age
  
# ------------
# Question #12
# ------------

# munsters = {
#   "Herman" => { "age" => 32, "gender" => "male" },
#   "Lily" => { "age" => 30, "gender" => "female" },
#   "Grandpa" => { "age" => 402, "gender" => "male" },
#   "Eddie" => { "age" => 10, "gender" => "male" },
#   "Marilyn" => { "age" => 23, "gender" => "female"}
# }

# munsters.each do |name, details|
#   puts "#{name} is a #{details['age']} year old #{details['gender']}."
# end

# ------------
# Question #13
# ------------

def uuid_generator
  hexidecimals = 'abcdefghijklmnopqrstuvwxyz0123456789'.split('')
  uuid = [8, 4, 4, 4, 12]
  uuid.map! do |num_chars|
    uuid_part = ''
    num_chars.times { uuid_part += hexidecimals.sample }
    uuid_part
  end
  uuid.join('-')
end

p uuid_generator
