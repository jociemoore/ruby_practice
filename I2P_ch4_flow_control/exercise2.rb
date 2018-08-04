def to_Uppercase(string)
  puts string.upcase
end  

puts "Type a word or phrase"
str = gets.chomp
if str.length > 10
  to_Uppercase(str)
end  