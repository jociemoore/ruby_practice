# -----------
# Buggy Code
# -----------

def get_quote(person)
  if person == 'Yoda'
    'Do. Or do not. There is no try.'
  end

  if person == 'Confucius'
    'I hear and I forget. I see and I remember. I do and I understand.'
  end

  if person == 'Einstein'
    'Do not worry about your difficulties in Mathematics. I can assure you mine are still greater.'
  end
end

puts 'Confucius says:'
puts '"' + get_quote('Confucius') + '"'

# In this case, we get "no implicit conversion of nil into String" TypeError because the last line (and therefore the return value of the function) is the evaluation of the if statement about Einstein. Because the if condition is falsy, we do not enter the if statement and nil is returned. Then, in the second puts method call, nil cannot be converted to a String when constructing the String with "+". It would be better to use string interpolation to avoid such an error: "\"#{get_quote('Confucius')}\"". But to fix the real problem, the if statement should be refactored.



# -----------------
# Refactored Code
# -----------------

def get_quote(person)
  if person == 'Yoda'
    'Do. Or do not. There is no try.'
  elsif person == 'Confucius'
    'I hear and I forget. I see and I remember. I do and I understand.'
  elsif person == 'Einstein'
    'Do not worry about your difficulties in Mathematics. I can assure you mine are still greater.'
  end
end

puts 'Confucius says:'
puts '"' + get_quote('Confucius') + '"'

