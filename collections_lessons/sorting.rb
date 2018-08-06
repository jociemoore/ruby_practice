[2,5,3,4,1].sort



['c','a','e','b','d'].sort



[2,5,3,4,1].sort do |a, b|
  b <=> a
end




[2,5,3,4,1].sort do |a,b|
  puts "a is #{a} and b is #{b}"
  a <=> b
end




['arc', 'bat', 'cape', 'ants', 'cap'].sort




[['a', 'cat', 'b', 'c'], ['a', 2], ['a', 'car', 'd', 3], ['a', 'car', 'd']].sort




['cot', 'bed', 'mat'].sort_by do |word|
  word[1]
end



people = {Kate: 27, john: 25, Mike: 18}

people.sort_by do |name, age|
  age
end




people = {Kate: 27, john: 25, Mike: 18}

people.sort_by do |name, age|
  name.capitalize
end