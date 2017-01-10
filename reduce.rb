def reduce(array, acc=0)
  counter = 0

  while counter < array.size
    current_elem = array[counter]
    acc = yield(acc, current_elem)
    counter += 1
  end

  acc
end

array = [1, 2, 3, 4, 5]

p reduce(array) { |acc, num| acc + num }
p reduce(array, 10) { |acc, num| acc + num }
p reduce(array) { |acc, num| acc + num if num.odd? }