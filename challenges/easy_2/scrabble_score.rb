class Scrabble
  POINTS_PER_LETTER = {
    ['A', 'E', 'I', 'O', 'U', 'L', 'N','R', 'S', 'T'] => 1,
    ['D', 'G'] => 2,
    ['B', 'C', 'M', 'P'] => 3,
    ['F', 'H', 'V', 'W', 'Y'] => 4,
    ['K'] => 5,
    ['J', 'X'] => 8,
    ['Q', 'Z'] => 10

  }

  def initialize(word)
    @word = word
  end

  def score
    score = 0
    return score if word.nil?
    chars = word.upcase.chars

    chars.each do |char|
      POINTS_PER_LETTER.each do |letters, points|
        score += points if letters.include?(char)
      end
    end

    score
  end

  def self.score(word)
    self.new(word).score
  end

  private
  attr_reader :word
end
