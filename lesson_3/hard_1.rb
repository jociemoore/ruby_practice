# ----------
# Question 1
# ----------
# I expect an error related to undefined variable or method.

# ----------
# Question 2
# ----------
# greetings = { a: 'hi' }
# informal_greeting = greetings[:a]
# informal_greeting << ' there'

# puts informal_greeting 
# puts greetings   # :a => 'hi there'

# ----------
# Question 3
# ----------
# A.) 
# "one"
# "two"
# "three"

# B.)
# "one"
# "two"
# "three"

# C.) 
# "two"
# "three"
# "one"

# ----------
# Question 4
# ----------
# def uuid
#   hexadecimal = ["1","2","3","4","5","6","7","8","9","A","B","C","D","E","F","a","b","c","d","e","f"]
#   uuid_value = ""
#   uuid_value << "#{(hexadecimal.sample(8)).join}-"
#   uuid_value << "#{(hexadecimal.sample(4)).join}-"
#   uuid_value << "#{(hexadecimal.sample(4)).join}-"
#   uuid_value << "#{(hexadecimal.sample(4)).join}-"
#   uuid_value << "#{(hexadecimal.sample(12)).join}"
#   uuid_value
# end

# p uuid

# ----------
# Question 5
# ----------
def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  if dot_separated_words.size != 4
    return false
  else 
    while dot_separated_words.size > 0 do
      word = dot_separated_words.pop
      return false if !is_an_ip_number?(word)
    end
    return true
  end
end

