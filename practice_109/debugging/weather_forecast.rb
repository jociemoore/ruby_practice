# -------------
# FIXED CODE
# -------------

def predict_weather
  sunshine = [true, false].sample

  if sunshine
    puts "Today's weather will be sunny!"
  else
    puts "Today's weather will be cloudy!"
  end
end

predict_weather

# -------------
# BUGGY CODE
# -------------

# def predict_weather
#   sunshine = ['true', 'false'].sample

#   if sunshine
#     puts "Today's weather will be sunny!"
#   else
#     puts "Today's weather will be cloudy!"
#   end
# end

# predict_weather

# When the predict_weather method is called, first the sample method is called with no arguments on an array containing two String objects. The sample method randomly chooses an element and assigns it to the sunshine variable. Next, the if statement evaluate the truthiness of the sunshine variable. The output of the predict_weather method is always the same because the sunshine variable, a string, will always evaluate to true and "Today's weather will be sunny!" is always outputted.