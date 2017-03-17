
class Clock
  MINUTES_PER_HOUR = 60
  HOURS_PER_DAY = 24

  def initialize(hour, minutes)
    @total_minutes = ((hour * MINUTES_PER_HOUR) + minutes)
    @hour = hour
    @minutes = minutes
  end

  def self.at(hour, minutes=0)
    self.new(hour, minutes)
  end

  def +(number)
    @total_minutes += number
    @hour = recalculate_clock[0]
    @minutes = recalculate_clock[1]
    self
  end

  def -(number)
    @total_minutes -= number
    @hour = recalculate_clock[0]
    @minutes = recalculate_clock[1]
    self
  end

  def ==(other_clock)
    self.to_s == other_clock.to_s
  end

  def to_s
    if hour < 10 && minutes < 10
      "0#{hour}:0#{minutes}"
    elsif hour < 10 
      "0#{hour}:#{minutes}"
    elsif minutes < 10
      "#{hour}:0#{minutes}"
    elsif hour >= 24
      "00:#{minutes}"
    else
      "#{hour}:#{minutes}"
    end
  end

  private 

  attr_reader :hour, :minutes, :total_minutes

  def recalculate_clock
    total = (HOURS_PER_DAY * MINUTES_PER_HOUR) + total_minutes

    if total_minutes < 0 
      h = total / MINUTES_PER_HOUR
      m = total % MINUTES_PER_HOUR
    else
      h = total_minutes / MINUTES_PER_HOUR
      m = total_minutes % MINUTES_PER_HOUR
    end
    [h, m]
  end

end