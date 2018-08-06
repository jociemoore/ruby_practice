# NOTES

# Find all primes from 2 up to a #
# Iterate - mark the multiples of each prime, starting at 2
# Create a range (2..given_number)
# Loop - take next unmarked number in the list, mark multiples of that number
# All unmarked numbers are prime 

class Sieve
  def initialize(limit)
    @primes = (2..limit).to_a
  end

  def primes
    factor = 2 

    loop do
      @primes = @primes.select do |num| 
                  (num <= factor) || num % factor != 0
                end
      break if factor == @primes[-1]
      factor = @primes[@primes.index(factor) + 1]
    end

    @primes 
  end
end
