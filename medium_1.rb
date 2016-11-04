require 'pry'
# -----------
# Question 1
# -----------
# str = "The Flintstones Rock!"
# i = 0
# while i<10
#   str.insert(0, " ")
#   i += 1
#   p str
# end

# -----------
# Question 2
# -----------
# statement = "The Flintstones Rock"
# letters = []
# occurs = []
# statement.each_char do |letter|
#   if !letters.include?(letter) && letter != " "
#     letters << letter
#     number = statement.count letter 
#     occurs << number
#   end
# end
# occurences = [*letters].zip(occurs).sort.to_h

# -----------
# Question 3
# -----------
# puts "the value of 40 + 2 is " + (40 + 2)
# The above line of code returns an error because 'puts' does not know what to do with the fixed numbers.
# Fix #1: 
# puts "the value of 40 + 2 is #{40 + 2}"
# Fix #2:
# puts "the value of 40 + 2 is " + (40 + 2).to_s


# -----------
# Question 4
# -----------
# Weird things happen when you mutate an array while you are iterating through it. 
# In this first code block, you would expect the first number in the array to removed until there were no more, however, because the array is changing it skips a few iterations it seems. First, 1 is removed. Then, it goes to the next number. After mutating the array, the program thinks its already dealt with 2, which is now in the first index position, and it moves on to 3. Whoops!

# numbers = [1, 2, 3, 4]
# numbers.each do |number|
#   p number
#   numbers.shift(1)
# end

# => 1
# => 3

# In this second code block, you'd might want the last number to be removed until there is an empty array, however, because the array is changing, it doesn't quite seem to finish. First, 4 is removed, then 3, and then there are only two more numbers left. Because the program has already dealt with two iterations, it thinks its done. 

# numbers = [1, 2, 3, 4]
# numbers.each do |number|
#   p number
#   numbers.pop(1)
# end

# => 1
# => 2

# -----------
# Question 5
# -----------
# def factors(number)
#   dividend = number
#   divisors = []
#   while dividend > 0 do
#     divisors << number / dividend if number % dividend == 0
#     dividend -= 1
#   end 
#   divisors
# end

# p factors(6)

# Bonus #1: 'number % dividend == 0' is what is actually doing the work to deteremine if the current value is a factor as factors divide evenly into a number.

# Bonus #2: 'divisors' on the second-to-last line in the method returns all the factors in an array. It allows you to obtain an intentional result from the method. Otherwise the default return value is the last statement executed.

# -----------
# Question 6
# -----------
# Yes, there is a difference in the two methods. The first method, which uses '<<', actually modifies the original buffer variable. The second method will add the new element, but not mutatate the input_array. I like the method written with the shovel operator because you can call it consequentively.

# -----------
# Question 7
# -----------
# def fib(first_num, second_num, limit)
#   while second_num < limit
#     sum = first_num + second_num
#     first_num = second_num
#     second_num = sum
#   end
#   sum
# end

# result = fib(0, 1, 15)
# puts "result is #{result}"

# The limit variable is not passed into the fib method and therefore is undefined.

# -----------
# Question 8
# -----------
# def titleize(string)
#     words = string.split(" ")
#     words.each { |word| word.capitalize! }
#     words.join(" ")
# end

# p titleize("The boy who cried wolf")

# -----------
# Question 9
# -----------
munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

def generation(age)
  case age
  when (0..17)
     return "kid"
  when (18..64)
    return "adult"
  else
    return "senior"
  end
end

munsters.each do |name, profile_features|
  profile_features["age_group"] = generation(profile_features["age"])
end

p munsters


# => { "Herman" => { "age" => 32, "gender" => "male", "age_group" => "adult" },
#  "Lily" => {"age" => 30, "gender" => "female", "age_group" => "adult" },
#  "Grandpa" => { "age" => 402, "gender" => "male", "age_group" => "senior" },
#  "Eddie" => { "age" => 10, "gender" => "male", "age_group" => "kid" },
#  "Marilyn" => { "age" => 23, "gender" => "female", "age_group" => "adult" } }

