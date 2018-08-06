# NOTE: This was my first challenge. I did not have the format of this type of exercise quite figured out yet, and so the program works, but not with the Test Suite given.

class Word
  attr_reader :text, :number

  def initialize(word, count)
    @text = word
    @number = count
  end
end

class Phrase
  attr_reader :string, :all_words

  def initialize
    @string
    @all_words
    input_phrase
  end

  def input_phrase
    @string = nil
    loop do
      puts 'What is the phrase you want to count?'
      @string = gets.chomp
      break if @string.size > 0
      puts 'Please enter a phrase.'
    end
    @string
  end

  def delete_extra_chars
    @string.delete!('.') if @string.include?('.')
    @string.delete!(',') if @string.include?(',')
    @string.delete!('!') if @string.include?('!')
    @string.delete!('?') if @string.include?('?')
  end

  def break_into_words
    @all_words = @string.split(' ')
  end

  def compact
    @all_words.uniq
  end
end

class WordCount
  attr_reader :phrase

  def initialize
    @phrase
    @all_words
    @unique_words
  end

  def start
    display_welcome_method
    loop do
      get_phrase
      remove_punctuation
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

  def remove_punctuation
    @phrase.delete_extra_chars
  end

  def divide_words
    @all_words = @phrase.break_into_words
  end

  def remove_duplicate_words
    @unique_words = @phrase.compact
  end

  def count_each_word
    @unique_words.map! do |unique_word|
      count = @all_words.count(unique_word)
      unique_word = Word.new(unique_word, count)
    end
  end

  def display_word_count
    puts "------------"
    @unique_words.each do |unique_word|
      puts "#{unique_word.text}: #{unique_word.number}"
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

