require 'minitest/autorun'

# ------------
# Boolean Assertions
# ------------

# class PracticeTest < MiniTest::Test
#   def test_odd
#     value = 4
#     assert_equal(true, value.odd?)
#   end
# end


# ------------
# Equality Assertions
# ------------

# class PracticeTest < MiniTest::Test
#   def test_downcase
#     value = 'XYZ123'
#     assert_equal('xyz', value.downcase)
#   end
# end

# ------------
# Nil Assertions
# ------------

# class PracticeTest < MiniTest::Test
#   def test_nil
#     value = 'Sarah'
#     assert_nil(value)
#   end
# end

# ------------
# Empty Object Assertions
# ------------

# class PracticeTest < MiniTest::Test
#   def test_emptiness
#     list = [1,2,3]
#     assert(list.empty?, 'Array is not empty')
#   end
# end

# ------------
# Included Object Assertions
# ------------

# class PracticeTest < MiniTest::Test
#   def test_includes
#     list = ['abc', 123, 'tuv']
#     assert_includes(list, 'xyz')
#   end
# end

# ------------
# Exception Assertions
# ------------

# class Staff
#   def hire
#     puts 'You got the job!'
#     # raise NoExperienceError, 'Employee has no experience.'
#   end
# end

# class NoExperienceError < StandardError; end

# class PracticeTest < MiniTest::Test
#   def test_exceptions
#     employees = Staff.new
#     assert_raises(NoExperienceError) {employees.hire}
#   end
# end

# ------------
# Type Assertions 
# ------------

# class PracticeTest < MiniTest::Test
#   def test_class
#     value = 3
#     assert_instance_of(Numeric, value)
#   end
# end

# ------------
# Kind Assertions
# ------------

# class PracticeTest < MiniTest::Test
#   def test_kind
#     value = Proc.new { |item| true } 
#     assert_kind_of(Numeric, value)
#   end
# end

# ------------
# Same Object Assertions
# ------------

# class ToDo
#   def initialize(item1, item2, item3)
#     @list = [item1, item2, item3]
#   end

#   def process
#     @list.map { |num| num + 1 }
#   end
# end

# class PracticeTest < MiniTest::Test
#   def test_same
#     list = ToDo.new(1, 2, 3)
#     assert_same(list, list.process)
#   end
# end

# ------------
# Refutations
# ------------

class PracticeTest < MiniTest::Test
  def test_refutation
    list = ['abc', 123, 'xyz']
    refute_includes(list, 'xyz')
  end
end



