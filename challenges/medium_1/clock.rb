
class Clock
  MINUTES_PER_HOUR = 60
  HOURS_PER_DAY = 24
  MINUTES_PER_DAY = MINUTES_PER_HOUR * HOURS_PER_DAY

  def initialize(hour, minutes)
    @total_minutes = ((hour * MINUTES_PER_HOUR) + minutes)
    @hour = hour
    @minutes = minutes
  end

  def self.at(hour, minutes=0)
    self.new(hour, minutes)
  end

  def +(time)
    @total_minutes += time
    @hour = update_time[0]
    @minutes = update_time[1]
    self
  end

  def -(time)
    @total_minutes -= time
    @hour = update_time[0]
    @minutes = update_time[1]
    self
  end

  def ==(other_clock)
    self.total_minutes == other_clock.total_minutes
  end

  def to_s
    return "00:%02d" % minutes if hour >= 24 
    "%02d:%02d" % [hour, minutes]
  end

  protected

  attr_reader :hour, :minutes, :total_minutes

  private

  def update_time
    if total_minutes < 0 
      h = (MINUTES_PER_DAY + total_minutes) / MINUTES_PER_HOUR
      m = (MINUTES_PER_DAY + total_minutes) % MINUTES_PER_HOUR
    else
      h = total_minutes / MINUTES_PER_HOUR
      m = total_minutes % MINUTES_PER_HOUR
    end
    [h, m]
  end

end