class SumOfMultiples
  def initialize(*given_divisors)
    @divisors = given_divisors.empty? ? [3,5] : given_divisors
  end

  def to(limit)
    multiples = []
    @divisors.each do |divisor|
      (0...limit).each do |test_number|
        multiples << test_number if test_number % divisor == 0
      end
    end
    multiples.uniq.reduce(:+)
  end

  def self.to(limit)
    self.new.to(limit)
  end
end