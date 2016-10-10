# # --> one entry 

# contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
# contacts = {"Joe Smith" => {}}


# contacts.each do |name, info|
#   email = {email: ""}
#   address = {address: ""}
#   phone = {phone: ""}

#   info.merge!(email)
#   info.merge!(address)
#   info.merge!(phone)


#   info.map do |k,v|
#     info[k] = contact_data.first
#     contact_data.shift
#   end  
# end  

# contacts.each {|person| p person}


# --> multiple entries

contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

contacts.each do |name, info|
  email = {email: ""}
  address = {address: ""}
  phone = {phone: ""}

  info.merge!(email)
  info.merge!(address)
  info.merge!(phone)


  i = 0
  while i < contact_data.length
    info.map do |k,v|
      info[k] = contact_data.first[i]
      contact_data.first.shift
    end  
    i = i + 1
    contact_data.shift
  end  
end  

contacts.each {|person| p person}
