puts "Pick a number between 0 and 100"
userResponse = gets.chomp.to_i

case
when (userResponse > 0) && (userResponse < 50)
    puts "#{userResponse} is between 0 and 50"
when (userResponse > 51) && (userResponse < 100)
    puts "#{userResponse} is between 51 and 100"
when (userResponse > 100)
    puts "#{userResponse} is greater than 100"
end       