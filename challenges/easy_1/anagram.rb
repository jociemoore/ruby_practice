class Anagram # :nodoc:
  def initialize(string)
    @word = string
  end

  def match(list)
    list.each_with_object([]) do |other_word, anagrams|
      copy = @word.dup.downcase
      next if other_word.downcase == copy || @word.size != other_word.size
      matched_word = compare_each_letter(other_word, copy)
      anagrams << matched_word if matched_word
    end
  end

  private

  def compare_each_letter(other_word, copy)
    other_word.downcase.chars.each_with_index do |letter, index|
      break unless copy.include?(letter)
      return other_word if index == other_word.size - 1
      copy.sub!(letter, '')
    end
  end
end
