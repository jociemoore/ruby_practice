# hash
store = {jacket:"$50", shirt:"$20", hat:"$10"}

store.each_key{ |item| puts item }
store.each_value{ |price| puts price}
store.each{|item, price| puts "The #{item} costs #{price}."}