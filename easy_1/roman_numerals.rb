class Fixnum
  NUMERALS_TO_NUMS_CONVERSION = { 
    'I'  => 1, 
    'V' => 5, 
    'X' => 10, 
    'L' => 50,
    'C' => 100, 
    'D' => 500, 
    'M' => 1000 
  }
  NUMS = NUMERALS_TO_NUMS_CONVERSION.values
  MIDPOINTS_NUMS = [3, 8, 30, 75, 300, 775] 

  def to_roman
    number = self
    return NUMERALS_TO_NUMS_CONVERSION.key(number) if NUMS.include?(number)

    #orchestration
    roman_digits = []
    reversed_digits_s = number.to_s.split('').reverse
    reversed_digits_s.each_with_index do |digit_s, index|
      next if digit_s == '0'
      index.times { digit_s += '0' }
      digit = digit_s.to_i
      if NUMS.include?(digit)
        roman_digits << NUMERALS_TO_NUMS_CONVERSION.key(digit)
      elsif add?(digit, index)
        roman_digits << create_numeral_add(digit)
      else
        roman_digits << create_numeral_sub(digit)
      end
    end
    roman_digits.reverse.join
  end 

  def add?(num, index)
    case index
    when 0 
      num <= MIDPOINTS_NUMS[0] || 
      num <= MIDPOINTS_NUMS[1] && num > NUMS[1]
    when 1 
      num <= MIDPOINTS_NUMS[2] && num > NUMS[2] ||
      num <= MIDPOINTS_NUMS[3] && num > NUMS[3]
    when 2
      num <= MIDPOINTS_NUMS[4] && num > NUMS[4] ||
      num <= MIDPOINTS_NUMS[5] && num > NUMS[5]
    else
      num
    end
  end

  def create_numeral_sub(num)
    closest_value = num
    loop do
      closest_value = closest_value.next
      break if NUMS.include?(closest_value)
    end
    difference =  closest_value - num
    numeral = create_numeral_add(difference) + NUMERALS_TO_NUMS_CONVERSION.key(closest_value)
  end

  def create_numeral_add(num)
    numeral = ''
    loop do
      break if num <= 0
      letter = get_letter(num)
      letter_frequency = calculate_repeat_letters(num, letter)
      1.upto(letter_frequency) do  
        numeral += letter
      end
      num = num - (letter_frequency * NUMERALS_TO_NUMS_CONVERSION[letter])
    end
    numeral
  end

  def get_letter(num)
    letter = ''
    NUMS.reverse_each do |value|
      if (num / value).floor > 0
        return letter = NUMERALS_TO_NUMS_CONVERSION.key(value) 
      end
    end
  end

  def calculate_repeat_letters(num, letter)
    (num / NUMERALS_TO_NUMS_CONVERSION[letter]).floor
  end
end