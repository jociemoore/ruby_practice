# -----------
# Question 1
# -----------
# munsters = {
#   "Herman" => { "age" => 32, "gender" => "male" },
#   "Lily" => { "age" => 30, "gender" => "female" },
#   "Grandpa" => { "age" => 402, "gender" => "male" },
#   "Eddie" => { "age" => 10, "gender" => "male" }
# }

# sum = 0
# munsters.each do |name, details|
#   sum += details["age"] if details["gender"] == "male"
# end
# p sum

# -----------
# Question 2
# -----------
# munsters = {
#   "Herman" => { "age" => 32, "gender" => "male" },
#   "Lily" => { "age" => 30, "gender" => "female" },
#   "Grandpa" => { "age" => 402, "gender" => "male" },
#   "Eddie" => { "age" => 10, "gender" => "male" },
#   "Marilyn" => { "age" => 23, "gender" => "female"}
# }

# munsters.each do |name, details|
#   p sentence = "#{name} is a #{details['age']} year old #{details['gender']}."
# end

# => "Herman is a 32 year old male."

# -----------
# Question 3
# -----------

# def tricky_method(a_string_param, an_array_param)
#   a_string_param += "rutabaga"
#   an_array_param << "rutabaga"
#   return a_string_param, an_array_param
# end

# my_string = "pumpkins"
# my_array = ["pumpkins"]
# my_string, my_array = tricky_method(my_string, my_array)

# puts "My string looks like this now: #{my_string}"
# puts "My array looks like this now: #{my_array}"


# -----------
# Question 4
# -----------
sentence = "Humpty Dumpty sat on a wall."
# sentence.delete! "." 
# reversed_sentence = []

# words = sentence.split(" ")
# new_index = words.size
# words.each_with_index do |word, index|
#   new_index = new_index - 1
#   reversed_sentence[new_index] = word
# end
# p reversed_sentence.join(" ") + "."


# -----------
# Question 5
# -----------
# answer = 42

# def mess_with_it(some_number)
#   some_number += 8
# end

# new_answer = mess_with_it(answer)

# p answer - 8

# => 34

# -----------
# Question 6
# -----------
# munsters = {
#   "Herman" => { "age" => 32, "gender" => "male" },
#   "Lily" => { "age" => 30, "gender" => "female" },
#   "Grandpa" => { "age" => 402, "gender" => "male" },
#   "Eddie" => { "age" => 10, "gender" => "male" },
#   "Marilyn" => { "age" => 23, "gender" => "female"}
# }

# def mess_with_demographics(demo_hash)
#   demo_hash.values.each do |family_member|
#     family_member["age"] += 42
#     family_member["gender"] = "other"
#   end
# end

# mess_with_demographics(munsters)

# The mess_with_demogrphics method that Spot wrote changed the original data because he made changes directly to the demo_hash. Within the method, he did not assign the demo_hash to a new_variable and then make changes to new_variable instead. 

# -----------
# Question 7
# -----------
# puts rps(rps(rps("rock", "paper"), rps("rock", "scissors")), "rock")

# => paper

# -----------
# Question 8
# -----------

# bar(foo)

# => no