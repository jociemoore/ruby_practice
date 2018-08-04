arr = [["test", "hello", "world"],["example", "mem"]]
arr.flatten.each do |x| 
  if x == "example"
    puts x 
  end 
end   