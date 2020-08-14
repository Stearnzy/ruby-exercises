class Parrot
  attr_reader :name, :sound, :known_words

  def initialize(args)
    @name = args.values[0]
    @sound = "Squawk!"
    @known_words = args.values[1]
  end
end
