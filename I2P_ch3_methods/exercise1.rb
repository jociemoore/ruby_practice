def greeting(name)
  puts "Its nice to meet you " + name + "."
end

puts "What is your first name?"
person1 = gets.chomp
greeting(person1)  