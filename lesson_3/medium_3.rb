# ----------
# Question 1
# ----------
# Start
  # a_outer = 42
  # b_outer = "forty two"
  # c_outer = [42]
  # d_outer = 42

  # a_outer_id = 85
  # b_outer_id = 70097855156620
  # c_outer_id = 70097855156600
  # d_outer_id = 85

# Predictions...
# Change 1
  # a_outer_inner_id = same as above
  # b_outer_inner_id = same as above
  # c_outer_inner_id = same as above
  # d_outer_inner_id = same as above

# Change 2
  # a_outer = 22
  # b_outer = "thirty three"
  # c_outer = [44]
  # d_outer = 44

# Change 3
  # a_inner = 22
  # b_inner = "thirty three"
  # c_inner = [44]
  # d_inner = 44

# Change 4
  # a_inner_id = different 
  # b_inner_id = different
  # c_inner_id = different
  # d_inner_id = different  

# ----------
# Question 2
# ----------
# I predict the values and object_ids will be the same as the outputs from Question 1 because 1.) the inner variables will similarily not be accessible outside the block, and 2.)going off the problem with Spot's mess_with_demographics method, Ruby passes the object_ids to the parameters, which are acted upon as is within the method.  

# ----------
# Question 3
# ----------
# "My string looks like this now: pumpkins"
# "My array looks like this now: ['pumpkins','rutabaga']"

# The code displays the above outputs because the tricky_method returns the last line of code executed, which in this case, mutates my_array.


# ----------
# Question 4
# ----------
# Based on the explanation of Question 3, the outputs of Question 4 wil be...
# "My string looks like this now: pumpkinsrutabaga"
# "My array looks like this now: ['pumpkins']"

# Ahh, I see now why my prediction in Question #2 was partially wrong.

# ----------
# Question 5
# ----------
# def color_valid(color)
#   color == "blue" || color == "green"
# end
