class Rabbit

  def initialize(args)
    @name = args.values[0]
    @syllables = args.values[1]
  end

  def name
    if @syllables == 2
      "#{@name} Rabbit"
    elsif @syllables != 2
      @name
    end
  end
end
