class Narwhal
  attr_reader :name, :weight

  def initialize(args)
    @cute = args.values[0]
    @name = args.values[2]
    @weight = args.values[1]
  end

  def cute?
    @cute
  end
end
