animals = ['dog', 'cat', 'rabbit', 'turtle', 'fish']

animals.each_with_index {|animal, index|
  puts "#{index}- #{animal}"
}