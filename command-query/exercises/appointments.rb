class Appointments
  def earliest

  end

  def at
    @time.hour
  end

end

class Time
  attr_accessor :year, :month, :day, :hour, :minute

  def initialize(year, month, day, hour, minute)
    @year = year
    @month = month
    @day = day
    @hour = hour
    @minute = minute
  end

end


slots = Appointments.new
t1 = Time.new(2014, 6, 14, 16, 30)
p slots.at
