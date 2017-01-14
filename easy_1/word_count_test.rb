require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!
require_relative 'word_count'

class PhraseTest < Minitest::Test
  def test_delete_extra_chars
    # test phrase: testing. !test, testing?
    puts 'TEST DELETE_EXTRA_CHARS => '
    phrase = Phrase.new
    phrase.delete_extra_chars
    assert_equal('testing test testing', phrase.string)
  end

  def test_break_into_words
    # test phrase: testing test testing
    puts 'TEST BREAK_INTO_WORDS => '
    phrase = Phrase.new
    phrase.break_into_words
    assert_equal(['testing', 'test', 'testing'], phrase.all_words)
  end
end