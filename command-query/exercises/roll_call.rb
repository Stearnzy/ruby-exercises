class RollCall
  def initialize
    @roll_call = []
  end

  def longest_name
    return nil if @roll_call == []
    return @roll_call.max_by(&:length) if @roll_call != []
  end

  def << (name)
    @roll_call << name
  end
end
