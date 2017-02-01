# class BeerSong
#   def verse(num)
#     if num == 2 
#       "2 bottles of beer on the wall, 2 bottles of beer.\n" \
#       "Take one down and pass it around, 1 bottle of beer on the wall.\n"
#     elsif num == 1 
#       "1 bottle of beer on the wall, 1 bottle of beer.\n" \
#       "Take it down and pass it around, no more bottles of beer on the wall.\n"
#     elsif num == 0
#       "No more bottles of beer on the wall, no more bottles of beer.\n" \
#       "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
#     else
#       "#{num} bottles of beer on the wall, #{num} bottles of beer.\n" \
#       "Take one down and pass it around, #{num - 1} bottles of beer on the wall.\n"
#     end
#   end

#   def verses(starting, ending)
#     which_verses = (ending..starting).to_a.reverse!
#     which_verses.map! { |num| self.verse(num) }.join("\n")
#   end

#   def lyrics
#     self.verses(99, 0)
#   end
# end


# ----------------------------------
# BONUS
# ----------------------------------

class BeerSong
  def initialize
    @key = [Zero, One, Two] + Array.new([Default] * 97)
  end

  def verse(number)
    key[number].new.verse(number)
  end

  def verses(starting, ending)
    which_verses = (ending..starting).to_a.reverse!
    which_verses.map! { |num| self.verse(num) }.join("\n")
  end

  def lyrics
    self.verses(99, 0)
  end

  private
  attr_reader :key
end

class Default
  def verse(number)
    "#{number} bottles of beer on the wall, #{number} bottles of beer.\n" \
    "Take one down and pass it around, #{number - 1} bottles of beer on the wall.\n"
  end
end

class Two
  def verse(_)
    "2 bottles of beer on the wall, 2 bottles of beer.\n" \
    "Take one down and pass it around, 1 bottle of beer on the wall.\n"
  end
end

class One
  def verse(_)
    "1 bottle of beer on the wall, 1 bottle of beer.\n" \
    "Take it down and pass it around, no more bottles of beer on the wall.\n"
  end
end

class Zero
  def verse(_)
    "No more bottles of beer on the wall, no more bottles of beer.\n" \
    "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
  end
end
