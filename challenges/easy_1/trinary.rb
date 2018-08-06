class Trinary
  def initialize(string)
    @trinary = string
  end

  def to_decimal
    return 0 if @trinary =~ /[^0-2]/
    digits = @trinary.reverse.chars.map(&:to_i)
    sum = 0
    digits.each_with_index do |digit, index|
      value = (3**index) * digit
      sum += value
    end
    sum
  end
end