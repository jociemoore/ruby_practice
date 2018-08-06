# ------------
# Description
# ------------

# Word Count will count the number of times a word occurs in a phrase. If the phrase was "olly olly in come free" the output would look like this:
# olly: 2
# in: 1
# come: 1
# free: 1

# NOUNS: word, phrase, number, output
# VERBS: count 

# WORD
# - count
# PHRASE
# NUMBER
# OUTPUT


# ------------
# Dependencies
# ------------
# Word: 
# Phrase: 
# WordCount: Phrase, Word

require 'pry'

class Word
  attr_reader :word, :number

  def initialize(word, count)
    @word = word
    @number = count
  end

  def count
  end
end

class Phrase
  attr_accessor :string, :words

  def initialize
    @string = input_phrase
    @all_words
  end

  def input_phrase
    string = nil
    loop do
      puts 'What is the phrase you want to count?'
      string = gets.chomp
      break if string.size > 0
      puts 'Please enter a phrase.'
    end
    string
  end

  def break_into_words
    @all_words = string.split(' ')
  end

  def compact
    @all_words.uniq
  end

end

class Numbers
  def initialize

  end
end

class CountOutput
  def initialize

  end
end

class WordCount # the same as Output class?
  def initialize
    @phrase
    @words
    @unique_words
  end

  def start
    display_welcome_method
    loop do
      get_phrase
      divide_words
      remove_duplicate_words
      count_each_word
      display_word_count
      break unless count_another?
    end
    display_goodbye_message
  end

  def display_welcome_method
    puts 'Welcome to Word Count!'
  end

  def get_phrase
    @phrase = Phrase.new
  end

  def divide_words
    @words = @phrase.break_into_words
  end

  def remove_duplicate_words
    @unique_words = @phrase.compact
  end

  def count_each_word
    @unique_words.map! do |word|
      count = @words.count(word)
      word = Word.new(word, count)
    end
  end

  def display_word_count
    puts "------------"
    @unique_words.each do |word_object|
      puts "#{word_object.word}: #{word_object.number}"
    end
    puts "------------"
  end

  def count_another?
    answer = nil
    loop do
      puts 'Would you like to count the words in another phrase? (y / n)'
      answer = gets.chomp.downcase
      break if answer == 'y' || answer == 'n'
      puts 'Sorry, that is an invalid response.'
    end
    answer == 'y'
  end

  def display_goodbye_message
    puts "Thank you for using Word Count! Goodbye!"
  end
end

WordCount.new.start

