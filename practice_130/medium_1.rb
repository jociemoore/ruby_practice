# ------------------------------------------------
# Listening Device
# ------------------------------------------------

# class Device
#   def initialize
#     @recordings = []
#   end

#   def record(recording)
#     @recordings << recording
#   end

#   def listen
#     record(yield) if block_given?
#   end

#   def play
#     puts @recordings[-1]
#   end
# end

# listener = Device.new
# listener.listen { "Hello World!" }
# listener.listen
# p listener.play # Outputs "Hello World!"



# ------------------------------------------------
# Test Analyzer - Sandwich Code
# ------------------------------------------------

# class TextAnalyzer
#   def process
#     file = File.new('sample_text.rb', 'r')
#     yield(file.read)
#     file.close
#   end
# end

# analyzer = TextAnalyzer.new
# analyzer.process { |file| puts "#{(file.split("\n\n")).size} paragraphs" }
# analyzer.process { |file| puts "#{(file.split("\n")).size} lines" }
# analyzer.process { |file| puts "#{(file.split(' ')).size} words" }

# # 3 paragraphs
# # 25 lines
# # 306 words

# ------------------------------------------------
# Passing Parameters Part 1
# ------------------------------------------------

# items = ['apples', 'corn', 'cabbage', 'wheat']

# def gather(items)
#   puts "Let's start gathering food."
#   yield(items)
#   puts "Let's start gathering food."
# end

# gather(items) { |list| puts "#{list.join(', ')}" }

# ------------------------------------------------
# Passing Parameters Part 2
# ------------------------------------------------

# def display_birds_of_prey(array)
#   yield(array)
# end

# birds = ['raven', 'finch', 'hawk', 'eagle']
# display_birds_of_prey(birds) do |_, _, *birds_of_prey| 
#   p birds_of_prey
# end

# ------------------------------------------------
# Passing Parameters Part 3
# ------------------------------------------------

# items = ['apples', 'corn', 'cabbage', 'wheat']

# def gather(items)
#   puts "Let's start gathering food."
#   yield(items)
#   puts "We've finished gathering!"
# end

# gather(items) do |*items, item|
#   puts items.join(', ')
#   puts item
# end

# gather(items) do |first, *items , last|
#   puts first
#   puts items.join(', ')
#   puts last
# end

# gather(items) do |item, *items|
#   puts item
#   puts items.join(', ')
# end

# gather(items) do |item1, item2, item3, item4|
#   puts "#{item1}, #{item2}, #{item3}, #{item4}"
# end

# ------------------------------------------------
# Exploring Procs, Lambdas, and Blocks: Definition and Arity
# ------------------------------------------------

# # Group 1
# my_proc = proc { |thing| puts "This is a #{thing}." }
# puts my_proc
# puts my_proc.class
# my_proc.call
# my_proc.call('cat')

# # Group 2
# my_lambda = lambda { |thing| puts "This is a #{thing}" }
# my_second_lambda = -> (thing) { puts "This is a #{thing}" }
# puts my_lambda
# puts my_second_lambda
# puts my_lambda.class
# my_lambda.call('dog')
# my_lambda.call
# my_third_lambda = Lambda.new { |thing| puts "This is a #{thing}" }

# # Group 3
# def block_method_1(animal)
#   yield
# end

# block_method_1('seal') { |seal| puts "This is a #{seal}."}
# block_method_1('seal')

# # Group 4
# def block_method_2(animal)
#   yield(animal)
# end

# block_method_2('turtle') { |turtle| puts "This is a #{turtle}."}
# block_method_2('turtle') do |turtle, seal|
#   puts "This is a #{turtle} and a #{seal}."
# end
# block_method_2('turtle') { puts "This is a #{animal}."}

# PROC
# - requires a call method
# - Does not raise an error if no arguments are passed in. (no error).


# LAMBDA
# - a lambda is a proc
# - can be defined 3 different ways
# - Does not need the argument to be defined in the block
# - requires a call method
# - raises an ArgumentError if there are no arguments passed in 


# BLOCK 
# - Needs the argument to be defined in the block
# - Can have more arguments than passed to it(no error)... can even have no arguments passed in 
# - Arguments need to be passed to the block explicitly via yield.

# A Lambda is a type of Proc. A Proc and a Lambda are similar in that they require a specific call method. A Proc and a Block are similar in that they do not raise an error if no arguments are defined. Lambdas are unique in that they can be defined in a variety of ways (except not Lambda.new), they raise an error if the arguments are not passed in, but they do need arguments to be defined explicitly in the block. Blocks are unique in that they need the argument defined explicitly in the block and they need the arguments to be passed in via yield. Arity is the rules around the number of arguments you can pass to a block, proc, and or lambda -- each or these have varying rules as explained above.



# ------------------------------------------------
# Exploring Procs, Lambdas, and Blocks: Returning
# ------------------------------------------------

# # Group 1
# def check_return_with_proc
#   my_proc = proc { return }
#   my_proc.call
#   puts "This will never output to screen."
# end

# check_return_with_proc

# # NOTES:
# # - You can return out of a proc and the code after will not run

# # Group 2
# # my_proc = proc { return }

# # def check_return_with_proc_2(my_proc)
# #   my_proc.call
# # end

# # check_return_with_proc_2(my_proc)


# # NOTES:
# # - A proc cannot be defined outside a method and passed into a method -- LocalJumpError

# # Group 3
# def check_return_with_lambda
#   my_lambda = lambda { return }
#   my_lambda.call
#   puts "This will be output to screen."
# end

# check_return_with_lambda

# # NOTES:
# # - Returning within a lambda does not stop the code after from running.

# # Group 4
# my_lambda = lambda { return }
# def check_return_with_lambda(my_lambda)
#   my_lambda.call
#   puts "This will be output to screen."
# end

# check_return_with_lambda(my_lambda)

# # NOTES:
# # - A lambda can be defined outside a method and passed into a method

# # Group 5
# def block_method_3
#   yield
# end

# block_method_3 { return }

# # NOTES:
# # - You canot return from a block passed into a method -- LocalJumpError

# You can return from within a Lambdas, the code will run through completion however, and a lambda can be passed into a method with a return. You can return from within Procs, and the code after (and within the method) will not be executed. You cannot pass a proc or a block into a method with a return -- you receive a LocalJumpError.


# ------------------------------------------------
# Method to Proc
# ------------------------------------------------

# def convert_to_base_8(n)
#   n.to_s(8).to_i
# end

# base8_proc = method(:convert_to_base_8).to_proc

# p [8,10,12,14,16,33].map(&base8_proc)

# # => [10, 12, 14, 16, 20, 41]


# ------------------------------------------------
# Internal vs External Iterators
# ------------------------------------------------

# factorial = Enumerator.new do |result|
#   num = 0
#   loop do 
#     if (1..num).to_a.reduce(:*) == nil
#       result << 1 
#     else
#       result << (1..num).to_a.reduce(:*) 
#     end
#     num += 1
#   end
#   result
# end

# p factorial.take(7)

# # EXTERNAL ITERATION

# puts factorial.next
# puts factorial.next
# puts factorial.next
# puts factorial.next
# puts factorial.next
# puts factorial.next
# puts factorial.next

# factorial.rewind

# # INTERNAL ITERATION
# factorial.take(7).each { |num| puts num }


# ------------------------------------------------
# Bubble Sort with Blocks
# ------------------------------------------------

# def bubble_sort!(array)
#   loop do
#     swapped = false
#     1.upto(array.size - 1) do |index|
#       if block_given?
#         next if yield(array[index - 1], array[index])
#       else
#         next if array[index - 1] <= array[index]
#       end
#       array[index - 1], array[index] = array[index], array[index - 1]
#       swapped = true
#     end

#     break unless swapped
#   end
#   nil
# end



# array = [5, 3]
# bubble_sort!(array)
# p array #== [3, 5]

# array = [5, 3, 7]
# bubble_sort!(array) { |first, second| first >= second }
# p array == [7, 5, 3]

# array = [6, 2, 7, 1, 4]
# bubble_sort!(array)
# p array == [1, 2, 4, 6, 7]

# array = [6, 12, 27, 22, 14]
# bubble_sort!(array) { |first, second| (first % 7) <= (second % 7) }
# p array == [14, 22, 12, 6, 27]

# array = %w(sue Pete alice Tyler rachel Kim bonnie)
# bubble_sort!(array)
# p array == %w(Kim Pete Tyler alice bonnie rachel sue)

# array = %w(sue Pete alice Tyler rachel Kim bonnie)
# bubble_sort!(array) { |first, second| first.downcase <= second.downcase }
# p array == %w(alice bonnie Kim Pete rachel sue Tyler)


# -------------------
# Further Exploration
# -------------------



def bubble_sort!(array)
  loop do
    swapped = false
    1.upto(array.size - 1) do |index|
      current_elem = yield(array[index])
      previous_elem = yield(array[index - 1 ])
      next if previous_elem <= current_elem
      array[index - 1], array[index] = array[index], array[index - 1]
      swapped = true
    end

    break unless swapped
  end
  nil
end


array = %w(sue Pete alice Tyler rachel Kim bonnie)
bubble_sort!(array) { |value| value.downcase }
p array #== %w(alice bonnie Kim Pete rachel sue Tyler)


