class PerfectNumber
  def self.classify(number)
    if number < 0 
      raise RuntimeError.new()
    elsif sum_of_factors(number) > number
      "abundant"
    elsif sum_of_factors(number) < number
      "deficient"
    else
      "perfect"
    end
  end

  def self.sum_of_factors(number)
    (1...number).reduce(0) do |sum, elem|
      number % elem == 0 ? sum + elem : sum
    end
  end
  
  private_class_method :sum_of_factors
end
