require 'pry'
# -----------
# Question 1
# -----------
# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
# ages.has_key?("Spot")
# ages.include?("Spot")
# ages.member?("Spot")

# -----------
# Question 2
# -----------
# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
# ages_only = ages.values
# total_ages = 0
# ages_only.each { |age| total_ages = total_ages + age }
# p total_ages

# -----------
# Question 3
# -----------
# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
# ages.delete_if { |_, age| age >= 100 }

# -----------
# Question 4
# -----------
# munsters_description = "The Munsters are creepy in a good way."

# # munsters_description.capitalize!
# # munsters_description.downcase!
# # munsters_description.upcase!
# munsters_description.upcase!
# words = munsters_description.split(" ")
# words.each_with_index do |word,index|
#   if word.include?('THE') || word.include?('MUNSTERS')
#     new_letter = word[0].downcase! 
#     word.gsub!(word[0], new_letter)
#     words[index].replace(word)
#   end
# end
# munsters_description = words.join(" ")

# -----------
# Question 5
# -----------
# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }
# additional_ages = { "Marilyn" => 22, "Spot" => 237 }
# ages.merge!(additional_ages)


# -----------
# Question 6
# -----------
# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
# all_ages = ages.values
# min_age = all_ages[0]
# all_ages.each do |age|
#   if age < min_age
#     min_age = age
#   end
# end

# -----------
# Question 7
# -----------
# advice = "Few things in life are as important as house training your pet dinosaur."
# advice.include?("Dino")

# -----------
# Question 8
# -----------
# be_names = []
# flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
# flintstones.each_with_index do |name, index| 
#    if name.start_with?("Be") 
#       be_names << index
#    end
# end
# be_names[0]

# -----------
# Question 9
# -----------
# flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
# flintstones.map! {|name| name[0,3]}

# -----------
# Question 10
# -----------
# See Question 9
