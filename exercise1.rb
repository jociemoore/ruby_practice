immediate_family = []
family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }

family.each do |title, names|   
  if title == :sisters || title == :brothers
    immediate_family.unshift(names)
  end
end    

array = immediate_family.flatten
p array
