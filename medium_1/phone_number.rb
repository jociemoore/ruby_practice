class PhoneNumber
  def initialize(str)
    @formatted_number = str
    @clean_number = remove_non_digits
  end

  def number
    if invalid_number
      '0000000000'
    else
      get_ten_digits
    end
  end

  def area_code
    number.slice(0,3)
  end

  def to_s
    "(#{area_code}) #{number.slice(3,3)}-#{number.slice(6..-1)}"
  end

  private

  attr_reader :formatted_number, :clean_number

  def remove_non_digits
    clean_number = formatted_number.split("").select do |char|
      char.to_i.to_s == char
    end
    clean_number.join("")
  end

  def invalid_number
    clean_number.size < 10 ||
    clean_number.size == 10 && formatted_number =~ /[a-zA-Z]/ ||
    clean_number.size == 11 && clean_number[0] != "1" ||
    clean_number.size > 11
  end

  def get_ten_digits
    if clean_number.size == 11
      clean_number.slice(1..-1)
    else
      clean_number
    end
  end

end