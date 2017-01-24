require 'minitest/autorun'

# -----------------------------------------------------
# Cash Register and Transaction
# -----------------------------------------------------

# require_relative 'cash_register'
# require_relative 'transaction'

# class CashRegisterTest < MiniTest::Test
#   def test_accept_money
#     registerA = CashRegister.new(100)
#     jeans = Transaction.new(25)
#     jeans.amount_paid = 25

#     assert_equal(125, registerA.accept_money(jeans))
#   end

#   def test_change
#     registerA = CashRegister.new(100)
#     jeans = Transaction.new(25)
#     jeans.amount_paid = 30

#     assert_equal(5, registerA.change(jeans))
#   end

#   def test_give_receipt
#     registerA = CashRegister.new(100)
#     jeans = Transaction.new(25)

#     assert(!registerA.give_receipt(jeans))
#     assert_output("You've paid $25.\n") {registerA.give_receipt(jeans)}
#   end
# end

# class TransactionTest < MiniTest::Test
#   def test_prompt_for_payment
#     jeans = Transaction.new(25)
#     $stdout = StringIO.new('')
#     jeans.prompt_for_payment(input: StringIO.new('30\n'))

#     assert_equal(30, jeans.amount_paid)
#   end
# end

# -----------------------------------------------------
# Swap Letter 
# -----------------------------------------------------

require_relative 'text'

class TextTest < MiniTest::Test
  def setup
    @file = File.open('sample_text2.rb', 'r')
    @new_file = File.open('updated_text2.rb', 'r')
  end

  def test_swap
    lorem = Text.new(@file.read)
    assert_equal(@new_file.read, lorem.swap('a', 'e'))
  end

  def test_word_count
    lorem = Text.new(@file.read)
    assert_equal(72, lorem.word_count)
  end

  def teardown
    @file.close
    @new_file.close
    puts "File has been closed: #{@file.closed?}"
    puts "New file has been closed: #{@new_file.closed?}"
  end
end



