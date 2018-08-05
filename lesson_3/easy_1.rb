# -----------
# Question 1
# -----------
# 1
# 2
# 2
# 3

# -----------
# Question 2
# -----------
# The "bang" or logical NOT operator (!): it either represents mutation or will return the opposite boolean value of expression being evaluated. 

# The ternary or question mark (?) operator: it either means an expression will be evaluated and return one value or another based on the expression's output or a boolean value will be returned.

# 1. "!=" reads "not equal to" and you would use it in a comparison expression.
# 2. !user_name will return the opposite of the boolean value stored in user_name.
# 3. words.uniq! is destructive and will replace what is in words with only the unique values. Note: when ! comes after a method it does not always mean mutation will occur.
# 4. ? something is part of an if/else statement. If whatever is before ? is true, 'something', which comes immediately after ?, will be evaluated.
# 5. something? means that something is a method and will return either true or false, but not always.
# 6. !!user_name will force the value to boolean. So if user_name is truthy, the first bang changes user_name to "false", and the second bang will change it back to "true".

# -----------
# Question 3
# -----------
# advice = "Few things in life are as important as house training your pet dinosaur."

# words = advice.split(" ")
# words.each_with_index do |word, index|
#   if word == "important"
#     words[index] = "urgent"
#   end
# end
# new_str = words.join(" ")
# p new_str

# -----------
# Question 4
# -----------
# numbers = [1, 2, 3, 4, 5]

# numbers.delete_at(1)  # => returns 2 although numbers is [1, 3, 4, 5]
# numbers.delete(1)     # => returns 1 although numbers is [2, 3, 4, 5]

# -----------
# Question 5
# -----------
# (10...100).include?(100)

# -----------
# Question 6
# -----------
# famous_words = "seven years ago"
# famous_words.prepend("Four score and ")
# famous_words.insert(0, "Four score and ")

# -----------
# Question 7
# -----------
# 42

# -----------
# Question 8
# -----------
# flintstones = ["Fred", "Wilma"]
# flintstones << ["Barney", "Betty"]
# flintstones << ["BamBam", "Pebbles"]

# flintstones.flatten!

# -----------
# Question 9
# -----------
flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }

number = flintstones["Barney"]
flintstones = [] << "Barney"
flintstones << number

# -----------
# Question 10
# -----------
#input: array
#output: hash
#key = names
#values = index
#iterate through the array and for every name push the index to an empty array
#cominbe two arrays with to_h

flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
flintstones = flintstones.each_with_index.to_h

