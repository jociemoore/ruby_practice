# merge ==> merges two hashes but does not mutate the original hash

# merge! ==> merges two hashes and overwrites the original hash with this new combo hash

hash1 = {dog:"woof", cat:"meow", frog:"ribbit"}
hash2 = {horse:"neh", snake:"hiss", cow:"moo"}

hash1.merge(hash2)
p hash1
p hash2

hash1.merge!(hash2)
p hash1
p hash2
