# ---------------------
# Unpredictable Weather (Part 1)
# ---------------------

# sun = ['visible', 'hidden'].sample

# if sun == 'visible'
#   puts 'The sun is so bright!'
# end

# ---------------------
# Unpredictable Weather (Part 2)
# ---------------------

# sun = ['visible', 'hidden'].sample

# unless sun == 'visible'
#   puts 'The clouds are blocking the sun!'
# end

# ---------------------
# Unpredictable Weather (Part 3)
# ---------------------

# sun = ['visible', 'hidden'].sample

# puts 'The clouds are blocking the sun!' unless sun == 'visible'
# puts 'The sun is so bright!' if sun == 'visible'

# ---------------------
# True or False
# ---------------------

# boolean = [true, false].sample

# result = boolean ? "I'm true!" : "I'm false!"
# puts result

# ---------------------
# Truthy Number
# ---------------------

# number = 7

# if number
#   puts "My favorite number is #{number}."
# else
#   puts "I don't have a favorite number."
# end

# => My favorite number is 7.
# => Only false and nil are falsy, so number is truthy and therefore the if condition gets evaluated.

# ---------------------
# Stoplight (Part 1)
# ---------------------

# stoplight = ['green', 'yellow', 'red'].sample

# case stoplight
# when 'green' then puts 'Go!'
# when 'yellow' then puts 'Slow down!'
# else puts 'Stop!'
# end


# ---------------------
# Stoplight (Part 2)
# ---------------------

# stoplight = ['green', 'yellow', 'red'].sample

# if stoplight == 'green' 
#   puts 'Go!'
# elsif stoplight == 'yellow' 
#   puts 'Slow down!'
# else
#   puts 'Stop!'
# end


# ---------------------
# Sleep Alert
# ---------------------

# status = ['awake', 'tired'].sample

# alert = if status == 'awake'
#   'Be productive!'
# else
#   'Go to sleep!'
# end

# puts alert

# ---------------------
# Cool Numbers
# ---------------------

# number = rand(10)

# if number == 5
#   puts '5 is a cool number!'
# else
#   puts 'Other numbers are cool too!'
# end


# ---------------------
# Stoplight (Part 3)
# ---------------------

stoplight = ['green', 'yellow', 'red'].sample

case stoplight
when 'green'  then puts 'Go!'
when 'yellow' then puts 'Slow down!'
else               puts 'Stop!'
end


