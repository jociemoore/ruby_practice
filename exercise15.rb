arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

# arr.delete_if do |string|
#  string.start_with?("s") 
# end

arr.delete_if do |string|
 string.start_with?("s", "w") 
end