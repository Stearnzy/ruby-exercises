class Clock
  attr_reader :time

  def initialize
    @time = 6
  end

  def wait
    @time += 1
    if @time == 13
      @time = 1
    end
  end
end


clock = Clock.new
8.times { clock.wait }
p clock.time
