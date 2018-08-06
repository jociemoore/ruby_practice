# GAGCCTACTAACGGGAT
# CATCGTAATGACGGCCT
# ^ ^ ^  ^ ^    ^^

# only compare up to the shortest length
# input: string
# output: integer
# data structure: two arrays, two strings
# determine # of iterations: string reference, mutate a copy, size of shortest length, stop if nil
# iterate thru comparing value at index position: each, times, loop 
# if values are not equal increment differences var


class DNA
  attr_reader :strand1

  def initialize(strand1)
    @strand1 = strand1
  end

  def hamming_distance(strand2)
    differences = 0
    strand1.chars.each_with_index do |char, index|
      return differences if char.nil? || strand2[index].nil?
      differences += 1 if char != strand2.chars[index]
    end
    differences
  end
end

