colors = ['red', 'yellow', 'purple', 'green', 'dark blue', 'turquoise', 'silver', 'black']
things = ['pen', 'mouse pad', 'coffee mug', 'sofa', 'surf board', 'training mat', 'notebook']

colors.shuffle!
things.shuffle!

i = 0
loop do
  break if i > colors.length

  if i == 0
    puts 'I have a ' + colors[i] + ' ' + things[i] + '.'
  else
    puts 'And a ' + colors[i] + ' ' + things[i] + '.'
  end

  i += 1
end


# There are two issues here:
# 1) The loop will iterate 9x (0, 1, 2, 3, 4, 5, 6, 7, 8) and will only stop once i is *greater than* the length of the colors array. colors[8] == nil and nil cannot be converted into a string when the puts method is called on line 14 for that iteration.

# 2) The things array only has 7 elements, so even if we fix issue #1, we'll still receive an error because things[7] == nil

# To fix this, I would break out of the loop when we have reached the end of the shorter array: break if colors[i].nil? || things[i].nil?