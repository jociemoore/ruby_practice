# --> Given Array
words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

# --> New Arrays and hashes
word_index_pairs = []
anagrams = {}

# --> Gives each word an explicit index # pairing by storing the two values together in a new array called word_index_pairs
# -->
words.each_with_index do |v,i| 
  word_index_pairs << [v,i]
end  

# --> Turns array into hash and inverts the key/value pairs because you can't have duplicate keys once you sort below
pairs_hash = word_index_pairs.to_h.invert


# --> Iterates through each key/value pair, breaks up the word into letters, sorts them, converts the index to an integer, and runs an if statement that tests the broken words for a match stored in the key. 
# --> If match is found, it pushes the word with the corresponding index position to the hash
# --> If NO match is found, it pushes the word with the corresponding index position to the hash in a new array 
# -->
pairs_hash.each do |index, word| 
  gibberish = word.chars.sort 
  index = index.to_i
  if anagrams.has_key?(gibberish)
    anagrams[gibberish].push(words[index])
  else
    anagrams[gibberish] = [words[index]]
  end  
end  

# --> Iterates through each value in the anagrams hash and prints it to the screen
# -->
anagrams.each_value {|set| p set}





