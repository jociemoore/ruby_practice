class Octal
  def initialize(octal)
    @octal = octal
    @decimal
  end

  def to_decimal
    return self.decimal = 0 if !valid?
    converted = []

    octal.reverse.chars.each_with_index do |digit, index|
      number = digit.to_i
      converted << number * (8 ** index)
    end

    self.decimal = converted.reduce(:+)
  end

  private
  attr_accessor :decimal
  attr_reader :octal

  def valid?
    octal.delete!(octal[0]) if octal[0] == '0'

    octal.to_i.to_s == octal && 
    !octal.include?('8') &&
    !octal.include?('9')
  end
end
