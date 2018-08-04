x = "hi there"
my_hash = {x: "some value"}
my_hash2 = {x => "some value"}

# my_hash uses the new syntax for hashed in Ruby 1.9 and above. This format only works with symbols.

# my_hash2 uses the old syntax for hashes pre Ruby 1.9. This format is often what you see in a return statement. Here the key is a string, but does not alway have to be.