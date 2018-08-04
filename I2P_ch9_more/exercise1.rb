def checkLAB(phrase)
  if phrase =~ /lab/
    puts phrase
  else
    puts "Does not match."  
  end
end

checkLAB("laboratory")    
checkLAB("experiment")    
checkLAB("Pans Labyrinth")    
checkLAB("elaborate")    
checkLAB("polar bear")    
