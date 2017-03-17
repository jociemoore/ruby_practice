class Triangle
  def initialize(depth)
    @depth = depth
    @triangle = []
  end

  def rows
    (1..depth).each_with_index do |current_depth, row_index|
      triangle << get_row(current_depth, row_index)
    end
    triangle
  end

  private

  attr_accessor :depth, :triangle

  def get_row(current_depth, row_index)
    return [1] if row_index == 0
    prev_row = triangle[row_index - 1]
    row = []

    (0..row_index).each do |current_digit_index|
      prev_left = (current_digit_index - 1) < 0 ? 0 : prev_row[current_digit_index - 1]
      prev_right = prev_row[current_digit_index] || 0
      row << prev_left + prev_right
    end
    row
  end
end

