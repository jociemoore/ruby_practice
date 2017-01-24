# ------------
# Enumberable Class Creation
# ------------

# class Tree
#   include Ennumerable

#   def each; end
# end

# ------------
# Optional Blocks
# ------------

# def compute
#   if block_given?
#     yield
#   else
#     puts 'Does not compute'
#   end
# end 

# p compute { 5 + 3 } #== 8
# p compute { 'a' + 'b' } #== 'ab'
# compute #== 'Does not compute.'


# -------------------
# Further Exploration
# -------------------

# def compute(num)
#   if block_given?
#     yield(num)
#   else
#     puts 'Does not compute'
#   end
# end 

# p compute(5) { |num| num + 3 } #== 8
# p compute(5) { |num| num.to_s + 'b' } #== '5b'
# compute(5) #== 'Does not compute.'

# ------------
# Find Missing Numbers
# ------------

# def missing(arr)
#   (arr.min..arr.max).each_with_object([]) do |num, array|
#     array << num if !arr.include?(num)
#   end
# end

# p missing([-3, -2, 1, 5]) #== [-1, 0, 2, 3, 4]
# p missing([1, 2, 3, 4]) #== []
# p missing([1, 5]) #== [2, 3, 4]
# p missing([6]) #== []

# -------------------
# Further Exploration
# -------------------

# def missing(arr)
#   missing_nums = []
#   ideal_arr = (arr.min..arr.max).to_a
#   ideal_arr - arr
# end

# p missing([-3, -2, 1, 5]) #== [-1, 0, 2, 3, 4]
# p missing([1, 2, 3, 4]) #== []
# p missing([1, 5]) #== [2, 3, 4]
# p missing([6]) #== []

# ------------
# Divisors
# ------------

# def divisors(num)
#   (1..num).each_with_object([]) do |divisor, array|
#    array << divisor if num % divisor == 0
#   end
# end

# p divisors(1) #== [1]
# p divisors(7) #== [1, 7]
# p divisors(12) #== [1, 2, 3, 4, 6, 12]
# p divisors(98) #== [1, 2, 7, 14, 49, 98]
# # p divisors(99400891) #== [1, 9967, 9973, 99400891] # may take a minute


# -------------------
# Further Exploration
# -------------------

# def divisors(num)
#   candidate = 1
#   half1_divisors = []
#   loop do 
#     half1_divisors << candidate if num % candidate == 0
#     break if half1_divisors.include?(num / candidate)
#     candidate += 1
#   end
#   half2_divisors = half1_divisors.map{|number| num / number}
#   (half1_divisors + half2_divisors).sort.uniq
# end

# p divisors(1) #== [1]
# p divisors(7) #== [1, 7]
# p divisors(12) #== [1, 2, 3, 4, 6, 12]
# p divisors(98) #== [1, 2, 7, 14, 49, 98]
# p divisors(99400891) #== [1, 9967, 9973, 99400891]
# p divisors(999962000357) #== [1, 999979, 999983, 999962000357]


# ------------
# Encrypted Pioneers
# ------------

# ENCODED = 'NOPQRSTUVWXYZABCDEFGHIJKLMnopqrstuvwxyzabcdefghijklm'
# DECODED = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz'

# def decode_rot13(name)
#   translated_letters = name.chars.map do |char|
#     index = ENCODED.index(char)
#     index == nil ? char : DECODED[index]
#   end
#   names = translated_letters.join
# end

# p decode_rot13('Nqn Ybirynpr')
# p decode_rot13('Tenpr Ubccre')
# p decode_rot13('Nqryr Tbyqfgvar')
# p decode_rot13('Nyna Ghevat')
# p decode_rot13('Puneyrf Onoontr')
# p decode_rot13('Noqhyynu Zhunzznq ova Zhfn ny-Xujnevmzv')
# p decode_rot13('Wbua Ngnanfbss')
# p decode_rot13('Ybvf Unyog')
# p decode_rot13('Pynhqr Funaaba')
# p decode_rot13('Fgrir Wbof')
# p decode_rot13('Ovyy Tngrf')
# p decode_rot13('Gvz Orearef-Yrr')
# p decode_rot13('Fgrir Jbmavnx')
# p decode_rot13('Xbaenq Mhfr')
# p decode_rot13('Wbua Ngnanfbss')
# p decode_rot13('Fve Nagbal Ubner')
# p decode_rot13('Zneiva Zvafxl')
# p decode_rot13('Lhxvuveb Zngfhzbgb')
# p decode_rot13('Unllvz Fybavzfxv')
# p decode_rot13('Tregehqr Oynapu')

# -------------------
# Further Exploration
# -------------------

# A program with a lookup table would stay the same. A program with the numeric values for each letter would have to change. Instead of +/- 13, you would have to do +/- 20 on data using EBCDIC. 

# Ada Lovelace           => "First computer programmer"

# Grace Hopper           => first compiler

# Adele Goldstine        => ENIAC technical desciption

# Alan Turing            => Father of computer science

# Charles Babbage        => "Father of Computers"

# Abdullah Muhammad 
#  ibn Musa al-Khwarizmi => "A father of algebra"

# John Atanasoff         => invented 1st electronic
#                           digital computer

# Lois Haibt             => FORTRAN (IBM)- 1st high
#                           level programming language

# Claude Shannon         => "Father of Info theory"

# Steve Jobs             => Apple - "microcomputer 
#                           revolution"; Pixar

# Bill Gates             => Microsoft; "richest man"

# Tim Berners-Lee        => "Inventor of World Wide Web"

# Steve Wozniak          => Apple - "microcomputer 
#                           revolution"

# Konrad Zuse            => 1st functional computer

# Sir Antony Hoare       => Quicksort, communicating 
#                           sequential processes (CSP)

# Marvin Minsky          => Artificial Intelligence

# Yukihiro Matsumoto     => Ruby

# Hayyim Slonimski       => invented calculating machine

# Gertrude Blanch        => Numerical Analysis

# ------------
# Iterators: True for Any?
# ------------

# def any?(array)
#   array.each { |num| return true if yield(num) }
#   false
# end

# p any?([1, 3, 5, 6]) { |value| value.even? } # == true
# p any?([1, 3, 5, 7]) { |value| value.even? } # == false
# p any?([2, 4, 6, 8]) { |value| value.odd? } # == false
# p any?([1, 3, 5, 7]) { |value| value % 5 == 0 }#  == true
# p any?([1, 3, 5, 7]) { |value| true } # == true
# p any?([1, 3, 5, 7]) { |value| false } # == false
# p any?([]) { |value| true } # == false


# -------------------
# Further Exploration
# -------------------

# require 'set'

# def any?(collection)
#   collection.each { |elem| return true if yield(elem) }
#   false
# end

# p any?({'a' => 'ant', 'b' => 'batches', 'c' => 'candle'}) { |item| item[1][0] == 'b' }
# p any?(Set[1,2,3]) { |item| item == 2 }

# ------------
# Iterators: True for All?
# ------------

# def all?(collection)
#   collection.each { |elem| return false if !yield(elem) }
#   true
# end

# p all?([1, 3, 5, 6]) { |value| value.odd? } #== false
# p all?([1, 3, 5, 7]) { |value| value.odd? } #== true
# p all?([2, 4, 6, 8]) { |value| value.even? } #== true
# p all?([1, 3, 5, 7]) { |value| value % 5 == 0 } #== false
# p all?([1, 3, 5, 7]) { |value| true } #== true
# p all?([1, 3, 5, 7]) { |value| false } #== false
# p all?([]) { |value| false } #== true


# ------------
# Iterators: True for None?
# ------------

# def none?(collection)
#   collection.each { |elem| return false if yield(elem) }
#   true
# end

# p none?([1, 3, 5, 6]) { |value| value.even? } #== false
# p none?([1, 3, 5, 7]) { |value| value.even? } #== true
# p none?([2, 4, 6, 8]) { |value| value.odd? } #== true
# p none?([1, 3, 5, 7]) { |value| value % 5 == 0 } #== false
# p none?([1, 3, 5, 7]) { |value| true } #== false
# p none?([1, 3, 5, 7]) { |value| false } #== true
# p none?([]) { |value| true } #== true

# ------------
# Iterators: True for One?
# ------------

# def one?(collection)
#   true_count = 0
#   collection.each do |elem|
#     true_count += 1 if yield(elem)
#     return false if true_count > 1
#   end
#   return true if true_count == 1
#   false
# end

# p one?([1, 3, 5, 6]) { |value| value.even? }    # -> true
# p one?([1, 3, 5, 7]) { |value| value.odd? }     # -> false
# p one?([2, 4, 6, 8]) { |value| value.even? }    # -> false
# p one?([1, 3, 5, 7]) { |value| value % 5 == 0 } # -> true
# p one?([1, 3, 5, 7]) { |value| true }           # -> false
# p one?([1, 3, 5, 7]) { |value| false }          # -> false
# p one?([]) { |value| true }                     # -> false



# ------------
# Count Items
# ------------

# def count(arr)
#   true_count = 0
#   arr.each { |elem| true_count += 1 if yield(elem) }
#   true_count
# end

# p count([1,2,3,4,5]) { |value| value.odd? } #== 3
# p count([1,2,3,4,5]) { |value| value % 3 == 1 } #== 2
# p count([1,2,3,4,5]) { |value| true } #== 5
# p count([1,2,3,4,5]) { |value| false } #== 0
# p count([]) { |value| value.even? } #== 0
# p count(%w(Four score and seven)) { |value| value.size == 5 } #== 2

# -------------------
# Further Exploration
# -------------------

def count(arr)
  return 0 if arr.empty?
  counter = arr.map do |elem| 
    yield(elem) ? 1 : 0
  end
  counter.reduce(:+)
end

p count([1,2,3,4,5]) { |value| value.odd? } #== 3
p count([1,2,3,4,5]) { |value| value % 3 == 1 } #== 2
p count([1,2,3,4,5]) { |value| true } #== 5
p count([1,2,3,4,5]) { |value| false } #== 0
p count([]) { |value| value.even? } #== 0
p count(%w(Four score and seven)) { |value| value.size == 5 } #== 2
