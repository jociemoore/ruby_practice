a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']

new_arr = a.map do |phrase|
  phrase.split(" ")
end

new_arr.flatten!

p new_arr  
