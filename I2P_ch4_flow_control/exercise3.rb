puts "Pick a number between 0 and 100"
userResponse = gets.chomp.to_i

if (userResponse > 0) && (userResponse < 50)
    puts "#{userResponse} is between 0 and 50"
elsif (userResponse > 51) && (userResponse < 100)
    puts "#{userResponse} is between 51 and 100"
elsif (userResponse > 100)
    puts "#{userResponse} is greater than 100"
end       