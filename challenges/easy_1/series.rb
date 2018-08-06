class Series
  def initialize(string_of_nums)
    @nums = string_of_nums
  end

  def slices(slice_length)
    raise ArgumentError if slice_length > @nums.size
    all_slices = []
    first = 0 
    loop do 
      last = first + (slice_length - 1)
      break if @nums[last] == nil
      all_slices << @nums[(first..last)].split('').map(&:to_i)
      first += 1
    end
    all_slices
  end
end

